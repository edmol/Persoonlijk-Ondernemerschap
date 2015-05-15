leesinputfile <- function(data_map,data_file)
{
  infile <- as.matrix(read.csv2(paste(data_map,data_file,sep=""),sep=';'))
  # kolom 1 = nummer                           kolom 10 = Gevoel
  # kolom 2 = factor                           kolom 11 = Houding
  # kolom 3 = vraag                            kolom 12 = Organisatie kenmerk
  # kolom 4 = o(dernemend) of b(etrokken)      kolom 13 = Gedrag
  #                                            kolom 14 = effect
  # kolom 5 = waarde voor nooit                kolom 15 = Transformatie
  # kolom 6 = waarde voor incidenteel          kolom 16 = Vitaliteit
  # kolom 7 = waarde voor soms                 kolom 18 = Veranderen
  # kolom 8 = waarde voor meestal              kolom 19 = Prestatie
  # kolom 9 = waarde voor altijd               kolom 20 = Waarden
}