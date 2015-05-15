#                     RUN SURVEY 89391 R SCRIPT VOOR TOETS Taak- en Relatiegerichtheid
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
#
survey <- '89391'
#
# Factoren in procenten vertrouwen creeeren en doelsen realiseren zijn competentie en 3 en 4 in prio
# Factoren in procenten eerlijkheid en intentie (motieven) zijnkarakter eigenschappen en 1 en 2 in prio
#
gseparatie  <- 25
gintegratie <- 25
grelatie    <- 25
gdedicatie  <- 25
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
meany <- c(gseparatie,gintegratie,grelatie,gdedicatie)
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*4,nrow=meannum,ncol=4)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:101])
    gseparatie   <-sum(as.numeric(answer[c(1,7,12,13,18,23,28,29,34,39,44,45,52,55,58,61,66,72,75,80,83,87,92)]))/2.3
    gintegratie <- sum(as.numeric(answer[c(3,6,11,16,17,22,27,32,33,38,43,48,49,56,59,64,67,70,73,77,84,85,89)]))/2.3
    grelatie     <-sum(as.numeric(answer[c(2,8,9,14,19,24,25,30,35,40,41,46,51,54,57,62,65,71,76,79,82,88,91)]))/2.3
    gdedicatie   <-sum(as.numeric(answer[c(4,5,10,15,20,21,26,31,36,37,42,47,50,53,60,63,68,69,74,78,81,86,90)]))/2.3   
    #   
    meanresultset[i,] <- c(gseparatie,gintegratie,grelatie,gdedicatie)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  # 
  gseparatie  <- round(mean(meanresultset[,1]),2)
  gintegratie <- round(mean(meanresultset[,2]),2)
  grelatie    <- round(mean(meanresultset[,3]),2)
  gdedicatie  <- round(mean(meanresultset[,4]),2)
  #
  meansum <- sum(gseparatie,gintegratie,grelatie,gdedicatie)
  meany <- c(gseparatie,gintegratie,grelatie,gdedicatie)
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Separatie','Integratie','Relatie','Dedicatie')
  main_titel <- "Relatie- en Taakgerichtheid voor leidinggevenden"
  sub_titel  <- "4U CHANGE Bewust Bekwaam Samenwerken"
  yas_titel  <- "Gemiddelden"
  #
  legend_titel <- "Basisstijlen"
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
  lines(x=bp,c(gseparatie,gintegratie,grelatie,gdedicatie),col='green',lwd=2)
  points(x=bp,y=c(gseparatie,gintegratie,grelatie,gdedicatie),pch=24)
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
  lines(x=bp,c(gseparatie,gintegratie,grelatie,gdedicatie),col='green',lwd=2)
  points(x=bp,y=c(gseparatie,gintegratie,grelatie,gdedicatie),pch=24)
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
  answer <- as.vector(resultrecord[1,10:101])
  #
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Separatie','Integratie','Relatie','Dedicatie')
  # 
  jseparatie   <-round(sum(as.numeric(answer[c(1,7,12,13,18,23,28,29,34,39,44,45,52,55,58,61,66,72,75,80,83,87,92)]))/2.3,2)
  jintegratie <- round(sum(as.numeric(answer[c(3,6,11,16,17,22,27,32,33,38,43,48,49,56,59,64,67,70,73,77,84,85,89)]))/2.3,2)
  jrelatie     <-round(sum(as.numeric(answer[c(2,8,9,14,19,24,25,30,35,40,41,46,51,54,57,62,65,71,76,79,82,88,91)]))/2.3,2)
  jdedicatie   <-round(sum(as.numeric(answer[c(4,5,10,15,20,21,26,31,36,37,42,47,50,53,60,63,68,69,74,78,81,86,90)]))/2.3,2)
  #
  # Bepaal wedijveren score
  # 
  jouwsum <- sum(jseparatie,jintegratie,jrelatie,jdedicatie)
  y <- c(jseparatie,jintegratie,jrelatie,jdedicatie)
  # PLOT VARIABELEN
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  # 
  main_titel <- "Stijl : Relatie- en Taakgerichtheid voor leidinggevenden"
  sub_titel  <-  paste(gebruiker,'- 4U CHANGE - Bewust Bekwaam Samenwerken',sep="")
  yas_titel  <- "Jouw stijl (bars) t.o.v. gemiddelde (lijn)"
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
    ylim = c(0,100), ylab = yas_titel,
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
  lines(x=bp,c(gseparatie,gintegratie,grelatie,gdedicatie),col='black',lwd=2)
  points(x=bp,y=c(gseparatie,gintegratie,grelatie,gdedicatie),pch=24)
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
    ylim = c(0,100), ylab = yas_titel,
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
  lines(x=bp,c(gseparatie,gintegratie,grelatie,gdedicatie),col='black',lwd=2)
  points(x=bp,y=c(gseparatie,gintegratie,grelatie,gdedicatie),pch=24)
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
