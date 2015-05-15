#                     RUN SURVEY 24386 SCRIPT VOOR Toets Kennis Communicatieve Omgangsvormen 
# 
# Require van packages ! Deze moeten vooraf geinstalleerd zijn
#
require(grDevices)
require(googleVis)
require(season)
#
# Database variabelen
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
db_parmfile <- "/var/www/Rscripts/RMySQL.cnf"
#
#
###################################################################################
# ZET PRODUCTIE OF TEST VARIABELE HIER !!!!!!!!!!!!!!!!!!!!!!!!!!
###################################################################################
ontwikkel <- "N" 
#################################################################################
if (ontwikkel == "Y")  {
  toetsgrp <- 'tsttoets'
  histgrp  <- 'tsthist'
  dirgraph <- '/var/www/wp-content/gallery/'
  survey <- '24386'
} else
{ 
  toetsgrp <- 'toetsen'
  histgrp  <- 'prdhist'
  dirgraph <- '/var/www/4u-change.com/web/wp-content/gallery/'
  survey <- '24386'
}
# ------------------------------------------------------------------------------------------------
# Tokentabel is de tabel in limesurvey met de naam lime_tokens_xxxxx en bevat de tokens
# resulttabel is de tabel in limesurvey met de naam lime_survey_xxxxx en bevat de resultaten
# ------------------------------------------------------------------------------------------------
tokentable <- paste('lime_tokens_',survey,sep="")
resulttable <- paste('lime_survey_',survey,sep="")
# ------------------------------------------------------------------------------------------------
# Opmaken database connectie met survey en historiedatabase
# ------------------------------------------------------------------------------------------------
surveydb=dbConnect(driver, default.file = db_parmfile, group = toetsgrp)
historiedb=dbConnect(driver, default.file=db_parmfile, group = histgrp)
# ------------------------------------------------------------------------------------------------
# Algemene functies
# ------------------------------------------------------------------------------------------------
saveg <- function (fn, width = 5, height=5, pointsize = 12)
{
    dev.copy(device=pdf, file=paste(fn,".pdf",sep=""),
             width=width, height=height,pointsize=pointsize)
    dev.off()
    dev.copy(device=postscript, file=paste(fn,".ps",sep=""),
             width=480, height=480, pointsize=pointsize)
    dev.off()
}
rows.in.tokenresults.that.are.not.in.historieresults  <- function(tokenresults,historieresults)
{
  tokenresults.vec <- apply(tokenresults, 1, paste, collapse = "")
  historieresults.vec <- apply(historieresults, 1, paste, collapse = "")
  tokenresults.without.historieresults.rows <- tokenresults[!tokenresults.vec %in% historieresults.vec,]
  return(tokenresults.without.historieresults.rows)
}
#####################################################################################################################
# ------------------------------------------------------------------------------------------------
# Ophalen alle toetsen die gemaakt zijn (uit de tokendatabase) en alle toetsen die al verwerkt zijn (uit historie).
# ------------------------------------------------------------------------------------------------
tokenresults = dbGetQuery(surveydb,statement=paste('select * from ',tokentable,' where completed!="N"',sep=""))
historieresults = dbGetQuery(historiedb,statement=paste('select * from ',tokentable,' where completed!="N"',sep=""))
#
# ------------------------------------------------------------------------------------------------
# Als er geen nieuwe surveyresults zijn die nog niet verwerkt zijn dan kunnen we stoppen 
# ------------------------------------------------------------------------------------------------
#
finalnum <- (nrow(tokenresults)-nrow(historieresults))
if (finalnum < 1) 
{
  dbDisconnect(surveydb)
  dbDisconnect(historiedb)
  dbUnloadDriver(driver)
  stop("geen nieuwe surveys gevonden")
}
# ------------------------------------------------------------------------------------------------
# Nu de records ophalen die nog niet verwerkt zijn.
# ------------------------------------------------------------------------------------------------
tokenset <- rows.in.tokenresults.that.are.not.in.historieresults(tokenresults,historieresults)
finalnum <- nrow(tokenset)
#
# Bepaal de gemiddelde communicatie profiel score uit de historie resultdatabase 
#
# stap 1 : Haal alle data op uit historie en bepaal ook het totaal aantal
#
meanset <- dbGetQuery(historiedb,statement=paste('select * from ',resulttable,sep=""))
meannum = nrow(meanset)
#
# stap 2 : Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
gaugelabels <- c('Jouw Score','Gemiddelde')
gemiddelde <- 50
gaugeneedles <- c(50,50)
gaugedata <- data.frame(gaugelabels,gaugeneedles)
#
# Als deze leeg is dan slaan we de gemiddelde berekening over en gebruiken we 50% als gemiddelde
# voor alle segmenten
#
if(meannum!=0)
{
  meanresultset <- 50
  meanstart <- 0
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:89])
    meantotal <- meanstart + 
                     c(length(grep("W",answer[c(12,13,1,15,17,20,21,22,
                                                24,27,5,6,7,10,28,31,
                                                32,33,36,38,41,42,43,46,
                                                48,51,52,53,56,58,61,62,
                                                63,66,68,71,72,73,76,78)]))+
                      length(grep("N",answer[c(2,14,16,18,19,23,25,26,
                                               3,4,8,9,11,29,30,34,
                                               35,37,39,40,44,45,47,49,
                                               50,54,55,57,59,60,64,65,
                                               67,69,70,74,75,77,79,80)])))
    meanstart <- meantotal 
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  #
  gemiddelde <- meantotal/meannum
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
}
# ------------------------------------------------------------------------------------------------
# finalresults bevat het dataframe met finalnum aantal records om nu te gaan verwerken
# ------------------------------------------------------------------------------------------------
#
#-------------------------------------now proces all new surveys !!-------------------------------------------------------------
#
for(i in 1 : finalnum) 
{
  #  
  # Results ophalen uit de resulttabel op basis van 
  # tid ( tokenid in de tokentable) en id ( id in resultstable), het eerste antwoord start op positie 6
  #                                   
  resultrecord <- dbGetQuery(surveydb,statement=paste('select * from ',resulttable,' where token=',"'",tokenset[i,7],"'",sep=""))
#
#   !!!!! Eerste keer met overwrite = true en append = FALSE !!!!!!!!!! 
#
  dbWriteTable(historiedb,resulttable,resultrecord,row.names=FALSE,append=TRUE)
  #
  # filename = voornaamachternaam_sid_token_## waarbij ## het nummer is als er meerdere files aangemaakt
  #            gaan worden.
  #
  gebruiker <- substr(as.character(tokenset[i,7]),1,nchar(as.character(tokenset[i,7]))-14)
  prefix <- paste(dirgraph,tokenset[i,3],'/',gebruiker,'-',survey,sep="")
  #
  #-------------------------------------processing 01-------------------------------------------------------------
  answer <- as.vector(resultrecord[i,10:89])
  #
  #
  usertotal <- c(length(grep("W",answer[c(12,13,1,15,17,20,21,22,
                               24,27,5,6,7,10,28,31,
                               32,33,36,38,41,42,43,46,
                               48,51,52,53,56,58,61,62,
                               63,66,68,71,72,73,76,78)]))+
                length(grep("N",answer[c(2,14,16,18,19,23,25,26,
                                        3,4,8,9,11,29,30,34,
                                        35,37,39,40,44,45,47,49,
                                        50,54,55,57,59,60,64,65,
                                        67,69,70,74,75,77,79,80)]))) 
  score <- usertotal
  #
  # PLOT gauge en maak html file in de juiste gallery
  #
  # Maak dataframe opnieuw ( eigenlijk de laatse 8 karakters van de string afhalen)
  #
  gaugelabels <- c(gebruiker,'Gemiddelde')
  gaugeneedles <- c(score,gemiddelde)
  gaugedata <- data.frame(gaugelabels,gaugeneedles)
  #
  # Maak de plot
  #
  gauge <- gvisGauge(gaugedata,options=list(
                                      min=0, max=100,
                                      greenFrom=67, greenTo=100,
                                      yellowFrom=33,yellowTo=67,
                                      redFrom=0,redTo=33, width=400, height=400))
  print(gauge,'chart',file=paste(prefix,'.html',sep=""))
  #-------------------------------------next in results -------------------------------------------------------------
}
#
# bijwerken historie database
#
dbWriteTable(historiedb,tokentable,tokenset,row.names=FALSE,append=TRUE)
#########################
# Database sluiten      #
#########################
dbDisconnect(surveydb)
dbDisconnect(historiedb)
dbUnloadDriver(driver)
