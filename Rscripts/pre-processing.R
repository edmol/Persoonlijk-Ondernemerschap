#                     PRE PROCESSING SCRIPT OM RAPPORT PO COCKPIT VOOR TE BEREIDEN. EN
#                     BEREKENINGEN TE MAKEN. 100 stellingen van respondent en 1 t/m 4 feedbackgevers
#                     Tokens van feedbackgevers worden opgenomen in tokenrecord van limesurvey van respondent.
#                     Historie tabel wordt gevuld om verwerkte records bij te houden.
#                     
# Database variabelen
#
require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
#
survey <- '714972'
respondent    <- 'r'
feedbackgever <- 'f'
nooit <- 'n'
incidenteel <- 'i'
soms <- 's'
meestal <- 'm'
altijd <- 'a'
#
###################################################################################
# ZET PRODUCTIE OF TEST VARIABELE HIER !!!!!!!!!!!!!!!!!!!!!!!!!!
###################################################################################
ontwikkel <- "N" 
#################################################################################
if (ontwikkel == "Y")  {
  db_parmfile <- "/Library/Webserver/Documents/Rscripts/RMySQL.cnf"
  toetsgrp <- 'potoets'
  histgrp  <- 'machist'
  dirgraph <- '/Library/Webserver/Documents/wp-content/gallery/porapporten/'
  functie_map <- "/Library/Webserver/Documents/Rscripts/functies/"
  data_map     <- "/Library/Webserver/Documents/Rscripts/data/"
  data_file    <- "toets-po-cockpit.csv"
} else
{ 
  db_parmfile <- "/var/www/Rscripts/RMySQL.cnf"
  toetsgrp <- 'prdtoets'
  histgrp  <- 'prdhist'
  dirgraph <- '/var/www/4u-change.com/web/wp-content/gallery/porapporten/'
  functie_map <- "/var/www/Rscripts/functies/"
  data_map     <- "/var/www/Rscripts/data/"
  data_file    <- "toets-po-cockpit.csv"
}
# ----------------------------------------------------------------------------------------
# inlezen van de datafile toets-po-cockpit.csv uit Rscripts/data 
# Hierin staan alle gegevens van de vragen en de waarden van de aantwoorden op deze vragen.
# ----------------------------------------------------------------------------------------
source(paste(functie_map,"leesinputfile.R",sep=""))
#infile <- leesinputfile(data_map,data_file)
#vraag_factor              <- infile[,2]
#vraag                     <- infile[,3]
#vraag_soort               <- infile[,4]
#vraag_waarden_nooit       <- as.numeric(infile[,5])
#vraag_waarden_incidenteel <- as.numeric(infile[,6])
#vraag_waarden_soms        <- as.numeric(infile[,7])
#vraag_waarden_meestal     <- as.numeric(infile[,8])
#vraag_waarden_altijd      <- as.numeric(infile[,9])
# ----------------------------------------------------------------------------------------
# Tokentabel is de tabel in limesurvey met de naam lime_tokens_xxxxx en bevat de tokens
# resulttabel is de tabel in limesurvey met de naam lime_survey_xxxxx en bevat de resultaten
# ----------------------------------------------------------------------------------------
tokentable <- paste('lime_tokens_',survey,sep="")
tokentable_historie <- paste('lime_tokens_',survey,'_historie',sep="")
resulttable <- paste('lime_survey_',survey,sep="")
# ----------------------------------------------------------------------------------------
# Opmaken database connectie met survey en historiedatabase
# ----------------------------------------------------------------------------------------
surveydb=dbConnect(driver, default.file = db_parmfile, group = toetsgrp)
# ----------------------------------------------------------------------------------------
# Algemene functies
# ----------------------------------------------------------------------------------------
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
# ----------------------------------------------------------------------------------------
# aanmaken resultsets a) completed surveyresults b) already processed historie
# -----------------------------------------------------------------------------------------
tokenresults = dbGetQuery(surveydb,statement=paste('select * from ',tokentable,' where completed!="N"',sep=""))
historieresults = dbGetQuery(surveydb,statement=paste('select * from ',tokentable_historie,' where completed!="N"',sep=""))
#
# ----------------------------------------------------------------------------------------
# Als er geen nieuwe surveyresults zijn die nog niet verwerkt zijn dan kunnen we stoppen 
# ----------------------------------------------------------------------------------------
#
finalnum <- (nrow(tokenresults)-nrow(historieresults))
if (finalnum < 1) 
{
  dbDisconnect(surveydb)
  dbUnloadDriver(driver)
  stop("geen nieuwe surveys gevonden")
}
# ----------------------------------------------------------------------------------------
# Nu de te verwerken resultset maken door de twee sets te vergelijken 
# ----------------------------------------------------------------------------------------
tokenset <- rows.in.tokenresults.that.are.not.in.historieresults(tokenresults,historieresults)
finalnum <- nrow(tokenset)
#
# ----------------------------------------------------------------------------------------
# finalresults bevat het dataframe met finalnum aantal records om nu te gaan verwerken
# ----------------------------------------------------------------------------------------
#
#-------------------------------------now proces all new surveys !!-----------------------
#
for(i in 1 : finalnum){
  
  #  Opslaan info uit token record omdat bepaald moet wordenin welke file de resultaten 
  #  opgeslagen moeten worden.
  #  deze wordt bepaald door het token van de respondent.
  #  Als het gaat om een feedback gever dan is het eerste token het token van de respondent
  #
  # r = respondent en f = feedbackgever
  #
  soort_invuller      <- tokenset[i,18]
#
  if(soort_invuller == "r") {dir <- tokenset[i,7]} else {dir <- tokenset[i,20]}
  if(file.exists(paste(dirgraph,dir,sep="")))
  {
    # Do nothing
  } else
  {
    dir.create(paste(dirgraph,dir,sep=""))
  }
  # 
  # Positie 19 bevat de voornaam van de respondent ( waarvoor de feedbackgever de toets invult).
  # positie 20 bevat het token van de tweede persoon
  # positie 21 bevat het token van de derde persoon
  # positie 22 bevat het geslacht van de respondent
  # positie 23 is de directory waar de resultaten voor de respondent opgeslagen zullen worden.
  # positie 24 kan gebruikt worden om aan te geven of het om een teamtoets gaat of een individuele toets
  #
  # let in het volgend statement niet letterlijk op de naam. Dus als soort_invuller een f is dan staat 
  # het token van de respondent in positie 20
  #
  token_vanrespondent <- tokenset[i,20]
  #
  # Haal nu de antwoorden op, op basis van het token van deze persoon ( staat in positie 7)
  #                                   
  resultrecord <- dbGetQuery(surveydb,statement=paste('select * from ',resulttable,' where token=',"'",tokenset[i,7],"'",sep=""))
  # 
  # Check eerst of DB table leeg is. !!! HIER WORDEN RECORDS NAAR HISTORIE GESCHREVEN. 
  #
  #
  # Maak nu bestandsnamen aan om de namen en data van deze persoon in op te slaan
  #   
  bestand <- paste(tokenset[i,23],tokenset[i,7],'.data',sep="")
  bestand2 <- paste(tokenset[i,23],tokenset[i,7],'.naam',sep="")
  #
  #-------------------------------------processing 01-------------------------------------------------------------
  #
  # 100 stellingen ophalen uit de resultaten
  #
  antwoord <- as.matrix(resultrecord[1,9:108])
  #
  # Nu een matrix aanmaken met daarin de antwoorden vertaald naar waarden.
  # Deze waarden staat in de verschillende tabellen die eerder zijn opgehaald
  # vraag_waarden_nooit       
  # vraag_waarden_incidenteel 
  # vraag_waarden_soms        
  # vraag_waarden_meestal     
  # vraag_waarden_altijd      
  #
  eindresultaat <- matrix(1:256,ncol=1)
  eindresultaat2 <- matrix(1:4,ncol=4)
  eindresultaat2[1,1] <- tokenset[i,3]
  eindresultaat2[1,2] <- tokenset[i,4]
  eindresultaat2[1,3] <- tokenset[i,5]
  eindresultaat2[1,4] <- tokenset[i,13]
  # 
  # aanpassing ! om de letters in de balkjes in het rapport weer te geven, zetten we een indicatie in hiervan in de data
  #
  for(vraag in 1:100)
  {
    if (antwoord[vraag]==nooit) {
        eindresultaat[vraag] <- vraag_waarden_nooit[vraag] 
        eindresultaat[vraag+156] <- 1
    }
    if (antwoord[vraag]==incidenteel) {
        eindresultaat[vraag] <- vraag_waarden_incidenteel[vraag] 
        eindresultaat[vraag+156] <- 2
    }
    if (antwoord[vraag]==soms) {
        eindresultaat[vraag] <- vraag_waarden_soms[vraag] 
        eindresultaat[vraag+156] <- 3
    }
    if (antwoord[vraag]==meestal) {
        eindresultaat[vraag] <- vraag_waarden_meestal[vraag] 
        eindresultaat[vraag+156] <- 4
    }
    if (antwoord[vraag]==altijd) {
        eindresultaat[vraag] <- vraag_waarden_altijd[vraag] 
        eindresultaat[vraag+156] <- 5
    }
  }
  # 
  # nu extra berekeningen voor gemiddelde ondernemendheid en betrokkenheid enn groeipotentieel
  # waarde 1 t/m 100   - individuele antwoorden op de vragen
  # waarde 101,102,103 - 1. Regenboom zien 
  # waarde 104,105,106 - 2. Regie voeren   
  # waarde 107,108,109 - 3. Richting vaststellen 
  # waarde 110,111,112 - 4. Rust geven 
  # waarde 113,114,115 - 5. Ruimte creeren
  # waarde 116,117,118 - 6. Rendement vaststellen
  # waarde 119,120,121 - 7. Resultaat boeken
  # waarde 122,123,124 - 8. Reflectie vragen/geven
  # waarde 125,126,127 - 9. Relaties houden
  # waarde 128,129,130 - 10. Ruggengraat tonen
  # waarde 131,132,133 - Houding
  # waarde 134,135,136 - Gevoel
  # waarde 137,138,139 - Organisatiekenmerk
  # waarde 140,141,142 - Gedrag
  # waarde 143,144,145 - Effect
  # waarde 146,147,148 - kritieke transformatie factoren
  # waarde 149,150     - Kritieke vitaliteitsfactoren
  # waarde 151,152     - Kritieke veranderfactoren
  # waarde 153,154     - Kritieke prestatiefactoren
  # waarde 155,156     - Kritieke waardenfactoren
  #
  # berekenen voor de 10 stappen de scores en begin matrix vanaf 101 verder te vullen
  #
  startpos <- 101
  for(stelling in seq(1,100,by=10))
  {    
    eindresultaat[startpos] <- round(mean(c(eindresultaat[stelling],
                               eindresultaat[stelling+2],
                               eindresultaat[stelling+4],
                               eindresultaat[stelling+6],
                               eindresultaat[stelling+8])),0)
    eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[stelling+1],
                                     eindresultaat[stelling+3],
                                     eindresultaat[stelling+5],
                                     eindresultaat[stelling+7],
                                     eindresultaat[stelling+9])),0)
    eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
    startpos <- startpos + 3
  }
  # HOUDING - startpos staat nu op 131 ( eerstvolgende positie in matrix)
  # GEVOEL - startpositie is 134
  # ORGANISATIE KENMERK - startpositie is 137
  # GEDRAG - startpositie is 140
  # EFFECT - startpositie is 143
  #                          HOUDING
  #                          -------
