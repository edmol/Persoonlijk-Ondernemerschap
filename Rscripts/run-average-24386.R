#                     RUN SURVEY 24386 SCRIPT VOOR average processing 
# 
# Require van packages ! Deze moeten vooraf geinstalleerd zijn
#
require(grDevices)
require(googleVis)
require(season)
#
survey <- '24386'
tokentable <- paste('lime_tokens_',survey,sep="")
resulttable <- paste('lime_survey_',survey,sep="")
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
  meangraph <- '/var/www/wp-content/gallery/mean/'
  
} else
{ 
  toetsgrp <- 'toetsen'
  histgrp  <- 'prdhist'
  meangraph <- '/var/www/4u-change.com/web/wp-content/gallery/mean/'
}
# ------------------------------------------------------------------------------------------------
# Opmaken database connectie met survey en historiedatabase
# ------------------------------------------------------------------------------------------------
historiedb=dbConnect(driver, default.file=db_parmfile, group = histgrp)
#
#
###############################################################################################
# Bepaal de gemiddelde communicatie profiel score uit de historie resultdatabase 
###############################################################################################
# stap 1 : Maak de dataset en bepaal het aantal in de dataset
#
meanset <- dbGetQuery(historiedb,statement=paste('select * from ',resulttable,sep=""))
meannum = nrow(meanset)
#
# Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
# stap 2 : Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
gaugelabels <- c('Gemiddelde','Gemiddelde')
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
  for(i in 1 : meannum)i
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
  gemiddelde <- (meantotal/(meannum))
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  # 
  # HTML file nu aanmaken
  #
  #
  # PLOT gauge en maak html file in de juiste gallery
  #
  # Maak dataframe opnieuw ( eigenlijk de laatse 8 karakters van de string afhalen)
  #
  gaugelabels <- c('4U CHANGE','Gemiddelde')
  gaugeneedles <- c(gemiddelde,gemiddelde)
  gaugedata <- data.frame(gaugelabels,gaugeneedles)
  #
  # Maak de plot
  #
    gauge <- gvisGauge(gaugedata,options=list(
    min=0, max=100,
    greenFrom=67, greenTo=100,
    yellowFrom=33,yellowTo=67,
    redFrom=0,redTo=33, width=500, height=500))
 #                      
    print(gauge,'chart',file=paste(meangraph,'gemiddelden-',survey,'.html',sep=""))
}
#
#########################
# Database sluiten      #
#########################
dbDisconnect(historiedb)
dbUnloadDriver(driver)
