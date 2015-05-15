#                     RUN SURVEY 28553 R SCRIPT VOOR TOETS Efficient gebruik maken van beschikbare tijd als verkoper
# 
# Require van packages ! Deze moeten vooraf geinstalleerd zijn
#
require(grDevices)
#
# Database variabelen
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
#
survey <- '28553'
#
# Factoren die de tijdsbesteding beinvloeden zijn 
# 1. Besluitvorming
# 2. Organisatie
# 3. Dagelijks werk
# 4. Plannen van de dag
# 5. Informatie
# 6. Communicatie
# 7. Stellen van doelen
# 8. Planning
# 
#
gbesl <- 50
gorga <- 50
gwerk <- 50
gdagp <- 50
ginfo <- 50
gcomm <- 50
gdoel <- 50
gplan <- 50
#
###################################################################################
# ZET PRODUCTIE OF TEST VARIABELE HIER !!!!!!!!!!!!!!!!!!!!!!!!!!
###################################################################################
ontwikkel <- "N" 
#################################################################################
if (ontwikkel == "Y")  {
  db_parmfile <- "/Library/Webserver/Documents/Rscripts/RMySQL.cnf"
  toetsgrp <- 'prdtoets'
  histgrp  <- 'prdhist'
  dirgraph <- '/Library/Webserver/Documents/wp-content/gallery/'
  meangraph <- '/Library/Webserver/Documents/wp-content/gallery/mean/'
} else
{ 
  db_parmfile <- "/var/www/Rscripts/RMySQL.cnf"
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
####  Gemiddelde bepalen en de set resultaten ophalen
#
###############################################################################################
# Bepaal de gemiddelde score uit de historie resultdatabase 
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
meany <- c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan)

if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*8,nrow=meannum,ncol=8)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:59])
    gbesl <- sum(as.numeric(answer[c(1,14,29,30,45,46,49,50)]))/8
    gorga <- sum(as.numeric(answer[c(9,18,19,21,36,37,40)]))/7
    gwerk <- sum(as.numeric(answer[c(3,12,15,25,26,31,32,33,43,47)]))/10
    gdagp <- sum(as.numeric(answer[c(4,11,16,24,34)]))/5
    ginfo <- sum(as.numeric(answer[c(6,22,41)]))/3
    gcomm <- sum(as.numeric(answer[c(2,13,27,28,44)]))/5
    gdoel <- sum(as.numeric(answer[c(5,10,17,23,35,42)]))/6
    gplan <- sum(as.numeric(answer[c(7,8,20,38,39,48)]))/6 
    #   
    meanresultset[i,] <- c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  # 
  gbesl <- round(mean(meanresultset[,1]),1)
  gorga <- round(mean(meanresultset[,2]),1)
  gwerk <- round(mean(meanresultset[,3]),1)
  gdagp <- round(mean(meanresultset[,4]),1)
  ginfo <- round(mean(meanresultset[,5]),1)
  gcomm <- round(mean(meanresultset[,6]),1)
  gdoel <- round(mean(meanresultset[,7]),1)
  gplan <- round(mean(meanresultset[,8]),1)
  #
  meansum <- sum(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan)
  meany <- c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan)
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4,5,6,7,8)
  border <- c(1,1,1,1,1,1,1,1)
  x.names <- c('Besluitvorming','Organisatie','Opstarten','Dagplanning','Informatie','Communicatie','Doelen','Tijdsplanning')
  main_titel <- "Tijdsbesteding in het verkoopproces"
  sub_titel  <- "Mogelijkheden tot verbetering"
  yas_titel  <- "Gemiddelden"
  #
  legend_titel <- "Factoren"
  kleur_legend_titel <- "blue"
  kleur_legend_box <- "red"
  prefix <- paste(meangraph,'gemiddelden02-',survey,sep="")
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    meany,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple","grey","yellow","brown","black"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),col='green',lwd=2)
  points(x=bp,y=c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
  bp <-  barplot(
    meany,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple","grey","yellow","brown","black"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),col='green',lwd=2)
  points(x=bp,y=c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),pch=24)
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
  answer <- as.vector(resultrecord[1,10:59])
  #
  #
  x <- c(1,2,3,4,5,6,7,8)
  border <- c(1,1,1,1,1,1,1,1)
  x.names <- c('Besluitvorming','Organisatie','Opstarten','Dagplanning','Informatie','Communicatie','Doelen','Tijdsplanning')
  # 
  besl <- round(sum(as.numeric(answer[c(1,14,29,30,45,46,49,50)]))/8,1)
  orga <- round(sum(as.numeric(answer[c(9,18,19,21,36,37,40)]))/7,1)
  werk <- round(sum(as.numeric(answer[c(3,12,15,25,26,31,32,33,43,47)]))/10,1)
  dagp <- round(sum(as.numeric(answer[c(4,11,16,24,34)]))/5,1)
  info <- round(sum(as.numeric(answer[c(6,22,41)]))/3,1)
  comm <- round(sum(as.numeric(answer[c(2,13,27,28,44)]))/5,1)
  doel <- round(sum(as.numeric(answer[c(5,10,17,23,35,42)]))/6,1)
  plan <- round(sum(as.numeric(answer[c(7,8,20,38,39,48)]))/6,1)
  #
  # Bepaal score
  # 
  jouwsum <- sum(besl,orga,werk,dagp,info,comm,doel,plan)
  y <- c(besl,orga,werk,dagp,info,comm,doel,plan)
  # PLOT VARIABELEN
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  #
  main_titel <- "Tijdsbesteding in het verkoopproces"
  sub_titel  <-  paste(gebruiker,' Verbeterindicatie tijdsbesteding verkoopactiviteiten',sep="")
  yas_titel  <- "Jouw efficiëncy (%) t.o.v. gemiddelde (rode lijn)"
  #
  legend_titel <- "Factoren"
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
    width = c(20,20,20,20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple","grey","yellow","brown","black"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),col='red',lwd=2)
  points(x=bp,y=c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
  bp <-  barplot(
    y,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple","grey","yellow","brown","black"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),col='black',lwd=2)
  points(x=bp,y=c(gbesl,gorga,gwerk,gdagp,ginfo,gcomm,gdoel,gplan),pch=24)
  dev.off()
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
