# input noodzakelijk   : op basis van teamrecord de gegevens ophalen
#
# teamspiegeltabel 
fac_table <- 'facilitators'
#
# adv_record[1] = teamID
# adv_record[2] = organisatie waarvoor het teamrapport aangevraagd wordt
# adv_record[3] t/m adv_record[10] = token van teamlid 1 t/m teamlid 8
# adv_record[11] = directory waarin alle rapport informatie staat opgeslagen
# adv_record[12] = id van de team facilitator voor dit team 
# 
#
		p1  <- updates[rapport,6]
		p12 <- updates[rapport,7]
        p13 <- updates[rapport,8]
        p131 <- updates[rapport,9]
        p24 <- updates[rapport,10]
        p41 <- updates[rapport,11]
        p42 <- updates[rapport,12]
        p43 <- updates[rapport,13]
        p44 <- updates[rapport,14]
        p45 <- updates[rapport,15]
        p46 <- updates[rapport,16]
        p47 <- updates[rapport,17]
        p48 <- updates[rapport,18]
        p49 <- updates[rapport,19]
        p410 <- updates[rapport,20]
        p51 <- updates[rapport,21]
        p52 <- updates[rapport,22]
        p53 <- updates[rapport,23]
        p54 <- updates[rapport,24]
        p55 <- updates[rapport,25]
        p61 <- updates[rapport,26]
        p62 <- updates[rapport,27]
        p63 <- updates[rapport,28]
        p64 <- updates[rapport,28]
        p65 <- updates[rapport,30]
        p71 <- adv_record[31]
        p72 <- adv_record[32]
        p73 <- adv_record[33]
        p74 <- adv_record[34]
        p75 <- adv_record[35]
        p76 <- adv_record[36]
        p81 <- adv_record[37]
  #
  # Nu gegevens van de facilitator ophalen
  #
  fac_record = dbGetQuery(teamspiegels,statement=paste('select * from ',fac_table,' where fac_id=', "'",updates[rapport,5],"'", sep=""))
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

