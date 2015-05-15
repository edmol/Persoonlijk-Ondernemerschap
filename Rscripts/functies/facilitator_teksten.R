#
# 
# extra functionaliteit ingebouwd om facilitator data dynamisch te maken voor
# de rapportage
#
# Stap 1  : op basis van dirtoken de gewenste gegevens op halen
#
#
adv_table <- 'advies'
fac_table <- 'facilitators'
token_table <- 'lime_tokens_714972'
#
adv_record = dbGetQuery(surveydb,statement=paste('select * from ',adv_table,' where advies_kandidaat=',"'",dirtoken,"'", sep=""))
#
tok_record = dbGetQuery(surveydb,statement=paste('select * from ',token_table,' where token=', "'",dirtoken,"'", sep=""))
#
fac_voornaam <- ''
fac_achternaam <- ''
fac_email <- ''
fac_telefoon <- ''
#
if (nrow(tok_record) != 1)
{
  organisatie <- ''
} else
{
  organisatie <- tok_record[2]
  bid_record <- dbGetQuery(surveydb,statement=paste('select * from organisaties where bid=',"'",tok_record[27],"'", sep=""))
  organisatie <-  gsub("[^0-9A-Za-z///' ]","",bid_record[1,2])
  
}
# adv_record[2] = id van de facilitator in de medewerkers tabel
# adv_record[3] = token van het rapport
# adv_record[4] = variabele tekst voor het rapport
#
p1  <- ' '
p12 <- ' '
p13 <- ' '
p131 <- ' '
p24 <- ' '
p343 <- ' '
p41 <- ' '
p42 <- ' '
p43 <- ' '
p44 <- ' '
p45 <- ' '
p5 <- ' '
p51 <- ' '
p6 <- ' '
p61 <- ' '
p81 <- ' '
p82 <- ' '
p83 <- ' '
p84 <- ' '
p85 <- ' '
p91 <- ' '
p92 <- ' '
p93 <- ' '
p94 <- ' '
p95 <- ' '
p96 <- ' '
p101 <- ' '
p102 <- ' '
p103 <- ' '
p104 <- ' '
p105 <- ' '
p106 <- ' '
p107 <- ' '
p108 <- ' '
if (nrow(adv_record) != 1)
{
  p1  <- ' '
  p12 <- ' '
  p13 <- ' '
  p131 <- ' '
  p24 <- ' '
  p343 <- ' '
  p41 <- ' '
  p42 <- ' '
  p43 <- ' '
  p44 <- ' '
  p45 <- ' '
  p5 <- ' '
  p51 <- ' '
  p6 <- ' '
  p61 <- ' '
  p81 <- ' '
  p82 <- ' '
  p83 <- ' '
  p84 <- ' '
  p85 <- ' '
  p91 <- ' '
  p92 <- ' '
  p93 <- ' '
  p94 <- ' '
  p95 <- ' '
  p96 <- ' '
  p101 <- ' '
  p102 <- ' '
  p103 <- ' '
  p104 <- ' '
  p105 <- ' '
  p106 <- ' '
  p107 <- ' '
  p108 <- ' '
} else
{
  p1  <- gsub("[^0-9A-Za-z///' ]", "", adv_record[4])
  p12 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[5])
  p13 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[6])
  p131 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[7])
  p24 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[8])
  p343 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[9])
  p41 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[10])
  p42 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[11])
  p43 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[12])
  p44 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[13])
  p45 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[14])
  p5 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[15])
  p51 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[16])
  p6 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[17])
  p61 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[18])
  p81 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[19])
  p82 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[20])
  p83 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[21])
  p84 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[22])
  p85 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[23])
  p91 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[24])
  p92 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[25])
  p93 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[26])
  p94 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[27])
  p95 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[28])
  p96 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[29])
  p101 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[30])
  p102 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[31])
  p103 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[32])
  p104 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[33])
  p105 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[34])
  p106 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[35])
  p107 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[36])
  p108 <- gsub("[^0-9A-Za-z///' ]", "", adv_record[37])
  if (is.na(p1)) {p1 <-''}
  if (is.na(p12)) {p12 <-''}
  if (is.na(p13)) {p13 <-''}
  if (is.na(p131)) {p131 <-''}
  if (is.na(p24)) {p24 <-''}
  if (is.na(p343)) {p343 <-''}
  if (is.na(p41)) {p41 <-''}
  if (is.na(p42)) {p42 <-''}
  if (is.na(p43)) {p43 <-''}
  if (is.na(p44)) {p44 <-''}
  if (is.na(p45)) {p45 <-''}
  if (is.na(p5)) {p5 <-''}
  if (is.na(p51)) {p51 <-''}
  if (is.na(p6)) {p6 <-''}
  if (is.na(p61)) {p61 <-''}
  if (is.na(p81)) {p81 <-''}
  if (is.na(p82)) {p82 <-''}
  if (is.na(p83)) {p83 <-''}
  if (is.na(p84)) {p84 <-''}
  if (is.na(p85)) {p85 <-''}
  if (is.na(p91)) {p91 <-''}
  if (is.na(p92)) {p92 <-''}
  if (is.na(p93)) {p93 <-''}
  if (is.na(p94)) {p94 <-''}
  if (is.na(p95)) {p95 <-''}
  if (is.na(p96)) {p96 <-''}
  if (is.na(p101)) {p101 <-''}
  if (is.na(p102)) {p102 <-''}
  if (is.na(p103)) {p103 <-''}
  if (is.na(p104)) {p104 <-''}
  if (is.na(p105)) {p105 <-''}
  if (is.na(p106)) {p106 <-''}
  #
  # Nu gegevens van de facilitator ophalen
  #
  fac_record = dbGetQuery(surveydb,statement=paste('select * from ',fac_table,' where fac_id=', "'",adv_record[2],"'", sep=""))
  if (nrow(fac_record) != 1 )
  {
    # set default values voor de facilitator hier
    fac_voornaam <- ''
    fac_achternaam <- ''
    fac_email <- ''
    fac_telefoon <- ''
  } else
  {
    fac_voornaam <- fac_record[4]
    fac_achternaam <- fac_record[5]
    fac_email <- fac_record[7]
    fac_telefoon <- fac_record[11]
  }
}