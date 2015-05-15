#                     RUN SURVEY 17746 R SCRIPT Killman - Conflicthantering 
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
survey <- '17746'
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
surveydb=dbConnect(MySQL(),user="root",password="mvhcmdhjh82",host="localhost",dbname="potoets")
historiedb=dbConnect(MySQL(),user="root",password="mvhcmdhjh82",host="localhost",dbname="historie")
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
# Bepaal de gemiddelde communicatie profiel score uit de historie resultdatabase 
###############################################################################################
# stap 1 : Maak de dataset en bepaal het aantal in de dataset
#
meanset <- dbGetQuery(historiedb,statement=paste('select * from ',resulttable,sep=""))
meannum = nrow(meanset)
#
# stap 2 : Maak alvast dummy waarden aan voor het geval er geen gegevens in de historie database staan
#
finalset <- matrix(5,1,5)
finalset[1,] <- c(6,6,6,6,6)
#
# Als deze leeg is dan slaan we de gemiddelde berekening over en gebruiken we 5 als gemiddelde
# voor alle segmenten
#
if(meannum!=0)
{
  meanresultset <- matrix(1:meannum*5,nrow=meannum,ncol=5)
  for(i in 1 : meannum)
  {
    answer <- as.vector(meanset[i,10:39])
    tk01 <-length(grep("A",answer[c(3,8,10,17,25,28)]))  +length(grep("B",answer[c(6,9,13,14,16,22)]))
    tk02 <-length(grep("A",answer[c(5,11,14,19,20,23)])) +length(grep("B",answer[c(2,8,21,26,28,30)]))
    tk03 <-length(grep("A",answer[c(2,4,13,22,26,29)]))  +length(grep("B",answer[c(7,10,12,18,20,24)]))
    tk04 <-length(grep("A",answer[c(1,6,7,9,12,27)]))    +length(grep("B",answer[c(5,15,17,19,23,29)]))
    tk05 <-length(grep("A",answer[c(15,16,18,21,24,30)]))+length(grep("B",answer[c(1,3,4,11,25,27)]))
    #
    # Omrekenen naar 399 scores midden- en top managers
    #
    #
    # Bepaal wedijveren score
    #
    if (tk01==0) {tk01 <- 0} else 
      if (tk01==1) {tk01<-2} else
        if (tk01==2) {tk01 <- 10} else 
          if (tk01==3) {tk01 <-22} else
            if (tk01==4) {tk01 <-32} else
              if (tk01==5) {tk01 <-40} else
                if (tk01==6) {tk01 <-58} else
                  if (tk01==7) {tk01 <- 78} else
                    if (tk01==8) {tk01 <- 84} else
                      if (tk01==9) {tk01 <-84} else
                        if (tk01==10) {tk01 <-94} else
                          if (tk01==11) {tk01 <- 96} else
                            if (tk01==12) {tk01 <-99}
    #
    # Bepaal Samenwerken score
    #
    if (tk02==0) {tk02 <- 0} else 
      if (tk02==1) {tk02<-2} else
        if (tk02==2) {tk02 <- 4} else 
          if (tk02==3) {tk02 <-6} else
            if (tk02==4) {tk02 <-8} else
              if (tk02==5) {tk02 <-18} else
                if (tk02==6) {tk02 <-24} else
                  if (tk02==7) {tk02 <- 48} else
                    if (tk02==8) {tk02 <- 54} else
                      if (tk02==9) {tk02 <-78} else
                        if (tk02==10) {tk02 <-84} else
                          if (tk02==11) {tk02 <- 94} else
                            if (tk02==12) {tk02 <-96}
    #
    # Bepaal Kompromis Score
    #
    if (tk03==0) {tk03 <- 0} else 
      if (tk03==1) {tk03<-2} else
        if (tk03==2) {tk03 <- 4} else 
          if (tk03==3) {tk03 <-6} else
            if (tk03==4) {tk03 <-12} else
              if (tk03==5) {tk03 <-28} else
                if (tk03==6) {tk03 <-38} else
                  if (tk03==7) {tk03 <- 52} else
                    if (tk03==8) {tk03 <- 72} else
                      if (tk03==9) {tk03 <-84} else
                        if (tk03==10) {tk03 <-94} else
                          if (tk03==11) {tk03 <- 96} else
                            if (tk03==12) {tk03 <-99}
    #
    # Bepaal Vermijden
    #
    if (tk04==0) {tk04 <- 0} else 
      if (tk04==1) {tk04<-2} else
        if (tk04==2) {tk04 <- 4} else 
          if (tk04==3) {tk04 <-10} else
            if (tk04==4) {tk04 <-22} else
              if (tk04==5) {tk04 <-32} else
                if (tk04==6) {tk04 <-52} else
                  if (tk04==7) {tk04 <- 78} else
                    if (tk04==8) {tk04 <- 84} else
                      if (tk04==9) {tk04 <-94} else
                        if (tk04==10) {tk04 <-96} else
                          if (tk04==11) {tk04 <- 98} else
                            if (tk04==12) {tk04 <-99}
    #
    # Bepaal Aanpasen Score
    # 
    if (tk05==0) {tk05 <- 0} else 
      if (tk05==1) {tk05<-2} else
        if (tk05==2) {tk05 <- 4} else 
          if (tk05==3) {tk05 <-24} else
            if (tk05==4) {tk05 <-38} else
              if (tk05==5) {tk05 <-54} else
                if (tk05==6) {tk05 <-78} else
                  if (tk05==7) {tk05 <- 84} else
                    if (tk05==8) {tk05 <- 92} else
                      if (tk05==9) {tk05 <-94} else
                        if (tk05==10) {tk05 <-96} else
                          if (tk05==11) {tk05 <- 98} else
                            if (tk05==12) {tk05 <-99}
    #  
    meanresultset[i,] <- c(tk01,tk02,tk03,tk04,tk05)
  }
  #
  # Stap 4 : Nu de gemiddelden berekenen
  #
  tk01 <- mean(meanresultset[,1])
  tk02 <- mean(meanresultset[,2])
  tk03 <- mean(meanresultset[,3])
  tk04 <- mean(meanresultset[,4])
  tk05 <- mean(meanresultset[,5])
  
  meany <- c(tk01,tk02,tk03,tk04,tk05)
  ##############################################################################################
  # hier kunnen we nu de grafiek mee gaan maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4,5)
  border <- c(1,1,1,1,1)
  x.names <- c('wedijveren','samenwerken','Kompromis','Vermijden','Aanpassen')
  main_titel <- "Omgaan met Konflikten - THOMAS KILLMAN"
  sub_titel  <- "4U CHANGE Persoonlijk Ondernemerschap"
  yas_titel  <- "Gemiddelden"
  #
  legend_titel <- "Segmenten"
  kleur_legend_titel <- "blue"
  kleur_legend_box <- "red"
  prefix <- paste(meangraph,'gemiddelden-',survey,sep="")
  ####################################################################################################################################
  # AANMAKEN JPEG FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-01.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    meany,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,y=meany)
  points(x=bp,y=meany)
lines(x=bp,c(24,24,24,24,24),col='blue',lwd=2)
lines(x=bp,c(78,78,78,78,78),col='blue',lwd=2)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    meany,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,meany,cex=1,pos=3)
  lines(x=bp,y=meany)
  points(x=bp,y=meany)
