#                     RUN SURVEY 29985 R SCRIPT VOOR TOETS Geloogwaardigheid 
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
survey <- '29985'
#
# Factoren in procenten vertrouwen creeeren en doelsen realiseren zijn competentie en 3 en 4 in prio
# Factoren in procenten eerlijkheid en intentie (motieven) zijnkarakter eigenschappen en 1 en 2 in prio
#
fweerl <- 34
fwopre <- 25
#
fwvert <- 23
fwreal <- 18
#
gaugelabels <- c('Gemiddelde','Gemiddelde')
gemiddelde <- 50
gaugeneedles <- c(50,50)
gaugedata <- data.frame(gaugelabels,gaugeneedles)
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
meany <- c(fweerl,fwopre,fwvert,fwreal)
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*4,nrow=meannum,ncol=4)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:49])
    #
    gweerl <-sum(as.numeric(answer[c(7,5,17,18,6,21,20,22,23,19)]))/0.5*fweerl/100
    gwopre <-sum(as.numeric(answer[c(16,3,26,15,2,27,24,28,29,4)]))/0.5*fwopre/100
    gwvert <-sum(as.numeric(answer[c(32,31,14,33,1,36,25,38,40,30)]))/0.5*fwvert/100
    gwreal <-sum(as.numeric(answer[c(12,11,39,10,37,34,9,35,13,8)]))/0.5*fwreal/100
    #
    #
    #    
    meanresultset[i,] <- c(gweerl,gwopre,gwvert,gwreal)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  # 
  gweerl <- mean(meanresultset[,1])
  gwopre <- mean(meanresultset[,2])
  gwvert <- mean(meanresultset[,3])
  gwreal <- mean(meanresultset[,4])
  #
  meansum <- sum(gweerl,gwopre,gwvert,gwreal)
  meany <- c(gweerl,gwopre,gwvert,gwreal)
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
  gaugeneedles <- c(meansum,meansum)
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
  print(gauge,'chart',file=paste(meangraph,'gemiddelden01-',survey,'.html',sep=""))
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Eerlijkheid','Oprecht begaan','Creeer Vertrouwen','Realiseren')
  main_titel <- "Vertrouwen - Uw geloofwaardigheid"
  sub_titel  <- "4U CHANGE Persoonlijk Ondernemerschap"
  yas_titel  <- "Gemiddelden"
  #
  legend_titel <- "Segmenten"
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
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,50), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,c(fweerl,fwopre,fwvert,fwreal),col='green',lwd=2)
  points(x=bp,y=c(fweerl,fwopre,fwvert,fwreal),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    meany,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,50), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,c(fweerl,fwopre,fwvert,fwreal),col='green',lwd=2)
  points(x=bp,y=c(fweerl,fwopre,fwvert,fwreal),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Groen de gemiddelde Score van alle \nrespondenten tot nu toe."
  plotCircular(area1=meany,
               area2=c(0,0,0,0),
               labels=x.names,dp=1,
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
  plotCircular(area1=meany,
               area2=c(0,0,0,0),
               labels=x.names,dp=1,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("green","blue"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
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
  answer <- as.vector(resultrecord[i,10:49])
  #
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Eerlijkheid','Oprecht begaan','Creeer Vertrouwen','Realiseren')
  # 
  gweerl <-sum(as.numeric(answer[c(7,5,17,18,6,21,20,22,23,19)]))/0.5*fweerl/100
  gwopre <-sum(as.numeric(answer[c(16,3,26,15,2,27,24,28,29,4)]))/0.5*fwopre/100
  gwvert <-sum(as.numeric(answer[c(32,31,14,33,1,36,25,38,40,30)]))/0.5*fwvert/100
  gwreal <-sum(as.numeric(answer[c(12,11,39,10,37,34,9,35,13,8)]))/0.5*fwreal/100
  #
  # Bepaal wedijveren score
  # 
  jouwsum <- sum(gweerl,gwopre,gwvert,gwreal)
  y <- c(gweerl,gwopre,gwvert,gwreal)
  # PLOT VARIABELEN
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  # 
  main_titel <- "Vertrouwen - Uw geloofwaardigheid"
  sub_titel  <-  paste(gebruiker,'- 4U CHANGE Persoonlijk Ondernemerschap',sep="")
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
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,50), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,c(fweerl,fwopre,fwvert,fwreal),col='green',lwd=2)
  points(x=bp,y=c(fweerl,fwopre,fwvert,fwreal),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    y,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,50), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,c(fweerl,fwopre,fwvert,fwreal),col='green',lwd=2)
  points(x=bp,y=c(fweerl,fwopre,fwvert,fwreal),pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Groen is Jouw Score ten opzichte \nvan het huidig 4U CHANGE gemiddelde - (blauw) "
  plotCircular(area1=y,
               area2=meany,
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
               area2=meany,
               labels=x.names,dp=0,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("green","blue"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
  dev.off()
  #
  # PLOT gauge en maak html file in de juiste gallery
  #
  # Maak dataframe opnieuw ( eigenlijk de laatse 8 karakters van de string afhalen)
  #
  gaugelabels <- c(gebruiker,'Gemiddelde')
  gaugeneedles <- c(jouwsum,meansum)
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
