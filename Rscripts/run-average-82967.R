require(RMySQL)
require(grDevices)
require(season)
meangraph <- '/var/www/4u-change.com/web/wp-content/gallery/mean/'
survey <- '82967'
tokentable <- paste('lime_tokens_',survey,sep="")
resulttable <- paste('lime_survey_',survey,sep="")
# ------------------------------------------------------------------------------------------------
# Database definities
# ------------------------------------------------------------------------------------------------
driver <- MySQL(max.con=100, force.reload = TRUE)
db_parmfile <- "/var/www/Rscripts/RMySQL.cnf"
# ------------------------------------------------------------------------------------------------
# Opmaken database connectie met historie database (volledige layout reflectie)
# ------------------------------------------------------------------------------------------------
historiedb=dbConnect(driver, default.file=db_parmfile, group ="prdhist")
# ------------------------------------------------------------------------------------------------
# Algemene functies
# ------------------------------------------------------------------------------------------------
openg <- function (width = 5, height = 5, pointsize = 12)
{
  window(width = width, height = height, pointsize = pointsize)
}
saveg <- function (fn, width = 5, height=5, pointsize = 12)
{
  dev.copy(device=pdf, file=paste(fn,".pdf",sep=""),
           width=width, height=height,pointsize=pointsize)
  dev.off()
  dev.copy(device=postscript, file=paste(fn,".ps",sep=""),
           width=480, height=480, pointsize=pointsize)
  dev.off()
}
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
    answer <- as.vector(meanset[i,6:35])
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
  
  finalset[1,] <- c(round(mean(meanresultset[,1]),2),
                    round(mean(meanresultset[,2]),2),
                    round(mean(meanresultset[,3]),2),
                    round(mean(meanresultset[,4]),2),
                    round(mean(meanresultset[,5]),2),
                    round(mean(meanresultset[,6]),2))
  ##############################################################################################
  # hier kunnen we nu de grafiek maken met de gemiddelde waarden
  ##############################################################################################
  #
  # PLOT VARIABELEN
  #
  x <- c(1,2,3,4,5,6)
  border <- c(1,1,1,1,1,1)
  x.names <- c('Geven','Ontvangen','Ondergaan','Verdedigen','Aanvallen','Vasthouden')
  main_titel <- "Communicatie Profiel - T'ai-tji Model - Gemiddeld"
  sub_titel  <-  "4U CHANGE Persoonlijk Ondernemerschap"
  yas_titel  <- "gemiddelde score alle respondenten"
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
  bp <-barplot(
    finalset,main = main_titel, sub = sub_titel, xlab="",
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
  text(bp,0,finalset,cex=1,pos=3)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN POSTSCRIPT FILE IN FOLDER voor latere verwerking in pdflatex als er een rapport nodig is met resulaten
  ####################################################################################################################################
  postscript(file=paste(prefix,'-01.eps',sep=""),width=800, height=600, pointsize = 12, bg = "white")
  ####################################################################################################################################
  #
  bp <- barplot(
    finalset,main = main_titel, sub = sub_titel, xlab="",
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
    density=20
  )
  text(bp,0,finalset,cex=1,pos=3)
  dev.off()
  ####################################################################################################################################
  # AANMAKEN JPEG 2 FILE IN FOLDER
  ####################################################################################################################################
  jpeg(filename=paste(prefix,'-02.jpeg',sep=""),width=800, height = 600, units = "px", pointsize = 12, quality = 75, bg = "white")
  ####################################################################################################################################
  sub_titel2  <- "Groen de gemiddelde Score van alle \nrespondenten tot nu toe."
  plotCircular(area1=finalset,
               area2=c(0,0,0,0,0,0),
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
  plotCircular(area1=finalset,
               area2=c(0,0,0,0,0,0),
               labels=x.names,dp=1,
               main=main_titel,
               sub=sub_titel2,
               pieces.col=c("green","blue"),
               lines=TRUE,
               legend=FALSE,
               scale=0.7
  )
  dev.off()
  #
}
#########################
# Database sluiten      #
#########################
dbDisconnect(historiedb)
dbUnloadDriver(driver)