lines(x=bp,c(24,24,24,24,24),col='blue',lwd=2)
lines(x=bp,c(78,78,78,78,78),col='blue',lwd=2)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Groen de gemiddelde Score van alle \nrespondenten tot nu toe."
  plotCircular(area1=meany,
               area2=c(0,0,0,0,0),
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
               area2=c(0,0,0,0,0),
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
  answer <- as.vector(resultrecord[i,10:39])
  #
  #
  x <- c(1,2,3,4,5)
  border <- c(1,1,1,1,1)
  x.names <- c('Wedijveren','Samenwerken','Kompromis','Vermijden','Aanpassen')
  tk01 <-length(grep("A",answer[c(3,8,10,17,25,28)]))  +length(grep("B",answer[c(6,9,13,14,16,22)]))
  tk02 <-length(grep("A",answer[c(5,11,14,19,20,23)])) +length(grep("B",answer[c(2,8,21,26,28,30)]))
  tk03 <-length(grep("A",answer[c(2,4,13,22,26,29)]))  +length(grep("B",answer[c(7,10,12,18,20,24)]))
  tk04 <-length(grep("A",answer[c(1,6,7,9,12,27)]))    +length(grep("B",answer[c(5,15,17,19,23,29)]))
  tk05 <-length(grep("A",answer[c(15,16,18,21,24,30)]))+length(grep("B",answer[c(1,3,4,11,25,27)]))
  #
  # Bepaal wedijveren score
  #
  if (tk01==0) {tk01 <- 0} else 
    if (tk01==1) {tk01<-2} else
      if (tk01==2) {tk01 <- 10} else 
        if (tk01==3) {tk01 <-22} else
          if (tk01==4) {tk01 <-32} else
            if (tk01==5) {tk01 <-40} else
              if (tk01==6) {tk01 <-58} else
                if (tk01==7) {tk01 <- 78} else
                  if (tk01==8) {tk01 <- 84} else
                    if (tk01==9) {tk01 <-84} else
                      if (tk01==10) {tk01 <-94} else
                        if (tk01==11) {tk01 <- 96} else
                          if (tk01==12) {tk01 <-99}
  #
  # Bepaal Samenwerken score
  #
  if (tk02==0) {tk02 <- 0} else 
    if (tk02==1) {tk02<-2} else
      if (tk02==2) {tk02 <- 4} else 
        if (tk02==3) {tk02 <-6} else
          if (tk02==4) {tk02 <-8} else
            if (tk02==5) {tk02 <-18} else
              if (tk02==6) {tk02 <-24} else
                if (tk02==7) {tk02 <- 48} else
                  if (tk02==8) {tk02 <- 54} else
                    if (tk02==9) {tk02 <-78} else
                      if (tk02==10) {tk02 <-84} else
                        if (tk02==11) {tk02 <- 94} else
                          if (tk02==12) {tk02 <-96}
  #
  # Bepaal Kompromis Score
  #
  if (tk03==0) {tk03 <- 0} else 
    if (tk03==1) {tk03<-2} else
      if (tk03==2) {tk03 <- 4} else 
        if (tk03==3) {tk03 <-6} else
          if (tk03==4) {tk03 <-12} else
            if (tk03==5) {tk03 <-28} else
              if (tk03==6) {tk03 <-38} else
                if (tk03==7) {tk03 <- 52} else
                  if (tk03==8) {tk03 <- 72} else
                    if (tk03==9) {tk03 <-84} else
                      if (tk03==10) {tk03 <-94} else
                        if (tk03==11) {tk03 <- 96} else
                          if (tk03==12) {tk03 <-99}
  #
  # Bepaal Vermijden
  #
  if (tk04==0) {tk04 <- 0} else 
    if (tk04==1) {tk04<-2} else
      if (tk04==2) {tk04 <- 4} else 
        if (tk04==3) {tk04 <-10} else
          if (tk04==4) {tk04 <-22} else
            if (tk04==5) {tk04 <-32} else
              if (tk04==6) {tk04 <-52} else
                if (tk04==7) {tk04 <- 78} else
                  if (tk04==8) {tk04 <- 84} else
                    if (tk04==9) {tk04 <-94} else
                      if (tk04==10) {tk04 <-96} else
                        if (tk04==11) {tk04 <- 98} else
                          if (tk04==12) {tk04 <-99}
  #
  # Bepaal Aanpasen Score
  # 
  if (tk05==0) {tk05 <- 0} else 
    if (tk05==1) {tk05<-2} else
      if (tk05==2) {tk05 <- 4} else 
        if (tk05==3) {tk05 <-24} else
          if (tk05==4) {tk05 <-38} else
            if (tk05==5) {tk05 <-54} else
              if (tk05==6) {tk05 <-78} else
                if (tk05==7) {tk05 <- 84} else
                  if (tk05==8) {tk05 <- 92} else
                    if (tk05==9) {tk05 <-94} else
                      if (tk05==10) {tk05 <-96} else
                        if (tk05==11) {tk05 <- 98} else
                          if (tk05==12) {tk05 <-99}
  y <- c(tk01,tk02,tk03,tk04,tk05)
  # PLOT VARIABELEN
  gebruiker <- substr(as.character(tokenset[i,7]), 1, nchar(as.character(tokenset[i,7]))-14)
  # 
  main_titel <- "Omgaan met Konflikten - THOMAS KILLMAN"
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
    width = c(20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,y=y)
  points(x=bp,y=y)
lines(x=bp,c(24,24,24,24,24),col='blue',lwd=2)
lines(x=bp,c(78,78,78,78,78),col='blue',lwd=2)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
bp <-  barplot(
    y,main = main_titel, sub = sub_titel, xlab="",
    width = c(20,20,20,20,20),
    axes =TRUE,axisnames=TRUE,names.arg=x.names,cex.names=0.65,horiz=FALSE,
    ylim = c(0,100), ylab = yas_titel,
    legend.text=x.names,
    args.legend = list(
      x="topleft",
      title=legend_titel, title.col = kleur_legend_titel, box.col= kleur_legend_box, box.lwd=1, 
      text.width=26, horiz=TRUE,cex=0.51,bty="o"
    ),
    col=c("red","yellow","green","blue","purple"),
    border="green",
    density=20,
  )
  text(bp,0,y,cex=1,pos=3)
  lines(x=bp,y=y)
  points(x=bp,y=y)
lines(x=bp,c(24,24,24,24,24),col='blue',lwd=2)
lines(x=bp,c(78,78,78,78,78),col='blue',lwd=2)
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
