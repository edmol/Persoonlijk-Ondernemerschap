#
# Deze routine wordt ge included vanuit team-spiegel-xx.Rnw
# Functies : teamgemiddelden berekenen zoals gewone berekening in pre-processing.R
# Input voor dit programma : t1results - t8results
#
# We berekenen voor TEAM 156 waarden
#
team <- matrix(1:156,ncol=1)
#
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
# waarde 137,138,139 - Beeld
# waarde 140,141,142 - Gedrag
# waarde 143,144,145 - Uiting
# waarde 146,147,148 - kritieke transformatie factoren
# waarde 149,150     - Kritieke vitaliteitsfactoren
# waarde 151,152     - Kritieke veranderfactoren
# waarde 153,154     - Kritieke prestatiefactoren
# waarde 155,156     - Kritieke waardenfactoren
#
# Bereken gemiddelden van de 100 vragen
# 
for(i in 1 : 100)
{
  team[i] <- round(mean(
              c(t1results[i],
               t2results[i]
               )))
}
#
# Nu de gemiddelde berekenen over de PO stappen - 1 ondernemendheid - 2 betrokkenheid - 3 ontwikkelruimte
#
startpos <- 101
for(stelling in seq(1,100,by=10))
{    
  team[startpos] <- round(mean(c(team[stelling],
                                          team[stelling+2],
                                          team[stelling+4],
                                          team[stelling+6],
                                          team[stelling+8])),0)
  team[startpos+1] <- 100-round(mean(c(team[stelling+1],
                                            team[stelling+3],
                                            team[stelling+5],
                                            team[stelling+7],
                                            team[stelling+9])),0)
  team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
  startpos <- startpos + 3
}
#
#
# HOUDING - startpos staat nu op 131 ( eerstvolgende positie in matrix)
# GEVOEL - startpositie is 134
# Beeld - startpositie is 137
# GEDRAG - startpositie is 140
# Uiting - startpositie is 143
#
startpos <- 131
team[startpos] <- round(mean(c(team[1],                                            
                                        team[11],                                            
                                        team[21],                                            
                                        team[31],                                            
                                        team[41],                                            
                                        team[51],                                            
                                        team[61],                                            
                                        team[71],                                            
                                        team[81],
                                        team[91])),0)
