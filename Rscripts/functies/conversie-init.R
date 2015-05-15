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

dummy_survey_rec = dbGetQuery(con_arcovida,statement=paste('select * from ',new_survey_db,' LIMIT 1',sep=""))
      
      ###################################################################################
      dbWriteTable(con_arcovida,new_survey_db,dummy_survey_rec,row.names=FALSE,overwrite=TRUE)
      ####################################################################################
      #
      #   RESPONDENT TOKEN RECORD EN SURVEY RECORD NAAR DATABASE GESCHREVEN
      #
      ###########################################################################
      
dbDisconnect(con_arcovida)