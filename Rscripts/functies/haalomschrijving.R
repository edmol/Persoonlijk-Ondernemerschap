haalomschrijving <- function(dirtoken)
{
  oms_record = dbGetQuery(surveydb,statement=paste('select * from token_persoon where token_persoon_token=', "'",dirtoken,"'", sep=""))
  gsub("[^0-9A-Za-z///' ]", "", oms_record[1,3])
  return(gsub("[^0-9A-Za-z///' ]", "", oms_record[1,3]))
}
