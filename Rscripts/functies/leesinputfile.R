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
  vraag_factor              <- infile[,2]
  vraag                     <- infile[,3]
  vraag_soort               <- infile[,4]
  vraag_waarden_nooit       <- as.numeric(infile[,5])
  vraag_waarden_incidenteel <- as.numeric(infile[,6])
  vraag_waarden_soms        <- as.numeric(infile[,7])
  vraag_waarden_meestal     <- as.numeric(infile[,8])
  vraag_waarden_altijd      <- as.numeric(infile[,9])
  vraag_gevoel <- as.numeric(infile[,10])
  vraag_houding <- as.numeric(infile[,11])
  vraag_kenmerk <- as.numeric(infile[,12])
  vraag_gedrag <- as.numeric(infile[,13])
  vraag_effect <- as.numeric(infile[,14])
