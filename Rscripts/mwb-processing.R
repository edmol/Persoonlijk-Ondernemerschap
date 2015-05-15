# 
# MEDEWERKERS BETROKKENHEIDS ONDERZOEK
#   lees en verwerk aanvragen van MWB aanvragen
#                   Aanvragen staan in database potoets  - tabel mwb
#                   Historie  staat in database historie - tabel mwb 
#
# Stap 1 : Declareer MYSQL database connecties
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
mwb_aanvraag  <-dbConnect(driver,username="root",password="spiegel2013",dbname="potoets",host="localhost")
mwb_historie  <- dbConnect(driver,username="root",password="spiegel2013",dbname="historie",host="localhost")
mwb_tb <- "lime_tokens_714972"
###################################################################################
# ZET PRODUCTIE OF TEST VARIABELE HIER !!!!!!!!!!!!!!!!!!!!!!!!!!
###################################################################################
ontwikkel <- "N" 
#################################################################################
if (ontwikkel == "Y")  {
  dirgraph <- '/Library/Webserver/Documents/wp-content/gallery/porapporten/'
  default_images <- '/Library/Webserver/Documents/Rscripts/images/'
  functie_map <- "/Library/Webserver/Documents/Rscripts/functies/"
  data_map     <- "/Library/Webserver/Documents/Rscripts/data/"
  data_file    <- "toets-po-cockpit.csv"
} else
{ 
  dirgraph <- '/var/www/4u-change.com/web/wp-content/gallery/porapporten/'
  data_dir <- '/var/www/4u-change.com/web/wp-content/gallery/porapporten/'
  default_images <- '/var/www/Rscripts/images/'
  functie_map <- "/var/www/Rscripts/functies/"
  data_map     <- "/var/www/Rscripts/data/"
  data_file    <- "toets-po-cockpit.csv"
}
#
#  LOKAAL TESTMAPPEN AANMAKEN EN GEBRUIKEN 
#
#
# Verschillende variabelen
#
hoofddir = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/'
#
# Stap 2 : Definieer de benodigde tabellen in de databases
#
mwb_aanvraag_tabel <- "mwb"
mwb_historie_tabel <- "mwb"
mwb_status_tabel <- "mwbstatus"
#
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
# Stap 3 : Maak nu sets aan zodat we kunnen kijken of er nieuwe teams zijn die we willen verwerken
# ------------------------------------------------------------------------------------------------
aanvragen = dbGetQuery(mwb_aanvraag,statement=paste('select * from ',mwb_aanvraag_tabel,sep=""))
historie  = dbGetQuery(mwb_historie,statement=paste('select * from ',mwb_historie_tabel,sep=""))
#
# ------------------------------------------------------------------------------------------------
# Stap 4 : Bepaal het verschil tussen teams database en historie
# ------------------------------------------------------------------------------------------------
#
finalnum <- (nrow(aanvragen)-nrow(historie))
#
# Als er geen verschillen zijn dan stoppen bye
#
if (finalnum < 1) 
{
  dbDisconnect(mwb_aanvraag)
  dbDisconnect(mwb_historie)
  dbUnloadDriver(driver)
  stop("geen nieuwe MWB aanvragen")
}
# ------------------------------------------------------------------------------------------------
# Stap 5 : Nu de werkelijke records ophalen.
# ------------------------------------------------------------------------------------------------
updates <- rows.in.tokenresults.that.are.not.in.historieresults(aanvragen,historie)
aantalteverwerken <- nrow(updates)
for (rapport in 1 : aantalteverwerken)
{
# Stap A : Haal gegevens op en bepaal de grote van het team
#          De grote is van belang voor het aanroepen van het juiste Team Spiegel programma
#
organisatie <- updates[rapport,2]
organisatie <- gsub("[^0-9A-Za-z///' ]", "", organisatie)
#
mwb_org <- organisatie
mwb_soort <- "r"
mwb_records<-dbGetQuery(mwb_aanvraag,statement=paste('select * from ',mwb_tb,' where attribute_1=','"r"',' AND participant_id= ','"',mwb_org,'"',' AND completed!=','"NA"',sep=""))
verwerken <- nrow(mwb_records)
organisatie <- gsub(" ","-",organisatie,fixed=TRUE)
num_feedbacks <- 0
#
for( i in 1:verwerken)
{
  data_folder <- mwb_records[i,7]
  data_naam <- paste(data_dir,data_folder,'/',data_folder,".data",sep='')
  if (i==1) 
  {
    pm <- as.matrix(read.table(data_naam))
  } else
  { 
    pm <- cbind(pm,as.matrix(read.table(data_naam)))
  }
  #
  # Hier de matrix opbouwen van de feedbackgevers
  #
  aantal_fb <- mwb_records[i,24]
  fb0_naam <- paste(data_dir,data_folder,'/',mwb_records[i,20],".data",sep='')
  fb1_naam <- paste(data_dir,data_folder,'/',mwb_records[i,21],".data",sep='')
  fb2_naam <- paste(data_dir,data_folder,'/',mwb_records[i,25],".data",sep='')
  fb3_naam <- paste(data_dir,data_folder,'/',mwb_records[i,26],".data",sep='')
  #
  # Feedback record hoeft nog niet te bestaand dus we checken eerst of de bestanden bestaan.
  #
  if (file.exists(fb0_naam))
  {
    if (num_feedbacks==0)
    {
      fm <- as.matrix(read.table(fb0_naam))
      num_feedbacks <- num_feedbacks + 1
    } else
    {
      fm <- cbind(fm,as.matrix(read.table(fb0_naam)))
      num_feedbacks <- num_feedbacks + 1
    }
  }
  #
  if (file.exists(fb1_naam))
  {
    if (num_feedbacks==0)
    {
      fm <- as.matrix(read.table(fb1_naam))
      num_feedbacks <- num_feedbacks + 1
    } else
    {
      fm <- cbind(fm,as.matrix(read.table(fb1_naam)))
      num_feedbacks <- num_feedbacks + 1
    }
  }
  #
  if (file.exists(fb2_naam))
  {
    if (num_feedbacks==0)
    {
      fm <- as.matrix(read.table(fb2_naam))
      num_feedbacks <- num_feedbacks + 1
    } else
    {
      fm <- cbind(fm,as.matrix(read.table(fb2_naam)))
      num_feedbacks <- num_feedbacks + 1
    }
  }
  #
  if (file.exists(fb3_naam))
  {
    if (num_feedbacks==0)
    {
      fm <- as.matrix(read.table(fb3_naam))
      num_feedbacks <- num_feedbacks + 1
    } else
    {
      fm <- cbind(fm,as.matrix(read.table(fb3_naam)))
      num_feedbacks <- num_feedbacks + 1
    }
  }
}
#
# vanaf hier kunnen we het aantal respondenten berekenen en 
# het dataframe aanmaken welke we aan de mwb.Rnw doorgeven
#
check_dir01 <- paste(data_dir,organisatie,'/',sep='')
maak_subdir01 <- paste('MWB','-',format(Sys.time(),'%d%m%y%H%M%S'),sep="") 
if (file.exists(check_dir01)){
} else {
  dir.create(file.path(data_dir, organisatie),mode = "0777")
}
dir.create(file.path(check_dir01,maak_subdir01),mode = "0777")
mwb_folder <- paste(check_dir01,maak_subdir01,'/',sep="")
setwd(mwb_folder)
#
# Update record met
# mwb-dir  <- maak_subdir01
# mwb-aantal <- verwerken
#
historierecord <- dbGetQuery(mwb_aanvraag,statement=paste('select * from ',mwb_aanvraag_tabel,' where mwb_id=',"'",updates[rapport,1],"'",sep=""))

dbWriteTable(mwb_historie,mwb_historie_tabel,historierecord,row.names=FALSE,append=TRUE)
#
#
maxmwbid <- dbGetQuery(mwb_historie, "SELECT MAX(mwb_id) FROM mwbstatus")[1,1]
if (is.na(maxmwbid)) maxmwbid=0 else maxmwbid <- maxmwbid+1
historierecord[rapport,1] <- maxmwbid
historierecord[rapport,3] <- paste(organisatie,'/',maak_subdir01,sep="")
historierecord[rapport,4] <- verwerken
historierecord[rapport,38] <- format(Sys.time(),'%d-%m-%Y %H:%M:%S')
dbWriteTable(mwb_historie,mwb_status_tabel,historierecord,row.names=FALSE,append=TRUE)
#
#
sweavefile <- paste(functie_map,"/","mwb.Rnw",sep="")
Sweave(sweavefile)
#
}
# end for alle aanvragen 
#########################
# Database sluiten      #
#########################
dbDisconnect(mwb_aanvraag)
dbDisconnect(mwb_historie)
dbUnloadDriver(driver)
