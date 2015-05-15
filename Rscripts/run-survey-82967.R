#                     RUN SURVEY 82967 R SCRIPT VOOR TOETS Test je Communicatieprofiel 
# 
# Require van packages ! Deze moeten vooraf geinstalleerd zijn
#
require(grDevices)
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
  dirgraph <- '/var/www/wp/wp-content/gallery/'
  survey <- '82967'
} else
{ 
  toetsgrp <- 'toetsen'
  histgrp  <- 'prdhist'
  dirgraph <- '/var/www/4u-change.com/web/wp-content/gallery/'
  survey <- '82967'
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
#
# Einde functies
#
# ------------------------------------------------------------------------------------------------
# aanmaken resultsets a) completed surveyresults b) already processed historie
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
# Nu de te verwerken resultset maken door de twee sets te vergelijken 
# ------------------------------------------------------------------------------------------------
tokenset <- rows.in.tokenresults.that.are.not.in.historieresults(tokenresults,historieresults)
finalnum <- nrow(tokenset)
#
#### september versie - Gemiddelde bepalen en de set resultaten ophalen
#
###############################################################################################
# Bepaal de gemiddelde communicatie profiel score uit de historie resultdatabase 
###############################################################################################
# stap 1 : Maak de dataset en bepaal het aantal in de dataset
#
meanset <- dbGetQuery(historiedb,statement=paste('select * from ',resulttable,sep=""))
meannum = nrow(meanset)
#
# stap 2 : Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
finalset <- matrix(6,1,6)
finalset[1,] <- c(5,5,5,5,5,5)
#
# Als deze leeg is dan slaan we de gemiddelde berekening over en gebruiken we 5 als gemiddelde
# voor alle segmenten
#
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*6,nrow=meannum,ncol=6)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:39])
    meanresultset[i,] <- c(length(grep("B",answer[c(11,7,4,2,1)]))+length(grep("A",answer[c(16,21,25,28,30)])),
                           length(grep("B",answer[c(16,12,8,5,3)]))+length(grep("A",answer[c(11,17,22,26,29)])),
                           length(grep("B",answer[c(21,17,13,9,6)]))+length(grep("A",answer[c(7,12,18,23,27)])),
                           length(grep("B",answer[c(25,22,18,14,10)]))+length(grep("A",answer[c(4,8,13,19,24)])),
                           length(grep("B",answer[c(28,26,23,19,15)]))+length(grep("A",answer[c(2,5,9,14,20)])),
                           length(grep("B",answer[c(30,29,27,24,20)]))+length(grep("A",answer[c(1,3,6,10,15)])))
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  #
  
  finalset[1,] <- c(mean(meanresultset[,1]),
                    mean(meanresultset[,2]),
                    mean(meanresultset[,3]),
                    mean(meanresultset[,4]),
                    mean(meanresultset[,5]),
                    mean(meanresultset[,6]))
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
  dbWriteTable(historiedb,resulttable,resultrecord,row.names=FALSE,append=TRUE)
  #
  # filename = voornaamachternaam_sid_token_## waarbij ## het nummer is als er meerdere files aangemaakt
  #            gaan worden.
  #
  gebruiker <- substr(as.character(tokenset[i,7]),1,nchar(as.character(tokenset[i,7]))-14)
  prefix <- paste(dirgraph,tokenset[i,3],'/',gebruiker,'-',survey,sep="")
  #
  #-------------------------------------processing 01-------------------------------------------------------------
  answer <- as.vector(resultrecord[i,10:39])
  #
  #
  x <- c(1,2,3,4,5,6)
  border <- c(1,1,1,1,1,1)
  x.names <- c('Geven','Ontvangen','Ondergaan','Verdedigen','Aanvallen','Vasthouden')
  y <- c(length(grep("B",answer[c(11,7,4,2,1)]))+length(grep("A",answer[c(16,21,25,28,30)])),
         length(grep("B",answer[c(16,12,8,5,3)]))+length(grep("A",answer[c(11,17,22,26,29)])),
         length(grep("B",answer[c(21,17,13,9,6)]))+length(grep("A",answer[c(7,12,18,23,27)])),
         length(grep("B",answer[c(25,22,18,14,10)]))+length(grep("A",answer[c(4,8,13,19,24)])),
         length(grep("B",answer[c(28,26,23,19,15)]))+length(grep("A",answer[c(2,5,9,14,20)])),
         length(grep("B",answer[c(30,29,27,24,20)]))+length(grep("A",answer[c(1,3,6,10,15)])))
  #
  # PLOT VARIABELEN
  #
  main_titel <- "Communicatie Profiel - T'ai-tji Model"
  sub_titel  <-  paste(tokenset[i,7],'- 4U CHANGE Persoonlijk Ondernemerschap',sep="")
  yas_titel  <- "Jouw score"
  #
  legend_titel <- "Segmenten"
  kleur_legend_titel <- "blue"
  kleur_legend_box <- "red"
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    y,main = main_titel, sub = sub_titel, xlab="",
    width = c(30,30,30,30,30,30),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,10), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple","grey"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    y,main = main_titel, sub = sub_titel, xlab="",
    width = c(30,30,30,30,30,30),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,10), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple","grey"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  dev.off()
#
##### september release - extra grafieken bijplaatsen met de gemiddelden erbij
#
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Groen is Jouw Score ten opzichte \nvan het huidig 4U CHANGE gemiddelde - (blauw) "
  plotCircular(area1=y,
               area2=finalset,
               labels=x.names,dp=0,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("green","blue"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-02.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  plotCircular(area1=y,
               area2=finalset,
               labels=x.names,dp=0,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("green","blue"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
  dev.off()  
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
