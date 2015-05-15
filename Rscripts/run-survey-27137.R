#                     RUN SURVEY 27137 R SCRIPT VOOR TOETS je invloed op onderling vertrouwen
# 
# Require van packages ! Deze moeten vooraf geinstalleerd zijn
#
#
require(graphics)
# Database variabelen
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
db_parmfile <- "/var/www/Rscripts/RMySQL.cnf"
#
survey <- '27137'
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
  meangraph <- '/var/www/wp-content/gallery/mean/'
} else
{ 
  toetsgrp <- 'toetsen'
  histgrp  <- 'prdhist'
  dirgraph <- '/var/www/4u-change.com/web/wp-content/gallery/'
  meangraph <- '/var/www/4u-change.com/web/wp-content/gallery/mean/'
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
#########################################################################################################
# Einde functies
#########################################################################################################
#
# X-labels en dimensies voor de lijngrafieken
#
xlabs <- c('1-Rechtdoor zee',
           '2-Respect tonen',
           '3-Transparatie creeren',
           '4-Fouten rechtzetten',
           '5-Loyaliteit tonen',
           '6-Resultaten boeken',
           '7-Jezelf verbeteren',
           '8-De realiteit onder ogen zien',
           '9-Duidelijk over verwachtingen',
           '10-Verantwoording afleggen',
           '11-Eerst luisteren',
           '12-Toezeggingen nakomen',
           '13-Vertrouwen uitdragen')
meany <- c(100,100,100,100,100,100,100,100,100,100,100,100,100)
y <- c(0,0,0,0,0,0,0,0,0,0,0,0,0)
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
####  Gemiddelde bepalen en de set resultaten ophalen
#
###############################################################################################
# Bepaal de gemiddelde geloofwaardigheids score uit de historie resultdatabase 
###############################################################################################
# stap 1 : Maak de dataset en bepaal het aantal in de dataset
#
meanset <- dbGetQuery(historiedb,statement=paste('select * from ',resulttable,sep=""))
meannum = nrow(meanset)
#
# stap 2 : Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
# Als deze leeg is dan slaan we de gemiddelde berekening over en gebruiken we 5 als gemiddelde
# voor alle segmenten
#
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*13,nrow=meannum,ncol=13)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:51])
    #
    v01 <-sum(as.numeric(answer[c(1,17,16)]))/3
    v02 <-sum(as.numeric(answer[c(33,15,32,42)]))/4
    v03 <-sum(as.numeric(answer[c(2,14,18,31)]))/4
    v04 <-sum(as.numeric(answer[c(34,13,19,30)]))/4
    v05<-sum(as.numeric(answer[c(3,35,20)]))/3
    v06<-sum(as.numeric(answer[c(12,29,21)]))/3
    v07<-sum(as.numeric(answer[c(36,4,37)]))/3
    v08<-sum(as.numeric(answer[c(41,11,22,28)]))/4
    v09<-sum(as.numeric(answer[c(5,38,10,27)]))/4
    v10<-sum(as.numeric(answer[c(39,6,23,9)]))/4
    v11<-sum(as.numeric(answer[c(26,40)]))/2
    v12<-sum(as.numeric(answer[c(24,7)]))/2
    v13<-sum(as.numeric(answer[c(25,8)]))/2
    #
    #
    #    
    meanresultset[i,] <- c(v01,v02,v03,v04,v05,v06,v07,v08,v09,v10,v11,v12,v13)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  # 
  gv01 <- mean(meanresultset[,1])
  gv02 <- mean(meanresultset[,2])
  gv03 <- mean(meanresultset[,3])
  gv04 <- mean(meanresultset[,4])
  gv05 <- mean(meanresultset[,5])
  gv06 <- mean(meanresultset[,6])
  gv07 <- mean(meanresultset[,7])
  gv08 <- mean(meanresultset[,8])
  gv09 <- mean(meanresultset[,9])
  gv10 <- mean(meanresultset[,10])
  gv11 <- mean(meanresultset[,11])
  gv12 <- mean(meanresultset[,12])
  gv13 <- mean(meanresultset[,13])
  #
  meany <- c(gv01,gv02,gv03,gv04,gv05,gv06,gv07,gv08,gv09,gv10,gv11,gv12,gv13)
  #
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  prefix <- paste(meangraph,'gemiddelden02-',survey,sep="")
  g_range <- range(0,meany)
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
  x <- c(1:13)
  g_range <- range(0,y,meany)
  plot(x,meany,type="o",col="green",ylim=g_range,ann=FALSE)
  axis(1, at=1:13)
  axis(2, at=10*0:g_range[2])
  text(x,meany,round(meany,2),cex=0.7)
  title(main="Gemiddelde score : Invloed op onderlinge relaties",col.main="blue",font.main=4)
  title(xlab="Gedrag/Competentie factoren die het vertrouwen beinvloeden.",col.lab="black")
  title(ylab="percentage score ( max=100% )",col.lab="black")
  legend(10,30, xlabs, cex=0.8)
  box()
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
  x <- c(1:13)
  g_range <- range(0,y,meany)
  plot(x,meany,type="o",col="green",ann=FALSE)
  axis(1, at=1:13)
  axis(2, at=10*0:g_range[2])
  text(x,meany,round(meany,2),cex=0.7)
  title(main="Gemiddelde score : Invloed op onderlinge relaties",col.main="blue",font.main=4)
  title(xlab="Gedrag/Competentie factoren die het vertrouwen beinvloeden.",col.lab="black")
  title(ylab="percentage score ( max=100% )",col.lab="black")
  legend(10,30, xlabs, cex=0.8)
  box()
  dev.off()
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
  # Check eerst of DB table leeg is ja / nee
  #
  if ( meannum == 0) {
    dbWriteTable(historiedb,resulttable,resultrecord,row.names=FALSE,append=FALSE,overwrite=TRUE)
  } else {
  dbWriteTable(historiedb,resulttable,resultrecord,row.names=FALSE,append=TRUE)
  }
  #
  # filename = voornaamachternaam_sid_token_## waarbij ## het nummer is als er meerdere files aangemaakt
  #            gaan worden.
  #
  gebruiker <- substr(as.character(tokenset[i,7]),1,nchar(as.character(tokenset[i,7]))-14)
  prefix <- paste(dirgraph,tokenset[i,3],'/',gebruiker,'-',survey,sep="")
  #
  #-------------------------------------processing 01-------------------------------------------------------------
  answer <- as.vector(resultrecord[1,10:51])
  #
  #
  v01 <-sum(as.numeric(answer[c(1,17,16)]))/3
  v02 <-sum(as.numeric(answer[c(33,15,32,42)]))/4
  v03 <-sum(as.numeric(answer[c(2,14,18,31)]))/4
  v04 <-sum(as.numeric(answer[c(34,13,19,30)]))/4
  v05<-sum(as.numeric(answer[c(3,35,20)]))/3
  v06<-sum(as.numeric(answer[c(12,29,21)]))/3
  v07<-sum(as.numeric(answer[c(36,4,37)]))/3
  v08<-sum(as.numeric(answer[c(41,11,22,28)]))/4
  v09<-sum(as.numeric(answer[c(5,38,10,27)]))/4
  v10<-sum(as.numeric(answer[c(39,6,23,9)]))/4
  v11<-sum(as.numeric(answer[c(26,40)]))/2
  v12<-sum(as.numeric(answer[c(24,7)]))/2
  v13<-sum(as.numeric(answer[c(25,8)]))/2
  # 
  #
  #
  y <- c(v01,v02,v03,v04,v05,v06,v07,v08,v09,v10,v11,v12,v13)
  # PLOT VARIABELEN
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  # 
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
  x <- c(1:13)
  g_range <- range(0,y,meany)
  plot(x,y,type="o",col="green",ylim=g_range,ann=FALSE)
  axis(1, at=1:13)
  axis(2, at=10*0:g_range[2])
  text(x, y, round(y,2), cex=0.7)
  lines(x,meany, type="o",pch=22,lty=2,col="red")
  text(x, meany, round(meany, 2), cex=0.7)
  title(main="Jouw score : Invloed op onderlinge relaties(groen)",col.main="black",font.main=4,sub="t.o.v. Gemiddelde score (rood)")
  title(xlab="Gedrag/Competentie factoren die het vertrouwen beinvloeden.(groen)",col.lab="black")
  title(ylab="percentage score ( max=100% )",col.lab="black")
  legend(10,30, xlabs, cex=0.8)
  box()
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
  x <- c(1:13)
  plot(x,y,type="o",col="green",ann=FALSE)
  axis(1, at=1:13)
  axis(2, at=10*0:g_range[2])
  text(x, y, round(y, 2), cex=0.7)
  lines(x,meany, type="o",pch=22,lty=2,col="red")
  text(x, meany, round(meany, 2), cex=0.7)
  title(main="Jouw score : Invloed op onderlinge relaties",col.main="black",font.main=4,sub="t.o.v. Gemiddelde score (rood)")
  title(xlab="Gedrag/Competentie factoren die het vertrouwen beinvloeden.(groen)",col.lab="black")
  title(ylab="percentage score ( max=100% )",col.lab="black")
  legend(10,30, xlabs, cex=0.8)
  box()
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