startpos <- 131
    eindresultaat[startpos] <- round(mean(c(eindresultaat[1],                                            
                                            eindresultaat[11],                                            
                                            eindresultaat[21],                                            
                                            eindresultaat[31],                                            
                                            eindresultaat[41],                                            
                                            eindresultaat[51],                                            
                                            eindresultaat[61],                                            
                                            eindresultaat[71],                                            
                                            eindresultaat[81],
                                            eindresultaat[91])),0)
    eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[2],                                            
                                            eindresultaat[12],                                            
                                            eindresultaat[22],                                            
                                            eindresultaat[32],                                            
                                            eindresultaat[42],                                            
                                            eindresultaat[52],                                            
                                            eindresultaat[62],                                            
                                            eindresultaat[72],                                            
                                            eindresultaat[82],                                            
                                            eindresultaat[92])),0)
    eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
#
#                          GEVOEL
#                          ------- 
startpos <- 134
  eindresultaat[startpos] <- round(mean(c(eindresultaat[3],                                            
                                          eindresultaat[13],                                            
                                          eindresultaat[23],                                            
                                          eindresultaat[33],                                            
                                          eindresultaat[43],                                            
                                          eindresultaat[53],                                            
                                          eindresultaat[63],                                            
                                          eindresultaat[73],                                            
                                          eindresultaat[83],
                                          eindresultaat[93])),0)
  eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[4],                                            
                                            eindresultaat[14],                                            
                                            eindresultaat[24],                                            
                                            eindresultaat[34],                                            
                                            eindresultaat[44],                                            
                                            eindresultaat[54],                                            
                                            eindresultaat[64],                                            
                                            eindresultaat[74],                                            
                                            eindresultaat[84],                                            
                                            eindresultaat[94])),0)
  eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