team[startpos+1] <- 100-round(mean(c(team[2],                                            
                                          team[12],                                            
                                          team[22],                                            
                                          team[32],                                            
                                          team[42],                                            
                                          team[52],                                            
                                          team[62],                                            
                                          team[72],                                            
                                          team[82],                                            
                                          team[92])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
#                          GEVOEL
#                          ------- 
startpos <- 134
team[startpos] <- round(mean(c(team[3],                                            
                                        team[13],                                            
                                        team[23],                                            
                                        team[33],                                            
                                        team[43],                                            
                                        team[53],                                            
                                        team[63],                                            
                                        team[73],                                            
                                        team[83],
                                        team[93])),0)
team[startpos+1] <- 100-round(mean(c(team[4],                                            
                                          team[14],                                            
                                          team[24],                                            
                                          team[34],                                            
                                          team[44],                                            
                                          team[54],                                            
                                          team[64],                                            
                                          team[74],                                            
                                          team[84],                                            
                                          team[94])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
#                           Beeld
#                           -------------------
startpos <- 137
team[startpos] <- round(mean(c(team[5],                                            
                                        team[15],                                            
                                        team[25],                                            
                                        team[35],                                            
                                        team[45],                                            
                                        team[55],                                            
                                        team[65],                                            
                                        team[75],                                            
                                        team[85],
                                        team[95])),0)
team[startpos+1] <- 100-round(mean(c(team[6],                                            
                                          team[16],                                            
                                          team[26],                                            
                                          team[36],                                            
                                          team[46],                                            
                                          team[56],                                            
                                          team[66],                                            
                                          team[76],                                            
                                          team[86],                                            
                                          team[96])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
#                           GEDRAG
#                           ------
startpos <- 140
team[startpos] <- round(mean(c(team[7],                                            
                                        team[17],                                            
                                        team[27],                                            
                                        team[37],                                            
                                        team[47],                                            
                                        team[57],                                            
                                        team[67],                                            
                                        team[77],                                            
                                        team[87],
                                        team[97])),0)
team[startpos+1] <- 100-round(mean(c(team[8],                                            
                                          team[18],                                            
                                          team[28],                                            
                                          team[38],                                            
                                          team[48],                                            
                                          team[58],                                            
                                          team[68],                                            
                                          team[78],                                            
                                          team[88],                                            
                                          team[98])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
#                           Uiting
#                           -------
startpos <- 143
team[startpos] <- round(mean(c(team[9],                                            
                                        team[19],                                            
                                        team[29],                                            
                                        team[39],                                            
                                        team[49],                                            
                                        team[59],                                            
                                        team[69],                                            
                                        team[79],                                            
                                        team[89],
                                        team[99])),0)
team[startpos+1] <- 100-round(mean(c(team[10],                                            
                                          team[20],                                            
                                          team[30],                                            
                                          team[40],                                            
                                          team[50],                                            
                                          team[60],                                            
                                          team[70],                                            
                                          team[80],                                            
                                          team[90],                                            
                                          team[100])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
#####################################################################################################
# BEREKENING KRITIEKE FACTOREN
#####################################################################################################  
# 
# startpos staat nu op 146 en is de eerste volgende positie in de matrix om te vullen
#
# BREKENING KRITIEKE transformatiefactoren in positie 146,147 en 148
#
startpos <- 146
team[startpos] <- round(mean(c(team[1],                                            
                                        team[19],                                            
                                        team[41],                                            
                                        team[43],                                
                                        team[63])),0)
team[startpos+1] <- 100-round(mean(c(team[4],                                            
                                          team[14],                                            
                                          team[20],                                            
                                          team[78],                                            
                                          team[94])),0)
team[startpos+2] <- round(((100-team[startpos])+team[startpos+1])/2,0)
#
# startpos staat nu op 149
#
# BEREKENING KRITIEKE vitaliteisfactoren ; LET OP ALLEEN EEN mate vanvitaliteit en kans op uitval 
#
startpos <- 149
team[startpos] <- round(mean(c(team[18],                                            
                                        team[38],                                            
                                        team[40],                                            
                                        team[48],                                
                                        team[50],
                                        team[58],                                            
                                        team[62],                                            
                                        team[76],                                            
                                        team[90],                                            
                                        team[92])),0)
team[startpos+1] <- round((100-team[startpos]),0)
#
# startpos staat nu op 151
#
# BEREKENING KRITIEKE VERANDERFACTOREN : LET OP ALLEEN een mate van veranderbaarheid
#
startpos <- 151
team[startpos] <- round(mean(c(team[5],                                            
                                        team[11],                                            
                                        team[15],                                            
                                        team[17],                                
                                        team[21],
                                        team[25],                                            
                                        team[27],                                            
                                        team[35],                                            
                                        team[45],                                            
                                        team[57])),0)
team[startpos+1] <- round((100-team[startpos]),0)
#
# startpos staat nu op 153
#
# BEREKENING KRITIEKE presatiefactoren : L#ET OP ALLEEN EEN mate van resultaatgerichtheid
#
startpos <- 153
team[startpos] <- round(mean(c(team[39],                                            
                                        team[47],                                            
                                        team[55],                                            
                                        team[59],                                
                                        team[61],
                                        team[65],                                            
                                        team[69],                                            
                                        team[73],             
                                        team[87],                                            
                                        team[89])),0)
team[startpos+1] <- round((100-team[startpos]),0)
#
# startpos staat nu op 155
#
# BEREKENING KRITIEKE waarden factoren
#
startpos <- 155
team[startpos] <- round(mean(c(team[3],                                            
                                        team[7],                                            
                                        team[9],                                            
                                        team[13],                                
                                        team[23],
                                        team[53],                                            
                                        team[79],                                            
                                        team[81],                                            
                                        team[97],                                            
                                        team[99])),0)
team[startpos+1] <- round((100-team[startpos]),0)