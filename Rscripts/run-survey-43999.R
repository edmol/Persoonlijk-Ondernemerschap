#                     RUN SURVEY 43999 R SCRIPT VOOR Toets - Stress 
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
survey <- '43999'
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
bars <- matrix(c(11,11,22,56,9,10,16,65,57,8,7,28,20,16,15,49),ncol=4)
rownames(bars) <- c('Optimale spanning','Stress in balans','Gestresst','Stress veel te groot')
colnames(bars) <- c('werk','prive','zelfkennis','planning')
#
werk  <- 22
prive <- 19
zelfk <- 57
plann <- 20
#
meany <- c(werk,prive,zelfk,plann)
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*4,nrow=meannum,ncol=4)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:99])
    #
    werk <-sum(as.numeric(answer[c(1:31)]))/108*100 
    prive <-sum(as.numeric(answer[c(32:50)]))/57*100
    zelfk <-100-sum(as.numeric(answer[c(51:75)]))/75*100
    plann <-100-sum(as.numeric(answer[c(76:90)]))/36*100
    #   
    meanresultset[i,] <- c(werk,prive,zelfk,plann)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  # 
  werk <- round(mean(meanresultset[,1]),2)
  prive <- round(mean(meanresultset[,2]),2)
  zelfk <- round(mean(meanresultset[,3]),2)
  plann <- round(mean(meanresultset[,4]),2)
  #
  meany <- c(werk,prive,zelfk,plann)
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Werk','Prive','Zelfkennis','Planning')
  main_titel <- "Test je Stress"
  sub_titel  <- "4U CHANGE Persoonlijk Ondernemerschap"
  yas_titel  <- "Gemiddelden"
  #
  legend_titel <- "Segmenten"
  kleur_legend_titel <- "blue"
  kleur_legend_box <- "red"
  #  
  #
  prefix <- paste(meangraph,'gemiddelden-',survey,sep="")
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
    bp <-  barplot(
    bars,main = main_titel, sub = sub_titel,xlab="Omgeving (werk en prive), Wat je zelf kan ( kennis en planning)",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.75,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text = rownames(bars),
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.75,bty="o"
    ),
    col=c("green","yellow","orange","red"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,meany,col='blue',lwd=2)
  points(x=bp,y=meany,pch=24)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
    bp <-  barplot(
    bars,main = main_titel, sub = sub_titel,xlab="Omgeving (werk en prive), Wat je zelf kan ( kennis en planning)",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.75,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text = rownames(bars),
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.75,bty="o"
    ),
    col=c("green","yellow","orange","red"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,meany,col='blue',lwd=2)
  points(x=bp,y=meany,pch=24) 
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
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  prefix <- paste(dirgraph,tokenset[i,3],'/',gebruiker,'-',survey,sep="")
  #
  #-------------------------------------processing 01-------------------------------------------------------------
  answer <- as.vector(resultrecord[i,10:99])
  #
  #
  x <- c(1,2,3,4)
  border <- c(1,1,1,1)
  x.names <- c('Werk','Prive','Zelfkennis','Planning')
  # 
  werk <-round(sum(as.numeric(answer[c(1:31)]))/108*100,2) 
  prive <-round(sum(as.numeric(answer[c(32:50)]))/57*100,2)
  zelfk <-round(100-sum(as.numeric(answer[c(51:75)]))/75*100,2)
  plann <-round(100-sum(as.numeric(answer[c(76:90)]))/36*100,2)
  # Bepaal wedijveren score
  # 
  y2 <- c(werk,prive,zelfk,plann)
  #
  # PLOT VARIABELEN
  # 
  main_titel <- "Test je Stress"
  sub_titel  <-  paste(gebruiker,'- 4U CHANGE Persoonlijk Ondernemerschap',sep="")
  yas_titel  <- "Jouw score"
  #
  legend_titel <- ""
  kleur_legend_titel <- "blue"
  kleur_legend_box <- "red"
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
    bp <-  barplot(
    bars,main = main_titel, sub = sub_titel, xlab="Omgeving (werk en prive), Wat je zelf kan ( kennis en planning)",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.75,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=rownames(bars),
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.75,bty="o"
    ),
    col=c("green","yellow","orange","red"),
    border="green",
    density=20,
  )
  text(bp,0,y2,cex=1,pos=3)
  lines(x=bp,y2,col='blue',lwd=2)
  points(x=bp,y=y2,pch=24)   
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
    bp <-  barplot(
    bars,main = main_titel, sub = sub_titel, xlab="Omgeving (werk en prive), Wat je zelf kan ( kennis en planning)",
    width = c(20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.75,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=rownames(bars),
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.75,bty="o"
    ),
    col=c("green","yellow","orange","red"),
    border="green",
    density=20,
  )
  text(bp,0,y2,cex=1,pos=3)
  lines(x=bp,y2,col='blue',lwd=2)
  points(x=bp,y=y2,pch=24) 
  dev.off()
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Oranje  is Jouw Score ten opzichte \nvan het huidig 4U CHANGE gemiddelde - (groen) "
  plotCircular(area1=y2,
               area2=meany,
               labels=x.names,dp=2,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("orange","green"),
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
  plotCircular(area1=y2,
               area2=meany,
               labels=x.names,dp=2,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("orange","green"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
  dev.off()
  #
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