#
#                           ORGANISATIE KENMERK
#                           -------------------
startpos <- 137
  eindresultaat[startpos] <- round(mean(c(eindresultaat[5],                                            
                                          eindresultaat[15],                                            
                                          eindresultaat[25],                                            
                                          eindresultaat[35],                                            
                                          eindresultaat[45],                                            
                                          eindresultaat[55],                                            
                                          eindresultaat[65],                                            
                                          eindresultaat[75],                                            
                                          eindresultaat[85],
                                          eindresultaat[95])),0)
  eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[6],                                            
                                            eindresultaat[16],                                            
                                            eindresultaat[26],                                            
                                            eindresultaat[36],                                            
                                            eindresultaat[46],                                            
                                            eindresultaat[56],                                            
                                            eindresultaat[66],                                            
                                            eindresultaat[76],                                            
                                            eindresultaat[86],                                            
                                            eindresultaat[96])),0)
  eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
  #
  #                           GEDRAG
  #                           ------
startpos <- 140
  eindresultaat[startpos] <- round(mean(c(eindresultaat[7],                                            
                                          eindresultaat[17],                                            
                                          eindresultaat[27],                                            
                                          eindresultaat[37],                                            
                                          eindresultaat[47],                                            
                                          eindresultaat[57],                                            
                                          eindresultaat[67],                                            
                                          eindresultaat[77],                                            
                                          eindresultaat[87],
                                          eindresultaat[97])),0)
  eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[8],                                            
                                            eindresultaat[18],                                            
                                            eindresultaat[28],                                            
                                            eindresultaat[38],                                            
                                            eindresultaat[48],                                            
                                            eindresultaat[58],                                            
                                            eindresultaat[68],                                            
                                            eindresultaat[78],                                            
                                            eindresultaat[88],                                            
                                            eindresultaat[98])),0)
  eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
  #
  #                           EFFECT
  #                           -------
