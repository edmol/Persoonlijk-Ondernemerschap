# 
# TEAM processing - lees en verwerk aanvragen van team spiegels
#                   Aanvragen staan in db teamspiegels
#                   Historie staat in teamhistorie
#
# Stap 1 : Declareer MYSQL database connecties
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
teamspiegels  <-dbConnect(driver,username="root",password="mvhcmdhjh82",dbname="teamspiegels",host="toetsen.4u-change.com")
teamhistorie <- dbConnect(driver,username="root",password="mvhcmdhjh82",dbname="teamhistorie",host="toetsen.4u-change.com")
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
#hoofddir = '/home/edmol/porapporten/'
#
# Stap 2 : Definieer de benodigde tabellen in de databases
#
teamspiegeltabel <- "teamspiegel"
teamhistorietabel <- "teamspiegel"
statusspiegels <- "statusspiegels"
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
spiegels = dbGetQuery(teamspiegels,statement=paste('select * from ',teamspiegeltabel,sep=""))
historie = dbGetQuery(teamhistorie,statement=paste('select * from ',teamhistorietabel,sep=""))
#
# ------------------------------------------------------------------------------------------------
# Stap 4 : Bepaal het verschil tussen teams database en historie
# ------------------------------------------------------------------------------------------------
#
finalnum <- (nrow(spiegels)-nrow(historie))
#
# Als er geen verschillen zijn dan stoppen bye
#
if (finalnum < 1) 
{
  dbDisconnect(teamspiegels)
  dbDisconnect(teamhistorie)
  dbUnloadDriver(driver)
  stop("geen nieuwe aanvraag voor teamrapporten")
}
# ------------------------------------------------------------------------------------------------
# Stap 5 : Nu de werkelijke records ophalen.
# ------------------------------------------------------------------------------------------------
verwerken <- rows.in.tokenresults.that.are.not.in.historieresults(spiegels,historie)
aantalteverwerken <- nrow(verwerken)
for (rapport in 1 : aantalteverwerken)
{
# Stap A : Haal gegevens op en bepaal de grote van het team
#          De grote is van belang voor het aanroepen van het juiste Team Spiegel programma
#
 organisatie <- gsub(" ","-",verwerken[rapport,2],fixed=TRUE)
 aantalteamleden <- 0
 foutcode <- 0 
 #
 # Het aantal is nu bepaald. Nu gaan we bij ieder teamlid de juiste data zoeken
 # De inhoud geeft de directory aan in /var/www/4u-change.com/web/wp-content/gallery/porapporten
 # In deze directory staan minimaal twee bestanden 
 # Bestand 1 : eindigd op .naam
 # Bestand 2 : eindigd op .data
 #
 # Check of alle directories bestaan en bestanden aanwezig zijn
 #
 for (teamlid in 1:8)
 {
   if (nchar(verwerken[rapport,teamlid+2])!=0)
     {
     aantalteamleden <- aantalteamleden + 1
     checkdir <- paste(hoofddir,verwerken[rapport,teamlid+2],sep="")
     #
     # Kijken of directorie bestaat anders gaat het niet goed
     #
     if (file.exists(checkdir))
       {
       #
       # De directory bestaat dus nu gaan we kijken of de 
       # bestanden aanwezig zijn
       #
       databestand <- paste(checkdir,'/',verwerken[rapport,teamlid+2],'.data',sep="")
       naambestand <- paste(checkdir,'/',verwerken[rapport,teamlid+2],'.naam',sep="")
       if (file.exists(databestand) && file.exists(naambestand))
       {
         # alles ok - nu data bestanden laden en klaarzetten
         if (aantalteamleden==1)
         {
            t1results <- as.matrix(read.table(databestand))
            t1data    <- as.matrix(read.table(naambestand))
            t1token   <- verwerken[rapport,teamlid+2]
            t1naam    <- t1data[1]
            suffix    <- "01"
            teamrapport <- "team-spiegel-01.Rnw"
         }
         if (aantalteamleden==2)
         {
            t2results <- as.matrix(read.table(databestand))
            t2data    <- as.matrix(read.table(naambestand))
            t2token   <- verwerken[rapport,teamlid+2]
            t2naam    <- t2data[1]
            suffix    <- "02"
            teamrapport <- "team-spiegel-02.Rnw"
         }
         if (aantalteamleden==3)
         {
            t3results <- as.matrix(read.table(databestand))
            t3data    <- as.matrix(read.table(naambestand))
            t3token   <- verwerken[rapport,teamlid+2]
            t3naam    <- t3data[1]
            suffix    <- "03"
            teamrapport <- "team-spiegel-03.Rnw"
         }
         if (aantalteamleden==4)
         {
           t4results <- as.matrix(read.table(databestand))
           t4data    <- as.matrix(read.table(naambestand))
           t4token   <- verwerken[rapport,teamlid+2]
           t4naam    <- t4data[1]
           suffix    <- "04"
           teamrapport <- "team-spiegel-04.Rnw"
         }
         if (aantalteamleden==5)
         {
           t5results <- as.matrix(read.table(databestand))
           t5data    <- as.matrix(read.table(naambestand))
           t5token   <- verwerken[rapport,teamlid+2]
           t5naam    <- t5data[1]
           suffix    <- "05"
           teamrapport <- "team-spiegel-05.Rnw"
         }
         if (aantalteamleden==6)
         {
           t6results <- as.matrix(read.table(databestand))
           t6data    <- as.matrix(read.table(naambestand))
           t6token   <- verwerken[rapport,teamlid+2]
           t6naam    <- t6data[1]
           suffix    <- "06"
           teamrapport <- "team-spiegel-06.Rnw"
         }
         if (aantalteamleden==7)
         {
           t7results <- as.matrix(read.table(databestand))
           t7data    <- as.matrix(read.table(naambestand))
           t7token   <- verwerken[rapport,teamlid+2]
           t7naam    <- t7data[1]
           suffix    <- "07"
           teamrapport <- "team-spiegel-07.Rnw"
         }
         if (aantalteamleden==8)
         {
           t8results <- as.matrix(read.table(databestand))
           t8data    <- as.matrix(read.table(naambestand))
           t8token   <- verwerken[rapport,teamlid+2]
           t8naam    <- t8data[1]
           suffix    <- "08"
           teamrapport <- "team-spiegel-08.Rnw"
         }
       } else { foutcode <- 1 } # End Else beide bestand bestaan in dir
     } else { foutcode <- 2 } # End Else Directory bestaat niet
    } # Endif check teamlid file of hij leeg is of gevuld
 } # Endfor alle 8 records - gecheckt
 #
 # Foutcodes : 1 - Directory bestaat wel maar niet de juiste bestanden  
 #             2 - Directory bestaat niet onjuist teamlid opgegeven
 if (foutcode == 0)
 {
   #
   # voordat we het rapport gaan maken moeten we hem in een directory zetten
   # Als deze niet bestaat maken we hem aan in de hoofddirectory
   #
   folder <- paste(hoofddir,organisatie,'/',sep="" )
   if (file.exists(folder)){
   } else {
     dir.create(file.path(hoofddir, organisatie),mode = "0777")
   }
   #
   # nu een subfolder maken zodat de team rapportage in de 
   # tijd uniek blijft.
   #
   newdir <- paste('team',suffix,'-',format(Sys.time(),'%d%m%y%H%M%S'),sep="")
   dir.create(file.path(folder,newdir),mode = "0777")
   folder <- paste(folder,newdir,'/',sep="")
   setwd(folder)
   #
   # Op basis van aantal teamleden Sweave aanroepen
   #
   #
   historierecord <- dbGetQuery(teamspiegels,statement=paste('select * from ',teamspiegeltabel,' where teamID=',"'",verwerken[rapport,1],"'",sep=""))
   #
   # Maak status record aan in tabel statusspiegels
   # 
   statusrecord <- historierecord
   statusrecord[1,11] <- paste(organisatie,'/',newdir,'/',sep="")
   dbWriteTable(teamhistorie,statusspiegels,statusrecord,row.names=FALSE,append=TRUE)
   dbWriteTable(teamhistorie,teamhistorietabel,historierecord,row.names=FALSE,append=TRUE)
   #
   #
   sweavefile <- paste(functie_map,"/",teamrapport,sep="")
   Sweave(sweavefile) 
  #
  # Als dit record verwerkt is dan schrijven naar historie bestand ( tijdens testen NIET !!)
  #  
 }
}
# endfor alle teamaanvragen 
#########################
# Database sluiten      #
#########################
dbDisconnect(teamspiegels)
dbDisconnect(teamhistorie)
dbUnloadDriver(driver)
