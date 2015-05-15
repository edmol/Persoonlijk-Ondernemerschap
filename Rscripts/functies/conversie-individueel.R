require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
con_arcovida<- dbConnect(MySQL(), user="root", password="mvhcmdhjh82",dbname="arcovida-nl", host="localhost")
#
# TABEL DEFINITIES
#
new_tokens_db <- "lime_tokens_714972"
new_survey_db <- "lime_survey_714972"
#
respondent_tokens <- "lime_tokens_10001"
feedback_tokens <- "lime_tokens_10002"
#
respondent_answers <- "lime_survey_10001"
feedback_answers <- "lime_survey_10002"
#
connect_fb_resp <- "vizpo_respondent_feedback"
connect_persoon_resp <- "vizpo_persoon_respondent"
connect_personen <- "vizpo_personen"
connect_bedrijven <- "vizpo_bedrijven"
#
# INLEZEN TOKEN RECORDS FEEDBACKGEVERS EN RESPONDENTEN
#
# Stap 1 : inlezen van de tabel respondent_tokens - deze bevat onder andere het unieke token
#
query <- paste('select * from ',respondent_tokens,' where token!="" and completed != "N"',sep="")
respondent_records = dbGetQuery(con_arcovida,statement=query)
#
query <- paste('select * from ',feedback_tokens,' where token!=""',sep="")
feedback_records = dbGetQuery(con_arcovida,statement=query)
#
# positie 1 : tid
# positie 2 : firstname
# positie 3 : lastname
# positie 4 : email
# positie 5 : emailstatus
# positie 6 : token
# positie 7 : language
# positie 8 : sent  
# positie 9 : remindersent
# positie 10 : remindercount
# positie 11 : completed
# positie 12 : attribute_1
# positie 13 : attribute_2  
# positie 14 : mpid
#
query <- paste('select * from ',respondent_answers,' where token!=""',sep="")
respondent_antwoorden = dbGetQuery(con_arcovida,statement=query)
#
query <- paste('select * from ',feedback_answers,' where token!="" and submitdate!=""',sep="")
feedback_antwoorden = dbGetQuery(con_arcovida,statement=query)
#
# positie 1 : id 
# positie 2 : submitdate
# positie 3 : startlanguage
# positie 4 : token
# positie 5 : datestamp
# positie 6 : startdate
# positie 7 t/m 106 : 100 antwoorden op stellingen
#
query <- paste('select * from ',connect_personen,sep="")
personen = dbGetQuery(con_arcovida,statement=query)
#
query <- paste('select * from ',connect_bedrijven,sep="")
bedrijven = dbGetQuery(con_arcovida,statement=query)
#
# dummy token en survey record ophalen
#
query <- paste('select * from ',new_tokens_db,' LIMIT 1',sep="")
dummy_token_rec = dbGetQuery(con_arcovida,statement=query)
#
# positie 1 : tid
# positie 2 : participant_id
# positie 3 : firstname
# positie 4 : lastname
# positie 5 : email
# positie 6 : emailstatus
# positie 7 : token
# positie 8 : language
# positie 9 : blacklisted
# positie 10 : sent  
# positie 11 : remindersent
# positie 12 : remindercount
# positie 13 : completed
# positie 14 : usesleft
# positie 15 : validfrom
# positie 16 : validuntil  
# positie 17 : mpid
# positie 18 : attribute_1
# positie 19 : attribute_2  
# positie 20 : attribute_3
# positie 21 : attribute_4
# positie 22 : attribute_5
# positie 23 : attribute_6
# positie 24 : attribute_7
#
query <- paste('select * from ',new_survey_db,' LIMIT 1',sep="")
dummy_survey_rec = dbGetQuery(con_arcovida,statement=query)
#
# positie 1 : id
# positie 2 : token
# positie 3 : submitdate
# positie 4 : lastpage
# positie 5 : startlanguage
# positie 6 : startdate
# positie 7 : datestamp
# positie 8 : ipaddr
# positie 9 t/m 108 : 100 antwoorden op stellingen
################################################################################################
#
aantal_conversie <- nrow(respondent_records)

  foutmelding <- 0
  #
  # definieer dummy records voor 
  # resp_token_rec
  # resp_survey_rec
  #
  # feedb01_token_rec
  # feedb01_survey_rec
  #
  # feedb02_token_rec
  # feedb02_survey_rec
  #
  # feedb03_token_rec
  # feedb03_survey_rec
  #
  # feedb04_token_rec
  # feedb04_survey_rec
  #
  resp_token_rec <- dummy_token_rec
  resp_survey_rec <- dummy_survey_rec
  #
  feedb01_token_rec <- dummy_token_rec
  feedb01_survey_rec <- dummy_survey_rec
  #
  feedb02_token_rec <- dummy_token_rec
  feedb02_survey_rec <- dummy_survey_rec
  # 
  feedb03_token_rec <- dummy_token_rec
  feedb03_survey_rec <- dummy_survey_rec
  # 
  feedb04_token_rec <- dummy_token_rec
  feedb04_survey_rec <- dummy_survey_rec
  # 
  # verzamel alle data van de respondent
  #
  recordid_van_respondent <- respondent_records[record,1]
  token_van_respondent    <- respondent_records[record,6]
  #
  # CHECK OF VOOR RESPONDENT ANTWOORDEN AANWEZIG ZIJN OP BASIS VAN HET TOKEN, ZONIET DAN NAAR VOLGENDE RECORD
  #
  pos_resp_antwoorden <- which(respondent_antwoorden[,4]==respondent_records[record,6])
  #
  # ALLEEN DOORGAAN ALS ER EEN POSITIE GEVONDEN IS ONGELIJK AAN 0
  #
  if(length(pos_resp_antwoorden)==0)
  {
    print("er zijn geen antwoorden voor de respondent aanwezig.")
    foutmelding <- 1
  }
  if(length(pos_resp_antwoorden)!=0)
  {
    print("er zijn antwoorden voor respondent gevonden")
    resp_antwoorden_data <- respondent_antwoorden[pos_resp_antwoorden,]
    if(is.na(resp_antwoorden_data[1,2]))
    {
      print("antwoorden zijn corrupt of niet volledig")
      foutmelding <- 1
    }
    if(!is.na(resp_antwoorden_data[1,2]))
    {
      #
      # Antwoord conversie 
      # 1 = altijd
      # 2 = meestal
      # 3 = soms
      # 4 = incidenteel
      # 5 = nooit
      print("nu conversie van de antwoorden")
      for(r in 1 : 100)
      {
        if(resp_antwoorden_data[1,r+6]==1) {resp_survey_rec[1,r+8] <- 'a'}
        if(resp_antwoorden_data[1,r+6]==2) {resp_survey_rec[1,r+8] <- 'm'}
        if(resp_antwoorden_data[1,r+6]==3) {resp_survey_rec[1,r+8] <- 's'}
        if(resp_antwoorden_data[1,r+6]==4) {resp_survey_rec[1,r+8] <- 'i'}
        if(resp_antwoorden_data[1,r+6]==5) {resp_survey_rec[1,r+8] <- 'n'}
      }
      #############################################################################
      # MAAK NIEUW RESPONDENT RECORD OP BASIS VAN OA GEGEVENS UIT OUDE RECORD
      # Bepaal nu positie van persoon in personentabel - 
      # Haal de organisatie naam op op basis van persoon_bedrijf
      # en update voornaam - achternaam - geslacht - e-mail adres in token record
      ##############################################################################
      print(" nu persoonsgegevens zoeken")
      pos_persoon <- which(personen[,2]==respondent_records[record,2] & personen[,3]==respondent_records[record,3])
      if(length(pos_persoon)==0) {print("er is geen persoonrecord gevonden. Default waarden.")}
      #
      # ALS ER MEER DEZELFDE PERSONEN IN DE DB STAAN DAN DE EERSTE NEMEN
      #
      pos_persoon <- pos_persoon[1]
      #
      naw_data_respondent <- personen[pos_persoon,]
      # positie 1 : persoon_id
      # positie 2 : persoon_voornaam
      # positie 3 : persoon_acternaam
      # positie 4 : persoon_actief
      # positie 5 : persoon_email
      # positie 6 : persoon_bedrijf
      # positie 7 : persoon_geslacht
      # positie 8 : persoon_functie 
      #
      resp_token_rec[1,1] <- respondent_records[record,1]
      if(length(pos_persoon)==0)
      {
        resp_token_rec[1,2] <- ""
        resp_token_rec[1,3] <- "voornaam"
        resp_token_rec[1,4] <- "achternaam"
        resp_token_rec[1,5] <- ""
        resp_token_rec[1,6] <- ""
        resp_token_rec[1,22] <- "m"
      } else
      {
      resp_token_rec[1,2] <- bedrijven[which(bedrijven[,1]==naw_data_respondent[,6]),2]
      resp_token_rec[1,3] <- naw_data_respondent[2]
      resp_token_rec[1,4] <- naw_data_respondent[3]
      resp_token_rec[1,5] <- naw_data_respondent[5]
      resp_token_rec[1,6] <- respondent_records[record,5]
      resp_token_rec[1,22]<- tolower(naw_data_respondent[7])
      }
      #
      # nieuwe token maken
      #
      name_for_token <- gsub("-","",resp_token_rec[1,3])
      name_for_token <- gsub("*","",name_for_token)
      name_for_token <- gsub("+","",name_for_token)
      name_for_token <- gsub("/","",name_for_token)
      name_for_token <- gsub(" ","",name_for_token)
      time_for_token <- format(Sys.time(),"%Y%m%d%H%M%S")
      #
      resp_token_rec[1,7] <- paste(name_for_token,"1",time_for_token,sep="")
      #
      resp_token_rec[1,8] <- respondent_records[record,7]
      resp_token_rec[1,9] <- ""
      resp_token_rec[1,10] <- respondent_records[record,8]
      resp_token_rec[1,11] <- respondent_records[record,9]
      resp_token_rec[1,12] <- respondent_records[record,10]
      resp_token_rec[1,13] <- respondent_records[record,11]
      resp_token_rec[1,14] <- ''
      resp_token_rec[1,15] <- ''
      resp_token_rec[1,16] <- ''
      resp_token_rec[1,17] <- respondent_records[record,14]
      resp_token_rec[1,18] <- 'r'
      resp_token_rec[1,19] <- resp_token_rec[1,3]
      #
      # attribute_5 van het token record bevat het geslacht van de respondent
      #    
      #
      # nieuwe token van deze respondent is voornaam gestript van alle special characters en spaties
      # Data lokatie voor de bestanden
      #
      resp_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
      #
      # ophalen van de gegevens van de feedbackgevers
      #
      query <- paste('select * from ',connect_fb_resp,' where rid=',respondent_records[record,1],sep="")
      zoek_feedb_data = dbGetQuery(con_arcovida,statement=query)
      #
      # positie 1 : rid
      # positie 2 : vid
      # positie 3 : persoonid
      # positie 4 : token
      #
      aantal_fbs <- nrow(zoek_feedb_data)
      if(aantal_fbs > 1) {resp_token_rec[1,24] <- aantal_fbs}
      if(aantal_fbs >=1) {resp_token_rec[1,20] <- paste(name_for_token,"2",time_for_token,sep="")}
      if(aantal_fbs >=2) {resp_token_rec[1,21] <- paste(name_for_token,"3",time_for_token,sep="")}
      if(aantal_fbs >=3) {resp_token_rec[1,25] <- paste(name_for_token,"4",time_for_token,sep="")}
      if(aantal_fbs >=4) {resp_token_rec[1,26] <- paste(name_for_token,"5",time_for_token,sep="")}
      #
      #
      # NU SURVEY RECORD VOOR RESPONDENT AANMAKEN
      #
      resp_survey_rec[1,1] <- resp_antwoorden_data[1,1]
      resp_survey_rec[1,2] <- resp_token_rec[1,7]
      resp_survey_rec[1,3] <- resp_antwoorden_data[1,2]
      resp_survey_rec[1,4] <- 108
      resp_survey_rec[1,5] <- resp_antwoorden_data[1,3]
      resp_survey_rec[1,6] <- resp_antwoorden_data[1,6]
      resp_survey_rec[1,7] <- resp_antwoorden_data[1,5]
      resp_survey_rec[1,8] <- '127.0.0.1'
      
      # INHOUD VAN zoek_feedb_data
      # positie 1 : rid
      # positie 2 : vid
      # positie 3 : persoonid
      # positie 4 : token
      #
      for(i in 1:aantal_fbs)
      {
        ############################################
        # Haal feedback gever token recorddata op  #
        ############################################
        #
        pos_fb_token <- which(feedback_records[,6]==zoek_feedb_data[i,4])
        if(length(pos_fb_token)==0) 
        { 
          print("geen token record voor feedbackgever gevonden")
          foutmelding <- 1
        } 
        if(length(pos_fb_token)!=0) { fb_token_data <- feedback_records[pos_fb_token,]}
        #############################################
        # Haal feebback survey data op              #
        #############################################
        #
        pos_fb_antwoorden <- which(feedback_antwoorden[,4]==zoek_feedb_data[i,4])
        if(length(pos_fb_antwoorden)==0)
        { 
          print("geen survey data voor feedbackgever gevonden")
          foutmelding <- 1
        }
        if(length(pos_fb_antwoorden)!=0 && foutmelding==0)
        {
          fb_antwoorden_data <- feedback_antwoorden[pos_fb_antwoorden,]
          if(i==1)
          {
            # VERWERKING VAN HET EERSTE FEEDBACK RECORD
            #
            for(r in 1 : 100)
            {
              if(fb_antwoorden_data[1,r+6]==1) {feedb01_survey_rec[1,r+8] <- 'a'}
              if(fb_antwoorden_data[1,r+6]==2) {feedb01_survey_rec[1,r+8] <- 'm'}
              if(fb_antwoorden_data[1,r+6]==3) {feedb01_survey_rec[1,r+8] <- 's'}
              if(fb_antwoorden_data[1,r+6]==4) {feedb01_survey_rec[1,r+8] <- 'i'}
              if(fb_antwoorden_data[1,r+6]==5) {feedb01_survey_rec[1,r+8] <- 'n'}
            }
            # einde for statement antwoorden conversie
            pos_fb_persoon <- which(personen[,1]==zoek_feedb_data[i,3])
            if(length(pos_fb_persoon)==0)
            {
              print("geen persoongegevens voor feedbackgever gevonden")
              feedb01_token_rec[1,2] <- ""
            } else
            {
              naw_data_feedbackgever <- personen[pos_fb_persoon,] 
              posbedrijf <- which(bedrijven[,1]==naw_data_respondent[,6])
              if(length(posbedrijf)==0)
              {
               feedb01_token_rec[1,2] <- "" 
              } else
              {
                feedb01_token_rec[1,2] <- bedrijven[posbedrijf,2]
              }
            }
            feedb01_token_rec[1,1] <- fb_token_data[1]
            feedb01_token_rec[1,3] <- fb_token_data[2]
            feedb01_token_rec[1,4] <- fb_token_data[3]
            feedb01_token_rec[1,5] <- fb_token_data[4]
            feedb01_token_rec[1,6] <- respondent_records[record,5]
            feedb01_token_rec[1,7] <- resp_token_rec[1,20]
            feedb01_token_rec[1,8] <- fb_token_data[7]
            feedb01_token_rec[1,9] <- ""
            feedb01_token_rec[1,10] <- fb_token_data[8]
            feedb01_token_rec[1,11] <- fb_token_data[9]
            feedb01_token_rec[1,12] <- fb_token_data[10]
            feedb01_token_rec[1,13] <- fb_token_data[11]
            feedb01_token_rec[1,14] <- ""
            feedb01_token_rec[1,15] <- ""
            feedb01_token_rec[1,16] <- ""
            feedb01_token_rec[1,17] <- fb_token_data[14]
            feedb01_token_rec[1,18] <- "f"
            feedb01_token_rec[1,19] <- resp_token_rec[1,3]
            feedb01_token_rec[1,22] <- resp_token_rec[1,22]
            feedb01_token_rec[1,23] <- resp_token_rec[1,23]
            if(aantal_fbs >= 1) { feedb01_token_rec[1,20] <- resp_token_rec[1,7]}
            if(aantal_fbs >= 2) { feedb01_token_rec[1,21] <- resp_token_rec[1,21]}
            if(aantal_fbs >= 3) { feedb01_token_rec[1,25] <- resp_token_rec[1,25]}
            if(aantal_fbs >= 4) { feedb01_token_rec[1,26] <- resp_token_rec[1,26]}
            #
            # NU SURVEY RECORD VAN DEZE FEEDBACKGEVER MAKEN
            #
            feedb01_survey_rec[1,1] <- fb_antwoorden_data[1,1]
            feedb01_survey_rec[1,2] <- feedb01_token_rec[1,7]
            feedb01_survey_rec[1,3] <- fb_antwoorden_data[1,2]
            feedb01_survey_rec[1,4] <- 108
            feedb01_survey_rec[1,5] <- fb_antwoorden_data[1,3]
            feedb01_survey_rec[1,6] <- fb_antwoorden_data[1,6]
            feedb01_survey_rec[1,7] <- fb_antwoorden_data[1,5]
            feedb01_survey_rec[1,8] <- "127.0.0.1"
          }
          # einde statement if i == 1
          if(i==2)
          {
            # VERWERKING VAN HET EERSTE FEEDBACK RECORD
            #
            for(r in 1 : 100)
            {
              if(fb_antwoorden_data[1,r+6]==1) {feedb02_survey_rec[1,r+8] <- 'a'}
              if(fb_antwoorden_data[1,r+6]==2) {feedb02_survey_rec[1,r+8] <- 'm'}
              if(fb_antwoorden_data[1,r+6]==3) {feedb02_survey_rec[1,r+8] <- 's'}
              if(fb_antwoorden_data[1,r+6]==4) {feedb02_survey_rec[1,r+8] <- 'i'}
              if(fb_antwoorden_data[1,r+6]==5) {feedb02_survey_rec[1,r+8] <- 'n'}
            }
            pos_fb_persoon <- which(personen[,1]==zoek_feedb_data[i,3])
            if(length(pos_fb_persoon)==0)
            {
              print("geen persoongegevens voor feedbackgever gevonden")
              feedb02_token_rec[1,2] <- ""
            } else
            {
              naw_data_feedbackgever <- personen[pos_fb_persoon,] 
              posbedrijf <- which(bedrijven[,1]==naw_data_respondent[,6])
              if(length(posbedrijf)==0)
              {
                feedb02_token_rec[1,2] <- "" 
              } else
              {
                feedb02_token_rec[1,2] <- bedrijven[posbedrijf,2]
              }
            }
            feedb02_token_rec[1,1] <- fb_token_data[1]
            feedb02_token_rec[1,3] <- fb_token_data[2]
            feedb02_token_rec[1,4] <- fb_token_data[3]
            feedb02_token_rec[1,5] <- fb_token_data[4]
            feedb02_token_rec[1,6] <- respondent_records[record,5]
            feedb02_token_rec[1,7] <- resp_token_rec[1,20]
            feedb02_token_rec[1,8] <- fb_token_data[7]
            feedb02_token_rec[1,9] <- ""
            feedb02_token_rec[1,10] <- fb_token_data[8]
            feedb02_token_rec[1,11] <- fb_token_data[9]
            feedb02_token_rec[1,12] <- fb_token_data[10]
            feedb02_token_rec[1,13] <- fb_token_data[11]
            feedb02_token_rec[1,14] <- ""
            feedb02_token_rec[1,15] <- ""
            feedb02_token_rec[1,16] <- ""
            feedb02_token_rec[1,17] <- fb_token_data[14]
            feedb02_token_rec[1,18] <- "f"
            feedb02_token_rec[1,19] <- resp_token_rec[1,3]
            feedb02_token_rec[1,22] <- resp_token_rec[1,22]
            feedb02_token_rec[1,23] <- resp_token_rec[1,23]
            if(aantal_fbs >= 1) { feedb02_token_rec[1,20] <- resp_token_rec[1,7]}
            if(aantal_fbs >= 2) { feedb02_token_rec[1,21] <- resp_token_rec[1,21]}
            if(aantal_fbs >= 3) { feedb02_token_rec[1,25] <- resp_token_rec[1,25]}
            if(aantal_fbs >= 4) { feedb02_token_rec[1,26] <- resp_token_rec[1,26]}
            #
            # NU SURVEY RECORD VAN DEZE FEEDBACKGEVER MAKEN
            #
            feedb02_survey_rec[1,1] <- fb_antwoorden_data[1,1]
            feedb02_survey_rec[1,2] <- feedb02_token_rec[1,7]
            feedb02_survey_rec[1,3] <- fb_antwoorden_data[1,2]
            feedb02_survey_rec[1,4] <- 108
            feedb02_survey_rec[1,5] <- fb_antwoorden_data[1,3]
            feedb02_survey_rec[1,6] <- fb_antwoorden_data[1,6]
            feedb02_survey_rec[1,7] <- fb_antwoorden_data[1,5]
            feedb02_survey_rec[1,8] <- '127.0.0.1'   
          }
          # einde stement if i == 2
          if(i==3)
          {
            # VERWERKING VAN HET EERSTE FEEDBACK RECORD
            #
            for(r in 1 : 100)
            {
              if(fb_antwoorden_data[1,r+6]==1) {feedb03_survey_rec[1,r+8] <- 'a'}
              if(fb_antwoorden_data[1,r+6]==2) {feedb03_survey_rec[1,r+8] <- 'm'}
              if(fb_antwoorden_data[1,r+6]==3) {feedb03_survey_rec[1,r+8] <- 's'}
              if(fb_antwoorden_data[1,r+6]==4) {feedb03_survey_rec[1,r+8] <- 'i'}
              if(fb_antwoorden_data[1,r+6]==5) {feedb03_survey_rec[1,r+8] <- 'n'}
            }
            # einde for statement antwoorden conversie
            pos_fb_persoon <- which(personen[,1]==zoek_feedb_data[i,3])
            if(length(pos_fb_persoon)==0)
            {
              print("geen persoongegevens voor feedbackgever gevonden")
              feedb03_token_rec[1,2] <- ""
            } else
            {
              naw_data_feedbackgever <- personen[pos_fb_persoon,] 
              posbedrijf <- which(bedrijven[,1]==naw_data_respondent[,6])
              if(length(posbedrijf)==0)
              {
                feedb03_token_rec[1,2] <- "" 
              } else
              {
                feedb03_token_rec[1,2] <- bedrijven[posbedrijf,2]
              }
            }
            feedb03_token_rec[1,1] <- fb_token_data[1]
            feedb03_token_rec[1,3] <- fb_token_data[2]
            feedb03_token_rec[1,4] <- fb_token_data[3]
            feedb03_token_rec[1,5] <- fb_token_data[4]
            feedb03_token_rec[1,6] <- respondent_records[record,5]
            feedb03_token_rec[1,7] <- resp_token_rec[1,20]
            feedb03_token_rec[1,8] <- fb_token_data[7]
            feedb03_token_rec[1,9] <- ""
            feedb03_token_rec[1,10] <- fb_token_data[8]
            feedb03_token_rec[1,11] <- fb_token_data[9]
            feedb03_token_rec[1,12] <- fb_token_data[10]
            feedb03_token_rec[1,13] <- fb_token_data[11]
            feedb03_token_rec[1,14] <- ""
            feedb03_token_rec[1,15] <- ""
            feedb03_token_rec[1,16] <- ""
            feedb03_token_rec[1,17] <- fb_token_data[14]
            feedb03_token_rec[1,18] <- "f"
            feedb03_token_rec[1,19] <- resp_token_rec[1,3]
            feedb03_token_rec[1,22] <- resp_token_rec[1,22]
            feedb03_token_rec[1,23] <- resp_token_rec[1,23]
            if(aantal_fbs >= 1) { feedb03_token_rec[1,20] <- resp_token_rec[1,7]}
            if(aantal_fbs >= 2) { feedb03_token_rec[1,21] <- resp_token_rec[1,21]}
            if(aantal_fbs >= 3) { feedb03_token_rec[1,25] <- resp_token_rec[1,25]}
            if(aantal_fbs >= 4) { feedb03_token_rec[1,26] <- resp_token_rec[1,26]}
            #
            # NU SURVEY RECORD VAN DEZE FEEDBACKGEVER MAKEN
            #
            feedb03_survey_rec[1,1] <- fb_antwoorden_data[1,1]
            feedb03_survey_rec[1,2] <- feedb03_token_rec[1,7]
            feedb03_survey_rec[1,3] <- fb_antwoorden_data[1,2]
            feedb03_survey_rec[1,4] <- 108
            feedb03_survey_rec[1,5] <- fb_antwoorden_data[1,3]
            feedb03_survey_rec[1,6] <- fb_antwoorden_data[1,6]
            feedb03_survey_rec[1,7] <- fb_antwoorden_data[1,5]
            feedb03_survey_rec[1,8] <- '127.0.0.1'
          }
          # einde statement of i == 3
          if(i==4)
          {
            # VERWERKING VAN HET vierde FEEDBACK RECORD
            #
            for(r in 1 : 100)
            {
              if(fb_antwoorden_data[1,r+6]==1) {feedb04_survey_rec[1,r+8] <- 'a'}
              if(fb_antwoorden_data[1,r+6]==2) {feedb04_survey_rec[1,r+8] <- 'm'}
              if(fb_antwoorden_data[1,r+6]==3) {feedb04_survey_rec[1,r+8] <- 's'}
              if(fb_antwoorden_data[1,r+6]==4) {feedb04_survey_rec[1,r+8] <- 'i'}
              if(fb_antwoorden_data[1,r+6]==5) {feedb04_survey_rec[1,r+8] <- 'n'}
            }
            # einde for statement antwoorden conversie
            pos_fb_persoon <- which(personen[,1]==zoek_feedb_data[i,3])
            if(length(pos_fb_persoon)==0)
            {
              print("geen persoongegevens voor feedbackgever gevonden")
              feedb04_token_rec[1,2] <- ""
            } else
            {
              naw_data_feedbackgever <- personen[pos_fb_persoon,] 
              posbedrijf <- which(bedrijven[,1]==naw_data_respondent[,6])
              if(length(posbedrijf)==0)
              {
                feedb04_token_rec[1,2] <- "" 
              } else
              {
                feedb04_token_rec[1,2] <- bedrijven[posbedrijf,2]
              }
            }
            feedb04_token_rec[1,1] <- fb_token_data[1]
            feedb04_token_rec[1,3] <- fb_token_data[2]
            feedb04_token_rec[1,4] <- fb_token_data[3]
            feedb04_token_rec[1,5] <- fb_token_data[4]
            feedb04_token_rec[1,6] <- respondent_records[record,5]
            feedb04_token_rec[1,7] <- resp_token_rec[1,20]
            feedb04_token_rec[1,8] <- fb_token_data[7]
            feedb04_token_rec[1,9] <- ""
            feedb04_token_rec[1,10] <- fb_token_data[8]
            feedb04_token_rec[1,11] <- fb_token_data[9]
            feedb04_token_rec[1,12] <- fb_token_data[10]
            feedb04_token_rec[1,13] <- fb_token_data[11]
            feedb04_token_rec[1,14] <- ""
            feedb04_token_rec[1,15] <- ""
            feedb04_token_rec[1,16] <- ""
            feedb04_token_rec[1,17] <- fb_token_data[14]
            feedb04_token_rec[1,18] <- "f"
            feedb04_token_rec[1,19] <- resp_token_rec[1,3]
            feedb04_token_rec[1,22] <- resp_token_rec[1,22]
            feedb04_token_rec[1,23] <- resp_token_rec[1,23]
            if(aantal_fbs >= 1) { feedb04_token_rec[1,20] <- resp_token_rec[1,7]}
            if(aantal_fbs >= 2) { feedb04_token_rec[1,21] <- resp_token_rec[1,21]}
            if(aantal_fbs >= 3) { feedb04_token_rec[1,25] <- resp_token_rec[1,25]}
            if(aantal_fbs >= 4) { feedb04_token_rec[1,26] <- resp_token_rec[1,26]}
            #
            # NU SURVEY RECORD VAN DEZE FEEDBACKGEVER MAKEN
            #
            feedb04_survey_rec[1,1] <- fb_antwoorden_data[1,1]
            feedb04_survey_rec[1,2] <- feedb04_token_rec[1,7]
            feedb04_survey_rec[1,3] <- fb_antwoorden_data[1,2]
            feedb04_survey_rec[1,4] <- 108
            feedb04_survey_rec[1,5] <- fb_antwoorden_data[1,3]
            feedb04_survey_rec[1,6] <- fb_antwoorden_data[1,6]
            feedb04_survey_rec[1,7] <- fb_antwoorden_data[1,5]
            feedb04_survey_rec[1,8] <- '127.0.0.1'     
          }
          # einde statement if i == 4
        }
        # einde geen survey data voor respondent gevonden
      }
      # einde statement aantal feedbackgevers 
    }
    # einde submitdate NA
  }
  if(foutmelding==0)
  {
    # Respondent token record nu klaar en wegschrijven naar data base
    ###################################################################################
    resp_token_rec[1,24] <- aantal_fbs
    dbWriteTable(con_arcovida,new_tokens_db,resp_token_rec,row.names=FALSE,append=TRUE)
    dbWriteTable(con_arcovida,new_survey_db,resp_survey_rec,row.names=FALSE,append=TRUE)
    print("Token en survey record voor respondent record aangemaakt")
    ###################################################################################
    if(aantal_fbs >= 1)
    {
    feedb01_token_rec[1,24] <- aantal_fbs
    dbWriteTable(con_arcovida,new_tokens_db,feedb01_token_rec,row.names=FALSE,append=TRUE)
    dbWriteTable(con_arcovida,new_survey_db,feedb01_survey_rec,row.names=FALSE,append=TRUE)
    print("token en survey record voor eerste feedbackgever geschreven")
    }
    ######################################################################################
    if(aantal_fbs >= 2)
    {
    feedb02_token_rec[1,24] <- aantal_fbs
    dbWriteTable(con_arcovida,new_tokens_db,feedb02_token_rec,row.names=FALSE,append=TRUE)
    dbWriteTable(con_arcovida,new_survey_db,feedb02_survey_rec,row.names=FALSE,append=TRUE)
    print("token en survey record voor tweede feedbackgever geschreven")
    }
    ######################################################################################
    if(aantal_fbs >= 3)
    {
    feedb03_token_rec[1,24] <- aantal_fbs
    dbWriteTable(con_arcovida,new_tokens_db,feedb03_token_rec,row.names=FALSE,append=TRUE)
    dbWriteTable(con_arcovida,new_survey_db,feedb03_survey_rec,row.names=FALSE,append=TRUE)
    print("token en survey record voor derde feedbackgever geschreven")
    }
    ######################################################################################
    if(aantal_fbs >= 4)
    {
    feedb04_token_rec[1,24] <- aantal_fbs
    dbWriteTable(con_arcovida,new_tokens_db,feedb04_token_rec,row.names=FALSE,append=TRUE)
    dbWriteTable(con_arcovida,new_survey_db,feedb04_survey_rec,row.names=FALSE,append=TRUE)
    print("token en survey record voor vierde feedbackgever geschreven")
    }
    ######################################################################################
  }
dbDisconnect(con_arcovida)