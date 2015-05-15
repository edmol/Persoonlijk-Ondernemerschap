require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
con_4u<-dbConnect(MySQL(), user="root", password="spiegel2013",dbname="potoets", host="localhost")
#
#
delete_token <- function(respondent,feedbackgever)
{
  tokens_db <- "lime_tokens_714972"
  survey_db <- "lime_survey_714972"
  mutatie_db <- "ios_aanvragen"
  token_persoon_db <- "token_persoon"
  # aanroep functie delete_token(respondent, feedbackgever)
  #
  query <- paste("select * from token_persoon where token_respondent='",respondent,"'",sep="")
  update_records  = dbGetQuery(con_4u,query)
  aantal_updates <- nrow(update_records)
  aantal_fb <- toString(aantal_updates-1, width = 1)
  
  if (aantal_fb=='4') aantal_fb <- '3' else if (aantal_fb=='3') aantal_fb <- '2' else if (aantal_fb=='2') aantal_fb <- '1' else aantal_fb <- '0'
  
  for (i in 1 : aantal_updates)
  {
    #
    # zoek op basis van het token in positie 6 het token record uit de survey_db tabel
    #
    query <- paste("select * from lime_tokens_714972 where token='",update_records[i,6],"'",sep="")
    record_data <- dbGetQuery(con_4u,query)
    record_id <- record_data[1,1]
    num_fb <- record_data[1,24]
    #
    # nu op positie 20,21 en 25 en 26 kijken welke overeen komt met feedbackgever als de 7e positie overeen komt dan record verwijderen
    #
    if (record_data[1,7]==feedbackgever)
    {
      query <- paste("DELETE from lime_tokens_714972 where tid=",record_id, sep='')
      delete_record <- dbGetQuery(con_4u,query)
    } else
    {
      if (num_fb == "1" | num_fb == "2" | num_fb == "3" | num_fb == "4")
      {
        if (record_data[1,20]==feedbackgever)
        {
          fb01 <- record_data[1,21]
          fb02 <- record_data[1,25]
          fb03 <- record_data[1,26]
          fb04 <- NA     
        }
      }
      if (num_fb == "2" | num_fb == "3" | num_fb =="4" )
      {
        if (record_data[1,21]==feedbackgever)
        {
          fb01 <- record_data[1,20]
          fb02 <- record_data[1,25]
          fb03 <- record_data[1,26]
          fb04 <- NA      
        } 
      }
      if (num_fb == "3" | num_fb == "4")
      {
        if (record_data[1,25]==feedbackgever)
        {
          fb01 <- record_data[1,20]
          fb02 <- record_data[1,21]
          fb03 <- record_data[1,26]
          fb04 <- NA    
        } 
      }
      if (num_fb == "4")
      {
        if (record_data[1,26]==feedbackgever)
        {
          fb01 <- record_data[1,20]
          fb02 <- record_data[1,21]
          fb03 <- record_data[1,25]
          fb04 <- NA
        }
      }  
      #
      # set attribute_3 op fb01 attribute_4 op fb02, attribute_8 op fb03 en attribute_9 op fb04 en attribute_7 op aantal_fb     
      # 
      query <- paste("UPDATE `lime_tokens_714972` SET  `attribute_3`='",fb01,"',`attribute_4`='",fb02,"',`attribute_7`='",aantal_fb,"',`attribute_8`='",fb03,"',`attribute_9`='",fb04,"'  WHERE tid=",record_id,sep="")
      dbGetQuery(con_4u, query)
    }
    #
    # delete record uit token_persoon waarvan token_persoon_token == feedbackgever
    #
    query <- paste("DELETE from token_persoon where token_persoon_token='",feedbackgever,"'", sep='')
    delete_record <- dbGetQuery(con_4u,query)
    # update status indicator in mutatie record
    # status <- paste(feedbackgever," verwijderd ", sep ='') en datum en tijd
  } 
}
# einde functie
#
#
add_feedback <- function(respondent,persoon)
{
  opdrachtgever <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",mutaties[i,3],sep=""))
  if(nrow(opdrachtgever)==0)
  {
    status_melding <- "opdrachtgever niet gevonden"
    fout <- 1
  } else
  {
    #
    # Hier opdrachtgever gegevens beschikbaar
    #
  } 
  #
  # haal alle data uit de tussen tabel behorende bij de respondent
  #
  query <- paste("select * from lime_tokens_714972 where token='",respondent,"'",sep="")
  resp_token_rec <- dbGetQuery(con_4u,query)
  
  query <- paste("select * from token_persoon where token_respondent='",respondent,"'",sep="")
  origineel_data = dbGetQuery(con_4u,query)
  aantal_fb_origineel <- nrow(origineel_data)
  #
  # respondent token is bekend
  # feedback tokens zijn bekend
  # aantal feedback tokens zijn bekend
  # op basis van de tokens kunnen de record_id in de token tabel gevonden worden
  #
  # Nu token record data voor deze nieuwe feedbackgever aanmaken
  # We gebruiken hiervoor het persoonsnummer
  #
  feedback01 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",persoon,sep=""))
  #
  # Nu dummy token aanmaken
  #
  query <- paste('select * from ',tokens_db,' LIMIT 1',sep="")
  dummy_token_rec = dbGetQuery(con_4u,statement=query)
  maxtokenid <- dbGetQuery(con_4u, "SELECT MAX(tid) FROM lime_tokens_714972")[1,1]
  feedb01_token_rec <- dummy_token_rec
  rm(dummy_token_rec)
  #
  # samenstellen van het token
  #
  datum_voor_token <- format(Sys.time(),"%Y%m%d%H%M%S")
  if (aantal_fb_origineel == 0) volgnummer <- '1' else if(aantal_fb_origineel == 1) volgnummer <- '2' else if(aantal_fb_origineel == 2) volgnummer <- '3' else if(aantal_fb_origineel ==3) volgnummer <- '4' else if(aantal_fb_origineel==4) volgnummer <- '5'
  naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,2])
  naam_voor_token <- gsub(' ' ,"",naam_voor_token)
  #
  feedb01_token_rec[1,7] <- paste(naam_voor_token,volgnummer,datum_voor_token,sep="")
  feedb01_token_rec[1,20] <- resp_token_rec[1,7]
  feedb01_token_rec[1,21] <- resp_token_rec[1,20]
  feedb01_token_rec[1,25] <- resp_token_rec[1,21]
  feedb01_token_rec[1,26] <- resp_token_rec[1,25]
  #
  maxtokenid <- maxtokenid + 1
  feedb01_token_rec[1,1] <- maxtokenid
  feedb01_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
  feedb01_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,2])
  feedb01_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,3])
  feedb01_token_rec[1,5] <- feedback01[1,5]
  feedb01_token_rec[1,6] <- "OK"
  
  feedb01_token_rec[1,8] <- "nl"
  feedb01_token_rec[1,9] <- "N"
  feedb01_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
  feedb01_token_rec[1,11] <- ""
  feedb01_token_rec[1,12] <- 1
  feedb01_token_rec[1,13] <- "N"
  feedb01_token_rec[1,14] <- 1
  feedb01_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
  feedb01_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
  feedb01_token_rec[1,17] <- 0
  feedb01_token_rec[1,18] <- 'f'
  feedb01_token_rec[1,19] <- resp_token_rec[1,3]
  
  feedb01_token_rec[1,22] <- resp_token_rec[1,22]
  feedb01_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
  feedb01_token_rec[1,24] <- volgnummer
  #
  # Token nu klaar om weggeschreven te worden
  #
  resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",feedback01[1,6],sep=""))
  if (nrow(resp_bedrijf) == 0)
  {
    resp_b_naam <- " "
  } else
  {
    resp_b_naam <- resp_bedrijf[1,2]
  }
  #
  query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                 opdrachtgever[1,1],"','",
                 opdrachtgever[1,2],"','",
                 mutaties[i,4],"','",
                 feedb01_token_rec[1,15],"','",
                 feedback01[1,1],"','",
                 feedb01_token_rec[1,7],"','",
                 feedback01[1,2],"','",
                 feedback01[1,3],"','",
                 tolower(feedback01[1,7]),"','",
                 feedback01[1,5],"','",
                 feedback01[1,6],"','",
                 resp_b_naam,"','",
                 feedb01_token_rec[1,18],"','",
                 resp_token_rec[1,7],"')",sep="")
  dbGetQuery(con_4u, query)
  dbWriteTable(con_4u,tokens_db,feedb01_token_rec,row.names=FALSE,append=TRUE)
  #
  # Nu de respondent record en feedbackrecords aanvullen met het nieuwe token
  #
  for (n in 1 : aantal_fb_origineel)
  {
    #
    # zoek record_id
    #
    query <- paste("SELECT * from lime_tokens_714972 where token = '",origineel_data[n,6],"'",sep='')
    record <- dbGetQuery(con_4u, query)
    record_id <- record[1,1]
    #
    # bepaal waar het nieuwe token moet staan
    #
    if (volgnummer==2) attribute <- 'attribute_3'
    if (volgnummer==3) attribute <- 'attribute_4'
    if (volgnummer==4) attribute <- 'attribute_8'
    if (volgnummer==5) attribute <- 'attribute_9'
    query <- paste("UPDATE `lime_tokens_714972` SET `",attribute,"`='",feedb01_token_rec[1,7],"',`attribute_7` ='",volgnummer,"' where tid=",record_id,sep='')
    dbGetQuery(con_4u, query)
  }
  status_melding <- 'FB toegevoegd'
  query <- paste("UPDATE `ios_aanvragen` SET `aanvraag_verwerken`= '","N","',","`aanvraag_status`= '",status_melding,"-",format(Sys.time(),"%d-%m-%Y %H:%M:%S"),"',","`aanvraag_datum`= '",format(Sys.time(),"%Y-%m-%d %H:%M:%S"),"' WHERE aanvraag_id=",mutaties[i,1],sep="")
  dbGetQuery(con_4u, query)   
}
# einde function
######################################
####### Start MAINCODE ###############
######################################
tokens_db <- "lime_tokens_714972"
survey_db <- "lime_survey_714972"
mutatie_db <- "ios_aanvragen"
token_persoon_db <- "token_persoon"
#
# Stap 1 -- Inlezen van alle aangevraagde mutaties
#
mutaties = dbGetQuery(con_4u,statement=paste('select * from ',mutatie_db," where aanvraag_verwerken != 'N'",sep=""))
num_mutaties <- nrow(mutaties)
if (num_mutaties != 0)
{
  for (i in 1 : num_mutaties)
  {
    fout <- 0
    status_melding <- "ok"
    # 
    # Stap 2 - check datum - deze staat op 0000-00-00 00:00:00 als deze
    # mutatie een compleet nieuwe aanvraag is
    #
    if (mutaties[i,2] == '0000-00-00 00:00:00')
    {
      #
      # verwerken van een compleet nieuwe aanvraag
      # Record layout 
      # 1 aanvraag_id, 
      # 2 aanvraag_datum, 
      # 3 aanvraag_opdrachtgever -> gegevens in tabel organisaties
      # 4 aanvraag_omschrijving  -> 
      # 5 aanvraag_respondent    -> gegevens in tabel personen
      # 6 aanvraag_feedback01    -> gegevens in tabel personen
      # 7 aanvraag_feedback02    -> gegevens in tabel personen
      # 8 aanvraag_feedback03    -> gegevens in tabel personen
      # 9 aanvraag_feedback04    -> gegevens in tabel personen
      # 10 aanvraag_vragenlijst   
      # 11 aanvraag_verwerken    -> als waarde = N dan niets doen
      # 12 aanvraag_opruimen     -> als waarde = J dan alles opruimen
      # 13 aanvraag_status       -> informatie veld
      # 14 aanvraag_resp_token   -> token van respondent
      #
      opdrachtgever <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",mutaties[i,3],sep=""))
      if(nrow(opdrachtgever)==0)
      {
        status_melding <- "opdrachtgever niet gevonden"
        fout <- 1
      } else
      {
        #
        # Hier opdrachtgever gegevens beschikbaar
        #
      }  
      if (fout==0)
        #
        # Respondent data ophalen 
        #
      {
        respondent <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,5],sep=""))
        if (nrow(respondent)==0)
        {
          status_melding <- "respondent niet gevonden"
          fout <- 1
        } 
      }
      #
      # ophalen feedback records
      #
      if (fout==0)
      {
        aantal_fb = 0
        feedback01_aanwezig <- 0
        feedback02_aanwezig <- 0
        feedback03_aanwezig <- 0
        feedback04_aanwezig <- 0
        feedback01 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,6],sep=""))
        feedback02 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,7],sep=""))
        feedback03 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,8],sep=""))
        feedback04 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,9],sep=""))
        
        if (nchar(gsub(" ","",feedback01[1,2]))!=0) 
        {
          feedback01_aanwezig <- 1 
          aantal_fb = aantal_fb + 1
        }
        
        if (nchar(gsub(" ","",feedback02[1,2]))!=0)
        {
          feedback02_aanwezig <- 1 
          aantal_fb = aantal_fb + 1
          if (feedback01_aanwezig==0) 
          {
            mutaties[i,6] <- mutaties[1,7]
            feedback01 <- feedback02
          }
        }
       
        if (nchar(gsub(" ","",feedback03[1,2]))!=0)
        {
          feedback03_aanwezig <- 1
          aantal_fb = aantal_fb + 1
          if (feedback02_aanwezig==0)
          {
            mutaties[i,7] <- mutaties[1,8]
            feedback02 <- feedback03
          } else
            if (feedback01_aanwezig==0) 
            { 
              mutaties[i,6] <- mutaties[1,8]
              feedback01 <- feedback03
            }
        }
        
        if (nchar(gsub(" ","",feedback04[1,2]))!=0)
        {
          feedback04_aanwezig <- 1 
          aantal_fb = aantal_fb + 1
          if (feedback03_aanwezig==0)
          {
            mutaties[i,8] <- mutaties[1,9]
            feedback03 <- feedback04
          } else
            if (feedback02_aanwezig==0)
            {
              mutaties[i,7] <- mutaties[1,9]
              feedback02 <- feedback04
            } else
              if (feedback01_aanwezig==0) 
              {
                mutaties[i,6] <- mutaties[1,9]
                feedback01 <- feedback04
              }
        }
      }
      #
      # Alle informatie nu bekend en in records
      # Nu tokens aanmaken
      # Layout van een token 
      #
      # CREATE TABLE `lime_tokens_714972` (
      #  1 `tid` int(11)     <- oplopend uniek record id
      #  2 `participant_id`  <- organisatienaam
      #  3 `firstname`       <- voornaam uit persoon record
      #  4 `lastname`        <- achternaam uit persoonrecord
      #  5 `email`           <- email uit persoon record
      #  6 `emailstatus`     <- altijd OK
      #  7 `token`           <- wordt apart gezet in programma
      #  8 `language`        <- standaard nl
      #  9 `blacklisted`     <- standaard N
      #  10 `sent`           <- geen datum maar varchar sent datum van de e-mail  
      #  11 `remindersent`   <- geen datum maar varchar 
      #  12 `remindercount`  <- integer 
      #  13 `completed`      <- datum wanneer klaar initieel op N
      #  14 `usesleft`       <- getal set op 1
      #  15 `validfrom`     <- datetime van vandaag zetten 
      #  16 `validuntil`    <- 30 dagen verder datetime 
      #  17 `mpid` int(11)  <- standaard ? 
      #  18 `attribute_1`   <- 
      #  19 `attribute_2` 
      #  20 `attribute_3` -> token fb 1 ( bij respondent)
      #  21 `attribute_4` -> token fb 2 ( bij respondent)
      #  22 `attribute_5` -> geslacht 
      #  23`attribute_6` 
      #  24 `attribute_7 
      #  25`attribute_8` -> token fb 3 ( bij responent)
      #  26 `attribute_9 -> token fb 4 ( bij respondent)
      #
      # DUMMY TOKEN RECORDS AANMAKEN en laatste record bepalen 
      #
      # Tokens maken en records vullen met tokens
      #
      if (fout==0)
      {
        query <- paste('select * from ',tokens_db,' LIMIT 1',sep="")
        dummy_token_rec = dbGetQuery(con_4u,statement=query)
        maxtokenid <- dbGetQuery(con_4u, "SELECT MAX(tid) FROM lime_tokens_714972")[1,1]
        resp_token_rec <- dummy_token_rec
        datum_voor_token <- format(Sys.time(),"%Y%m%d%H%M%S")
        naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", respondent[1,2])
        naam_voor_token <- gsub(' ','',naam_voor_token)
        resp_token_rec[1,7] <- paste(naam_voor_token,"1",datum_voor_token,sep="")
        resp_token_rec[1,20] <-' '
        resp_token_rec[1,21] <-' '
        resp_token_rec[1,25] <-' '
        resp_token_rec[1,26] <-' '
        
        if (aantal_fb >=1)
        {
          naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,2])
          naam_voor_token <- gsub(' ','',naam_voor_token)
          feedb01_token_rec <- dummy_token_rec
          feedb01_token_rec[1,7] <- paste(naam_voor_token,"2",datum_voor_token,sep="")
          resp_token_rec[1,20] <- feedb01_token_rec[1,7] 
          feedb01_token_rec[1,20] <- resp_token_rec[1,7] 
        }
        if (aantal_fb>=2)
        {
          naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", feedback02[1,2])
          naam_voor_token <- gsub(' ','',naam_voor_token)
          feedb02_token_rec <- dummy_token_rec
          feedb02_token_rec[1,7] <- paste(naam_voor_token,"3",datum_voor_token,sep="")
          resp_token_rec[1,21] <- feedb02_token_rec[1,7]
          feedb02_token_rec[1,20] <- resp_token_rec[1,7] 
          feedb02_token_rec[1,21] <- feedb01_token_rec[1,7] 
          feedb01_token_rec[1,21] <- feedb02_token_rec[1,7] 
        }
        if (aantal_fb>=3)
        {
          naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", feedback03[1,2])
          naam_voor_token <- gsub(' ','',naam_voor_token)
          feedb03_token_rec <- dummy_token_rec
          feedb03_token_rec[1,7] <- paste(naam_voor_token,"4",datum_voor_token,sep="")
          resp_token_rec[1,25] <- feedb03_token_rec[1,7] 
          feedb01_token_rec[1,25] <- feedb03_token_rec[1,7] 
          feedb02_token_rec[1,25] <- feedb03_token_rec[1,7]
          feedb03_token_rec[1,20] <- resp_token_rec[1,7] 
          feedb03_token_rec[1,21] <- feedb01_token_rec[1,7] 
          feedb03_token_rec[1,25] <- feedb02_token_rec[1,7] 
          
        }
        if (aantal_fb>=4)
        {
          naam_voor_token <- gsub("[^0-9A-Za-z///' ]", "", feedback04[1,2])
          naam_voor_token <- gsub(' ','',naam_voor_token)
          feedb04_token_rec <- dummy_token_rec
          feedb04_token_rec[1,7] <- paste(naam_voor_token,"5",datum_voor_token,sep="")
          resp_token_rec[1,26] <- feedb04_token_rec[1,7]
          feedb01_token_rec[1,26] <- feedb04_token_rec[1,7]
          feedb02_token_rec[1,26] <- feedb04_token_rec[1,7]
          feedb03_token_rec[1,26] <- feedb04_token_rec[1,7]
          feedb04_token_rec[1,20] <- resp_token_rec[1,7] 
          feedb04_token_rec[1,21] <- feedb01_token_rec[1,7] 
          feedb04_token_rec[1,25] <- feedb02_token_rec[1,7] 
          feedb04_token_rec[1,26] <- feedb03_token_rec[1,7] 
        }
      }
      if (fout==0)
      {
        #
        # Respondent record maken
        #
        resp_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
        resp_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", respondent[1,2])
        resp_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", respondent[1,3])
        resp_token_rec[1,5] <- respondent[1,5]
        resp_token_rec[1,6] <- "OK"
        
        resp_token_rec[1,8] <- "nl"
        resp_token_rec[1,9] <- "N"
        resp_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
        resp_token_rec[1,11] <- ""
        resp_token_rec[1,12] <- 1
        resp_token_rec[1,13] <- "N"
        resp_token_rec[1,14] <- 1
        resp_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
        resp_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
        resp_token_rec[1,17] <- 0
        resp_token_rec[1,18] <- 'r'
        resp_token_rec[1,19] <- resp_token_rec[1,3]
        
        resp_token_rec[1,22] <- tolower(respondent[1,7])
        resp_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
        resp_token_rec[1,24] <- aantal_fb
        
        for (fb in 1 : aantal_fb)
        {
          if (fb==1 && aantal_fb != 0)
          {
            #
            # Feedbackrecord 01 aanmaken
            #
            feedb01_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
            feedb01_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,2])
            feedb01_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", feedback01[1,3])
            feedb01_token_rec[1,5] <- feedback01[1,5]
            feedb01_token_rec[1,6] <- "OK"
            
            feedb01_token_rec[1,8] <- "nl"
            feedb01_token_rec[1,9] <- "N"
            feedb01_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb01_token_rec[1,11] <- ""
            feedb01_token_rec[1,12] <- 1
            feedb01_token_rec[1,13] <- "N"
            feedb01_token_rec[1,14] <- 1
            feedb01_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb01_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
            feedb01_token_rec[1,17] <- 0
            feedb01_token_rec[1,18] <- 'f'
            feedb01_token_rec[1,19] <- resp_token_rec[1,3]
            
            feedb01_token_rec[1,22] <- resp_token_rec[1,22]
            feedb01_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
            feedb01_token_rec[1,24] <- aantal_fb
          }
          if (fb==2 && aantal_fb != 0)
          {
            #
            # Feedbackrecord 02 aanmaken
            # 
            feedb02_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
            feedb02_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", feedback02[1,2])
            feedb02_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", feedback02[1,3])
            feedb02_token_rec[1,5] <- feedback02[1,5]
            feedb02_token_rec[1,6] <- "OK"
            
            feedb02_token_rec[1,8] <- "nl"
            feedb02_token_rec[1,9] <- "N"
            feedb02_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb02_token_rec[1,11] <- ""
            feedb02_token_rec[1,12] <- 1
            feedb02_token_rec[1,13] <- "N"
            feedb02_token_rec[1,14] <- 1
            feedb02_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb02_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
            feedb02_token_rec[1,17] <- 0
            feedb02_token_rec[1,18] <- 'f'
            feedb02_token_rec[1,19] <- resp_token_rec[1,3]
            
            feedb02_token_rec[1,22] <- resp_token_rec[1,22]
            feedb02_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
            feedb02_token_rec[1,24] <- aantal_fb
          }
          if (fb==3 && aantal_fb != 0)
          {
            #
            # Feedbackrecord 03 aanmaken
            # 
            feedb03_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
            feedb03_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", feedback03[1,2])
            feedb03_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", feedback03[1,3])
            feedb03_token_rec[1,5] <- feedback03[1,5]
            feedb03_token_rec[1,6] <- "OK"
            
            feedb03_token_rec[1,8] <- "nl"
            feedb03_token_rec[1,9] <- "N"
            feedb03_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb03_token_rec[1,11] <- ""
            feedb03_token_rec[1,12] <- 1
            feedb03_token_rec[1,13] <- "N"
            feedb03_token_rec[1,14] <- 1
            feedb03_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb03_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
            feedb03_token_rec[1,17] <- 0
            feedb03_token_rec[1,18] <- 'f'
            feedb03_token_rec[1,19] <- resp_token_rec[1,3]
            
            feedb03_token_rec[1,22] <- resp_token_rec[1,22]
            feedb03_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
            feedb03_token_rec[1,24] <- aantal_fb
          }
          if (fb==4 && aantal_fb != 0)
          {
            #
            # Feedbackrecord 04 aanmaken
            # 
            feedb04_token_rec[1,2] <- gsub("[^0-9A-Za-z///' ]", "",opdrachtgever[1,2])
            feedb04_token_rec[1,3] <- gsub("[^0-9A-Za-z///' ]", "", feedback04[1,2])
            feedb04_token_rec[1,4] <- gsub("[^0-9A-Za-z///' ]", "", feedback04[1,3])
            feedb04_token_rec[1,5] <- feedback04[1,5]
            feedb04_token_rec[1,6] <- "OK"
            
            feedb04_token_rec[1,8] <- "nl"
            feedb04_token_rec[1,9] <- "N"
            feedb04_token_rec[1,10] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb04_token_rec[1,11] <- ""
            feedb04_token_rec[1,12] <- 1
            feedb04_token_rec[1,13] <- "N"
            feedb04_token_rec[1,14] <- 1
            feedb04_token_rec[1,15] <- format(Sys.time(),"%Y-%m-%d %H:%M:%S")
            feedb04_token_rec[1,16] <- format( as.Date(Sys.time())+45,"%Y-%m-%d %H:%M:%S")
            feedb04_token_rec[1,17] <- 0
            feedb04_token_rec[1,18] <- 'f'
            feedb04_token_rec[1,19] <- resp_token_rec[1,3]
            
            feedb04_token_rec[1,22] <- resp_token_rec[1,22]
            feedb04_token_rec[1,23] <- paste("/var/www/4u-change.com/web/wp-content/gallery/porapporten/",resp_token_rec[1,7],"/",sep="")
            feedb04_token_rec[1,24] <- aantal_fb
          }
        }
      }
      
      if (fout==0)
      {
        #
        # Nu alle nieuwe records schrijven en ook tussen tabel persoon-token bijwerken voor ieder record
        #
        maxtokenid <- maxtokenid + 1
        resp_token_rec[1,1] <- maxtokenid
        # 
        # Respondent record
        #
        resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",respondent[1,6],sep=""))
        if (nrow(resp_bedrijf) == 0)
        {
          resp_b_naam <- " "
        } else
        {
          resp_b_naam <- resp_bedrijf[1,2]
        }
        query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                       opdrachtgever[1,1],"','",
                       opdrachtgever[1,2],"','",
                       mutaties[i,4],"','",
                       resp_token_rec[1,15],"','",
                       respondent[1,1],"','",
                       resp_token_rec[1,7],"','",
                       respondent[1,2],"','",
                       respondent[1,3],"','",
                       tolower(respondent[1,7]),"','",
                       respondent[1,5],"','",
                       respondent[1,6],"','",
                       resp_b_naam,"','",
                       resp_token_rec[1,18],"','",
                       resp_token_rec[1,7],"')",sep="")
        dbGetQuery(con_4u, query)
        dbWriteTable(con_4u,tokens_db,resp_token_rec,row.names=FALSE,append=TRUE)
        #
        status_melding <- paste('IOS maken ',aantal_fb,'fb')
        query <- paste("UPDATE `ios_aanvragen` SET `aanvraag_resp_token`='",resp_token_rec[1,7],"',","`aanvraag_verwerken`= '","N","',","`aanvraag_status`= '",status_melding,"-",format(Sys.time(),"%d-%m-%Y %H:%M:%S"),"',","`aanvraag_datum`= '",format(Sys.time(),"%Y-%m-%d %H:%M:%S"),"' WHERE aanvraag_id=",mutaties[i,1],sep="")
        dbGetQuery(con_4u, query)
        #
        if (aantal_fb >= 1)
        {
        #
        # Feedback record 01
        #
        maxtokenid <- maxtokenid + 1
        feedb01_token_rec[1,1] <- maxtokenid
        resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",feedback01[1,6],sep=""))
        if (nrow(resp_bedrijf) == 0)
        {
          resp_b_naam <- " "
        } else
        {
          resp_b_naam <- resp_bedrijf[1,2]
        }
        query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                       opdrachtgever[1,1],"','",
                       opdrachtgever[1,2],"','",
                       mutaties[i,4],"','",
                       feedb01_token_rec[1,15],"','",
                       feedback01[1,1],"','",
                       feedb01_token_rec[1,7],"','",
                       feedback01[1,2],"','",
                       feedback01[1,3],"','",
                       tolower(feedback01[1,7]),"','",
                       feedback01[1,5],"','",
                       feedback01[1,6],"','",
                       resp_b_naam,"','",
                       feedb01_token_rec[1,18],"','",
                       resp_token_rec[1,7],"')",sep="")
        dbGetQuery(con_4u, query)
        dbWriteTable(con_4u,tokens_db,feedb01_token_rec,row.names=FALSE,append=TRUE)
        }
        if (aantal_fb >= 2)
        {
        #
        # Feedback record 02
        #
        maxtokenid <- maxtokenid + 1
        feedb02_token_rec[1,1] <- maxtokenid
        resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",feedback02[1,6],sep=""))
        if (nrow(resp_bedrijf) == 0)
        {
          resp_b_naam <- " "
        } else
        {
          resp_b_naam <- resp_bedrijf[1,2]
        }
        query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                       opdrachtgever[1,1],"','",
                       opdrachtgever[1,2],"','",
                       mutaties[i,4],"','",
                       feedb02_token_rec[1,15],"','",
                       feedback02[1,1],"','",
                       feedb02_token_rec[1,7],"','",
                       feedback02[1,2],"','",
                       feedback02[1,3],"','",
                       tolower(feedback02[1,7]),"','",
                       feedback02[1,5],"','",
                       feedback02[1,6],"','",
                       resp_b_naam,"','",
                       feedb02_token_rec[1,18],"','",
                       resp_token_rec[1,7],"')",sep="")
        dbGetQuery(con_4u, query)
        dbWriteTable(con_4u,tokens_db,feedb02_token_rec,row.names=FALSE,append=TRUE)
        }
        if (aantal_fb >= 3)
        {
        #
        # Feedback record 03
        #
        maxtokenid <- maxtokenid + 1
        feedb03_token_rec[1,1] <- maxtokenid
        resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",feedback03[1,6],sep=""))
        if (nrow(resp_bedrijf) == 0)
        {
          resp_b_naam <- " "
        } else
        {
          resp_b_naam <- resp_bedrijf[1,2]
        }
        query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                       opdrachtgever[1,1],"','",
                       opdrachtgever[1,2],"','",
                       mutaties[i,4],"','",
                       feedb03_token_rec[1,15],"','",
                       feedback03[1,1],"','",
                       feedb03_token_rec[1,7],"','",
                       feedback03[1,2],"','",
                       feedback03[1,3],"','",
                       tolower(feedback03[1,7]),"','",
                       feedback03[1,5],"','",
                       feedback03[1,6],"','",
                       resp_b_naam,"','",
                       feedb03_token_rec[1,18],"','",
                       resp_token_rec[1,7],"')",sep="")
        dbGetQuery(con_4u, query)
        dbWriteTable(con_4u,tokens_db,feedb03_token_rec,row.names=FALSE,append=TRUE)
        }
        if (aantal_fb >= 4)
        {
        #
        # Feedback record 04
        #
        maxtokenid <- maxtokenid + 1
        feedb04_token_rec[1,1] <- maxtokenid
        resp_bedrijf <- dbGetQuery(con_4u,statement=paste("select * from organisaties where bid=",feedback04[1,6],sep=""))
        if (nrow(resp_bedrijf) == 0)
        {
          resp_b_naam <- " "
        } else
        {
          resp_b_naam <- resp_bedrijf[1,2]
        }
        query <- paste("INSERT INTO `token_persoon` (`token_id_opdrachtgever`,`token_opdrachtgever_naam`,`token_omschrijving`,`token_aanvraag_datum`,`token_id_persoon`,`token_persoon_token`, `token_voornaam`, `token_achternaam`, `token_geslacht`, `token_email`,`token_id_bedrijf`,`token_bedrijf`, `token_soort`,`token_respondent`) VALUES('",
                       opdrachtgever[1,1],"','",
                       opdrachtgever[1,2],"','",
                       mutaties[i,4],"','",
                       feedb04_token_rec[1,15],"','",
                       feedback04[1,1],"','",
                       feedb04_token_rec[1,7],"','",
                       feedback04[1,2],"','",
                       feedback04[1,3],"','",
                       tolower(feedback04[1,7]),"','",
                       feedback04[1,5],"','",
                       feedback04[1,6],"','",
                       resp_b_naam,"','",
                       feedb04_token_rec[1,18],"','",
                       resp_token_rec[1,7],"')",sep="")
        dbGetQuery(con_4u, query)
        dbWriteTable(con_4u,tokens_db,feedb04_token_rec,row.names=FALSE,append=TRUE)
        }    
        
      }       
    } else 
    {
    ####################################################################################
    # einde van if statement voor nieuwe aanvragen ( geen mutaties op oude aanvragen )
    # Datum is reeds ingevuld dus betreft het hier een mutatie
    # Er zijn 5 verschillende mutaties
    # 1 De tekst van de feedbackspiegel is veranderd
    # Feedbgever 1 t/m 4 zijn toegevoegd of leeggemaakt
    ###################################################################################
    survey_omschrijving <- mutaties[i,4]
    resp_token <- mutaties[i,14]
    fb01_persoon <- mutaties[i,6]
    fb02_persoon <-  mutaties[i,7]
    fb03_persoon <-  mutaties[i,8]
    fb04_persoon <-  mutaties[i,9]
    verwijderen <- mutaties[i,12]
    #
    token_extensie <- substr(resp_token,nchar(resp_token)-13,nchar(resp_token))
    #
    # alle mutatie data nu bekend nu mutaties bepalen door te vergelijken met
    # huidige gegevens
    #
    query <- paste("select * from token_persoon where token_respondent='",resp_token,"' and token_soort ='f'",sep="")
    origineel_data = dbGetQuery(con_4u,query)
    aantal_fb_origineel <- nrow(origineel_data)
    #
    # 
    # Bepaal aantal feedbackgevers opgegeven in het mutatie record
    # 
    #
    aantal_fb = 0
    feedback01_aanwezig <- 0
    feedback02_aanwezig <- 0
    feedback03_aanwezig <- 0
    feedback04_aanwezig <- 0
    feedback01 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,6],sep=""))
    feedback02 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,7],sep=""))
    feedback03 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,8],sep=""))
    feedback04 <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,9],sep=""))    
    if (nchar(gsub(" ","",feedback01[i,2]))!=0) 
    {
      feedback01_aanwezig <- 1 
      aantal_fb = aantal_fb + 1
    }
    if (nchar(gsub(" ","",feedback02[i,2]))!=0)
    {
      feedback02_aanwezig <- 1 
      aantal_fb = aantal_fb + 1
      if (feedback01_aanwezig==0) 
      {
        mutaties[i,6] <- mutaties[i,7]
        feedback01 <- feedback02
      }
    }
    if (nchar(gsub(" ","",feedback03[i,2]))!=0)
    {
      feedback03_aanwezig <- 1
      aantal_fb = aantal_fb + 1
      if (feedback02_aanwezig==0)
      {
        mutaties[i,7] <- mutaties[i,8]
        feedback02 <- feedback03
      } else
        if (feedback01_aanwezig==0) 
        { 
          mutaties[i,6] <- mutaties[i,8]
          feedback01 <- feedback03
        }
    }
    if (nchar(gsub(" ","",feedback04[i,2]))!=0)
    {
      feedback04_aanwezig <- 1 
      aantal_fb = aantal_fb + 1
      if (feedback03_aanwezig==0)
      {
        mutaties[i,8] <- mutaties[i,9]
        feedback03 <- feedback04
      } else
        if (feedback02_aanwezig==0)
        {
          mutaties[i,7] <- mutaties[i,9]
          feedback02 <- feedback04
        } else
          if (feedback01_aanwezig==0) 
          {
            mutaties[i,6] <- mutaties[i,9]
            feedback01 <- feedback04
          }
    }
    # Aantal feedbackgevers in bron data staat in aantal_fb
    # de records feedb01 etc geven de inhoud van de persoons records
    # in volgorde
    # nu bepalen welke feedbackgevers toegevoegd of verwijders zijn
    #
    if(aantal_fb_origineel > 0)
    {
      delete_token_01_flag <- 0
      delete_token_02_flag <- 0
      delete_token_03_flag <- 0
      delete_token_04_flag <- 0  
      for (t in 1 : aantal_fb_origineel)
      {
        is_orig_in_mutatie <- which(origineel_data[t,5]==mutaties[i,6])
        if (length(is_orig_in_mutatie)==0)
        {
          is_orig_in_mutatie <- which(origineel_data[t,5]==mutaties[i,7])
          if (length(is_orig_in_mutatie)==0)
          {
            is_orig_in_mutatie <- which(origineel_data[t,5]==mutaties[i,8])
            if (length(is_orig_in_mutatie)==0)
            {
              is_orig_in_mutatie <- which(origineel_data[t,5]==mutaties[i,8])
              if (length(is_orig_in_mutatie)==0)
              {
                if (t==1) 
                {
                  delete_token_01_flag <- 1
                  delete_token_01_data <- origineel_data[t,6]
                }
                if (t==2) 
                {
                  delete_token_02_flag <- 1
                  delete_token_02_data <- origineel_data[t,6]
                }
                if (t==3) 
                {
                  delete_token_03_flag <- 1
                  delete_token_03_data <- origineel_data[t,6]
                }
                if (t==4) 
                {
                  delete_token_04_flag <- 1
                  delete_token_04_data <- origineel_data[t,6]
                }
              }
            }
          }  
        }    
      }
    }
    #
    # nu bekijken of er nieuwe tokens bij zijn in het mutatie record 
    # 
    # initialiseer
    fb01_new <- 0
    fb02_new <- 0
    fb03_new <- 0
    fb04_new <- 0
    aantal_new <- 0
    if(aantal_fb_origineel==0)
    {
      if(aantal_fb > 1) {fb01_new <- 1}
      if(aantal_fb > 2) {fb02_new <- 1}
      if(aantal_fb > 3) {fb03_new <- 1}
      if(aantal_fb > 4) {fb04_new <- 1}
    } else
    {
      for (k in 1 : aantal_fb)
      {
        check_empty <- dbGetQuery(con_4u,statement=paste("select * from personen where persoon_id=",mutaties[i,k+5],sep=""))
        is_new_fb <- which(mutaties[i,k+5]==origineel_data[,5])
        if (length(is_new_fb)==0)
        { 
          if (k==1 && nchar(gsub(" ","",check_empty[1,2]))!=0)
          {
            fb01_new <- 1
            aantal_new = aantal_new + 1
          }
          if (k==2 && nchar(gsub(" ","",check_empty[1,2]))!=0)
          {
            fb02_new <- 1
            aantal_new = aantal_new + 1
          }
          if (k==3 && nchar(gsub(" ","",check_empty[1,2]))!=0)
          {
            fb03_new <- 1
            aantal_new = aantal_new + 1
          }
          if (k==4 && nchar(gsub(" ","",check_empty[1,2]))!=0)
          {
            fb04_new <- 1
            aantal_new = aantal_new + 1
          }
        }       
      }
    }
    #
    # In volgorde verwijderen
    #
    if (delete_token_01_flag == 1) delete_token(resp_token,delete_token_01_data)
    if (delete_token_02_flag == 1) delete_token(resp_token,delete_token_02_data)
    if (delete_token_03_flag == 1) delete_token(resp_token,delete_token_03_data)
    if (delete_token_04_flag == 1) delete_token(resp_token,delete_token_04_data)
    #
    # In volgorde toevoegen 
    #
    if(fb01_new == 1) add_feedback(resp_token,fb01_persoon)
    if(fb02_new == 1) add_feedback(resp_token,fb02_persoon)
    if(fb03_new == 1) add_feedback(resp_token,fb03_persoon)
    if(fb04_new == 1) add_feedback(resp_token,fb04_persoon)
    #
    status_melding <- 'mutaties verwerkt'
    query <- paste("UPDATE `ios_aanvragen` SET `aanvraag_verwerken`= '","N","',","`aanvraag_status`= '",status_melding,"-",format(Sys.time(),"%d-%m-%Y %H:%M:%S"),"',","`aanvraag_datum`= '",format(Sys.time(),"%Y-%m-%d %H:%M:%S"),"' WHERE aanvraag_id=",mutaties[i,1],sep="")
    dbGetQuery(con_4u, query)   
  }
  }    
}
  # 
  # einde alle mutaties - sluiten databases
  #
dbDisconnect(con_4u)