startpos <- 143
  eindresultaat[startpos] <- round(mean(c(eindresultaat[9],                                            
                                          eindresultaat[19],                                            
                                          eindresultaat[29],                                            
                                          eindresultaat[39],                                            
                                          eindresultaat[49],                                            
                                          eindresultaat[59],                                            
                                          eindresultaat[69],                                            
                                          eindresultaat[79],                                            
                                          eindresultaat[89],
                                          eindresultaat[99])),0)
  eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[10],                                            
                                            eindresultaat[20],                                            
                                            eindresultaat[30],                                            
                                            eindresultaat[40],                                            
                                            eindresultaat[50],                                            
                                            eindresultaat[60],                                            
                                            eindresultaat[70],                                            
                                            eindresultaat[80],                                            
                                            eindresultaat[90],                                            
                                            eindresultaat[100])),0)
  eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
#####################################################################################################
# BEREKENING KRITIEKE FACTOREN
#####################################################################################################  
  # 
  # startpos staat nu op 146 en is de eerste volgende positie in de matrix om te vullen
  #
  # BREKENING KRITIEKE transformatiefactoren in positie 146,147 en 148
  #
  startpos <- 146
  eindresultaat[startpos] <- round(mean(c(eindresultaat[1],                                            
                                          eindresultaat[19],                                            
                                          eindresultaat[41],                                            
                                          eindresultaat[43],                                
                                          eindresultaat[63])),0)
  eindresultaat[startpos+1] <- 100-round(mean(c(eindresultaat[4],                                            
                                            eindresultaat[14],                                            
                                            eindresultaat[20],                                            
                                            eindresultaat[78],                                            
                                            eindresultaat[94])),0)
  eindresultaat[startpos+2] <- round(((100-eindresultaat[startpos])+eindresultaat[startpos+1])/2,0)
  #
  # startpos staat nu op 149
  #
  # BEREKENING KRITIEKE vitaliteisfactoren ; LET OP ALLEEN EEN mate van vitaliteit en kans op uitval 
  #
  startpos <- 149
  eindresultaat[startpos] <- round(mean(c(eindresultaat[18],                                            
                                          eindresultaat[38],                                            
                                          eindresultaat[40],                                            
                                          eindresultaat[48],                                
                                          eindresultaat[50],
                                          eindresultaat[58],                                            
                                          eindresultaat[62],                                            
                                          eindresultaat[76],                                            
                                          eindresultaat[90],                                            
                                          eindresultaat[92])),0)
  eindresultaat[startpos+1] <- round((100-eindresultaat[startpos]),0)
  #
  # startpos staat nu op 151
  #
  # BEREKENING KRITIEKE VERANDERFACTOREN : LET OP ALLEEN een mate van veranderbaarheid
  #
  startpos <- 151
  eindresultaat[startpos] <- round(mean(c(eindresultaat[5],                                            
                                          eindresultaat[11],                                            
                                          eindresultaat[15],                                            
                                          eindresultaat[17],                                
                                          eindresultaat[21],
                                          eindresultaat[25],                                            
                                          eindresultaat[27],                                            
                                          eindresultaat[35],                                            
                                          eindresultaat[45],                                            
                                          eindresultaat[57])),0)
  eindresultaat[startpos+1] <- round((100-eindresultaat[startpos]),0)
  #
  # startpos staat nu op 153
  #
  # BEREKENING KRITIEKE presatiefactoren : L#ET OP ALLEEN EEN mate van resultaatgerichtheid
  #
  startpos <- 153
  eindresultaat[startpos] <- round(mean(c(eindresultaat[39],                                            
                                          eindresultaat[47],                                            
                                          eindresultaat[55],                                            
                                          eindresultaat[59],                                
                                          eindresultaat[61],
                                          eindresultaat[65],                                            
                                          eindresultaat[69],                                            
                                          eindresultaat[73],                                            
                                          eindresultaat[87],                                            
                                          eindresultaat[89])),0)
  eindresultaat[startpos+1] <- round((100-eindresultaat[startpos]),0)
  #
  # startpos staat nu op 155
  #
  # BEREKENING KRITIEKE waarden factoren
  #
  startpos <- 155
  eindresultaat[startpos] <- round(mean(c(eindresultaat[3],                                            
                                          eindresultaat[7],                                            
                                          eindresultaat[9],                                            
                                          eindresultaat[13],                                
                                          eindresultaat[23],
                                          eindresultaat[53],                                            
                                          eindresultaat[79],                                            
                                          eindresultaat[81],                                            
                                          eindresultaat[97],                                            
                                          eindresultaat[99])),0)
  eindresultaat[startpos+1] <- round((100-eindresultaat[startpos]),0)
  #
  # startpos staat nu op 157 als de eerste vrije plaats
  #
  # nu de matrix met de antwoorden klaar is kunnen we deze wegschrijven naar de juiste file.
  # zodat we naar het volgende record toe kunnen gaan.
  # De file staat in de variable bestand
  #
  write.table(eindresultaat,bestand)
  write.table(eindresultaat2,bestand2)
  #
  #
  # Status moet ergens bijgewerkt worden zodat we tijdens 
  # het proces rapporten maken weten voor welke respondent tokens tokens we
  # dit moeten doen.
  # logica 
  # controleer of bestand dirgraph+attibute_3 ( 20) en dirgraph+attribute4 (21) bestaan 
  # als dat zo is dan kunnen we een gereedmelding doen
  # Filenames om te checken
  #
  f0 <- paste(tokenset[i,23],tokenset[i,7],'.data',sep="")
  f1 <- paste(tokenset[i,23],tokenset[i,20],'.data',sep="")
  f2 <- paste(tokenset[i,23],tokenset[i,21],'.data',sep="")
  f3 <- paste(tokenset[i,23],tokenset[i,25],'.data',sep="")
  f4 <- paste(tokenset[i,23],tokenset[i,26],'.data',sep="")
  #
  # BEPAAL WELKE RAPPORTen GEMAAKT MOET WORDEN op basis van 1 t/m 4 feedbackgevers 
  # De verschillende rapporten gebruiken dezelfde grafieken en resulaten. Dus altijd
  # verkort 1 V1 als eerste in de rij uitvoeren zodat bij de volgende rapporten het maken van deze grafieken
  # niet meer nodig is.
  #
  if(tokenset[i,24]=='0')
  {
    if(file.exists(f0))
    {
      if(tokenset[i,18]=='r')
      { 
        gereed <- tokenset[i,7]
        dirtoken <- gereed
        folder <- paste(dirgraph,dirtoken,'/',sep="")
        setwd(folder)
        sweavefile <- paste(functie_map,"po0_pf-v1-00.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po0_pf-v2-00.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po0_pf-00.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po0_po-00.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po0_pfo-00.Rnw",sep="")
        Sweave(sweavefile)
      }
    }
  } else
  {
    if(tokenset[i,24]=='2'){
    if(file.exists(f1)){
      if(file.exists(f2)) {
        if(tokenset[i,18]=='r'){ gereed <- tokenset[i,7] } else { gereed <- tokenset[i,20] }
        dirtoken <- gereed
        folder <- paste(dirgraph,dirtoken,'/',sep="")
        setwd(folder)
        sweavefile <- paste(functie_map,"po2_pf-v1-02.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po2_pf-v2-02.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po2_pf-02.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po2_po-02.Rnw",sep="")
        Sweave(sweavefile)
        sweavefile <- paste(functie_map,"po2_pfo-02.Rnw",sep="")
        Sweave(sweavefile)}}} else 
        {
         if(tokenset[i,24]=='1'){ 
          if(file.exists(f1)){
            if(tokenset[i,18]=='r'){ gereed <- tokenset[i,7]} else { gereed <- tokenset[i,20]}
          dirtoken <- gereed
          folder <- paste(dirgraph,dirtoken,'/',sep="")
          setwd(folder)
            sweavefile <- paste(functie_map,"po1_pf-v1-01.Rnw",sep="")
            Sweave(sweavefile)
            sweavefile <- paste(functie_map,"po1_pf-v2-01.Rnw",sep="")
            Sweave(sweavefile)
            sweavefile <- paste(functie_map,"po1_pf-01.Rnw",sep="")
            Sweave(sweavefile)
            sweavefile <- paste(functie_map,"po1_po-01.Rnw",sep="")
            Sweave(sweavefile)
          sweavefile <- paste(functie_map,"po1_pfo-01.Rnw",sep="")
          Sweave(sweavefile)}} else 
           {
             if(tokenset[i,24]=='3'){
              if(file.exists(f1)){
                if(file.exists(f2)){
                  if(file.exists(f3)) {
                    if(tokenset[i,18]=='r') {gereed <- tokenset[i,7]} else { gereed <- tokenset[i,20]}
                  dirtoken <- gereed
                  folder <- paste(dirgraph,dirtoken,'/',sep="")
                  setwd(folder)
                    sweavefile <- paste(functie_map,"po3_pf-v1-03.Rnw",sep="")
                    Sweave(sweavefile)
                    sweavefile <- paste(functie_map,"po3_pf-v2-03.Rnw",sep="")
                    Sweave(sweavefile)
                    sweavefile <- paste(functie_map,"po3_pf-03.Rnw",sep="")
                    Sweave(sweavefile)
                    sweavefile <- paste(functie_map,"po3_po-03.Rnw",sep="")
                    Sweave(sweavefile)
                  sweavefile <- paste(functie_map,"po3_pfo-03.Rnw",sep="")
                  Sweave(sweavefile)}}}} else 
             {
               if(tokenset[i,24]=='4'){
                if(file.exists(f1)){
                  if(file.exists(f2)){
                    if(file.exists(f3)) {
                      if(file.exists(f4)) {
                        if(tokenset[i,18]=='r') {gereed <- tokenset[i,7]} else { gereed <- tokenset[i,20]}
                      dirtoken <- gereed
                      folder <- paste(dirgraph,dirtoken,'/',sep="")
                      setwd(folder)
                        sweavefile <- paste(functie_map,"po4_pf-v1-04.Rnw",sep="")
                        Sweave(sweavefile)
                        sweavefile <- paste(functie_map,"po4_pf-v2-04.Rnw",sep="")
                        Sweave(sweavefile)
                        sweavefile <- paste(functie_map,"po4_pf-04.Rnw",sep="")
                        Sweave(sweavefile)
                        sweavefile <- paste(functie_map,"po4_po-04.Rnw",sep="")
                        Sweave(sweavefile)
                      sweavefile <- paste(functie_map,"po4_pfo-04.Rnw",sep="")
                      Sweave(sweavefile)}}}}}
             }
            }
          }
# 
  }
}
# bijwerken historie database LET AANPASSEN ALS IN PRODUKTIE GAAN !!!!!!!!!!
# schrijf alle verwerkte resultaten naar de historie database
#
dbWriteTable(surveydb,tokentable_historie,tokenset,row.names=FALSE,append=TRUE)
#########################
# Database sluiten      #
#########################
dbDisconnect(surveydb)
dbUnloadDriver(driver)
