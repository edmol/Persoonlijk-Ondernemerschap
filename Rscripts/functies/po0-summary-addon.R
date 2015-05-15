#
# 3 matrices voor summary rapporten
#
img_prio <- matrix(1:72,ncol=24)

#
blanco_img <- paste(default_images,"blanco.png",sep="")
for (t in 1 : 3)
{
  for (i in 1 : 24 )
  {
    img_prio[t,i] <- blanco_img
  }
}
#
# in sum02$prio[1] staat het nummer van de stap, ksf of kritieke factor  voor de eerste pagina
# in sum02$prio[2] staat het nummer van de stap, ksf of kritieke factor  voor de tweede pagina
# in sum02$prio[3] staat het nummer van de stap, ksf of kritieke factor  voor de derde pagina
#
#
# nu de teksten voor de section maken en de img_priox matrices vullen
#
# Initialiseer matrices voor koester en ontwikkel punten en verschillen analyse
#
prio_run <- c(sum02$prio[1],sum02$prio[2],sum02$prio[3])
section_tekst <- c(" "," "," ")
section_heading <- c(" "," "," ")
for(i in 1 : 3)
{
  if(prio_run[i] == 1)
  {
  #
  # tekst voor de tabel
  #
    section_tekst[i] <- "Persoonlijk Leiderschap geeft inzicht in de mate waarin je in staat bent vanuit jezelf sturing te geven en de mate waarin je samen met anderen iets tot stand brengt."
    section_heading[i] <- "Uitkomsten van de stap Regenboog zien."
    img_prio[i,1] <- img[101]
    img_prio[i,2] <- img[1]
    img_prio[i,3] <-img[2]
    img_prio[i,4] <-img[7]
    img_prio[i,5] <-img[8]
    img_prio[i,6] <-img[3]
    img_prio[i,7] <-img[4]
    img_prio[i,8] <-img[5]
    img_prio[i,9] <-img[6]
    img_prio[i,10] <-img[9]
    img_prio[i,11] <-img[10]
    img_prio[i,12] <-img[111]
    img_prio[i,13] <-img[112]
    img_prio[i,14] <-img[113]
  }
  if(prio_run[i] == 2)
  {
    section_tekst[i] <- "Persoonlijk Leiderschap geeft inzicht in de mate waarin je in staat bent vanuit jezelf sturing te geven en de mate waarin je samen met anderen iets tot stand brengt." 
    section_heading[i] <- "Uitkomsten van de stap Regie voeren."
    img_prio[i,1] <- img[102]
    img_prio[i,2] <- img[11]
    img_prio[i,3] <-img[12]
    img_prio[i,4] <-img[17]
    img_prio[i,5] <-img[18]
    img_prio[i,6] <-img[13]
    img_prio[i,7] <-img[14]
    img_prio[i,8] <-img[15]
    img_prio[i,9] <-img[16]
    img_prio[i,10] <-img[19]
    img_prio[i,11] <-img[20]
    img_prio[i,12] <-img[114]
    img_prio[i,13] <-img[115]
    img_prio[i,14] <-img[116]
  }
  if(prio_run[i] == 3)
  {
    section_tekst[i] <- "Persoonlijk Leiderschap geeft inzicht in de mate waarin je in staat bent vanuit jezelf sturing te geven en de mate waarin je samen met anderen iets tot stand brengt."
    section_heading[i] <- "Uitkomsten van de stap Richting bepalen."
    img_prio[i,1] <- img[103]
    img_prio[i,2] <- img[21]
    img_prio[i,3] <-img[22]
    img_prio[i,4] <-img[27]
    img_prio[i,5] <-img[28]
    img_prio[i,6] <-img[23]
    img_prio[i,7] <-img[24]
    img_prio[i,8] <-img[25]
    img_prio[i,9] <-img[26]
    img_prio[i,10] <-img[29]
    img_prio[i,11] <-img[30]
    img_prio[i,12] <-img[117]
    img_prio[i,13] <-img[118]
    img_prio[i,14] <-img[119]
  }
  if(prio_run[i] == 4)
  {
    section_tekst[i] <- "Persoonlijk Zeggenschap geeft inzicht in de mate waarin je in staat bent vanuit jezelf invloed uit te oefenen en de mate waarin je samen met anderen invloed uitoefent."
    section_heading[i] <- "Uitkomsten van de stap Rust geven."
    img_prio[i,1] <- img[104]
    img_prio[i,2] <- img[31]
    img_prio[i,3] <-img[32]
    img_prio[i,4] <-img[37]
    img_prio[i,5] <-img[38]
    img_prio[i,6] <-img[33]
    img_prio[i,7] <-img[34]
    img_prio[i,8] <-img[35]
    img_prio[i,9] <-img[36]
    img_prio[i,10] <-img[39]
    img_prio[i,11] <-img[40]
    img_prio[i,12] <-img[120]
    img_prio[i,13] <-img[121]
    img_prio[i,14] <-img[122]
  }
  if(prio_run[i] == 5)
  {
    section_tekst[i] <- "Persoonlijk Zeggenschap geeft inzicht in de mate waarin je in staat bent vanuit jezelf invloed uit te oefenen en de mate waarin je samen met anderen invloed uitoefent."
    section_heading[i] <- "Uitkomsten van de stap Ruimte creeren."
    img_prio[i,1] <- img[105]
    img_prio[i,2] <- img[41]
    img_prio[i,3] <-img[42]
    img_prio[i,4] <-img[47]
    img_prio[i,5] <-img[48]
    img_prio[i,6] <-img[43]
    img_prio[i,7] <-img[44]
    img_prio[i,8] <-img[45]
    img_prio[i,9] <-img[46]
    img_prio[i,10] <-img[49]
    img_prio[i,11] <-img[50]
    img_prio[i,12] <-img[123]
    img_prio[i,13] <-img[124]
    img_prio[i,14] <-img[125]
  }
  if(prio_run[i] == 6)
  {
    section_tekst[i] <- "Persoonlijk Vakmanschap geeft inzicht in de mate waarin je in staat bent je capaciteiten te benutten en de mate waarin je in staat bent samen prestaties te leveren."
    section_heading[i] <- "Uitkomsten van de stap Rendement vaststellen."
    img_prio[i,1] <- img[106]
    img_prio[i,2] <- img[51]
    img_prio[i,3] <-img[52]
    img_prio[i,4] <-img[57]
    img_prio[i,5] <-img[58]
    img_prio[i,6] <-img[53]
    img_prio[i,7] <-img[54]
    img_prio[i,8] <-img[55]
    img_prio[i,9] <-img[56]
    img_prio[i,10] <-img[59]
    img_prio[i,11] <-img[60]
    img_prio[i,12] <-img[126]
    img_prio[i,13] <-img[127]
    img_prio[i,14] <-img[128]
  }
  if(prio_run[i] == 7)
  {
    section_tekst[i] <- "Persoonlijk Vakmanschap geeft inzicht in de mate waarin je in staat bent je capaciteiten te benutten en de mate waarin je in staat bent samen prestaties te leveren." 
    section_heading[i] <- "Uitkomsten van de stap Resultaten boeken." 
    img_prio[i,1] <- img[107]
    img_prio[i,2] <- img[61]
    img_prio[i,3] <-img[62]
    img_prio[i,4] <-img[67]
    img_prio[i,5] <-img[68]
    img_prio[i,6] <-img[63]
    img_prio[i,7] <-img[64]
    img_prio[i,8] <-img[65]
    img_prio[i,9] <-img[66]
    img_prio[i,10] <-img[69]
    img_prio[i,11] <-img[70]
    img_prio[i,12] <-img[129]
    img_prio[i,13] <-img[130]
    img_prio[i,14] <-img[131]
  }
  if(prio_run[i] == 8)
  {
    section_tekst[i] <- "Persoonlijk Beterschap geeft inzicht in de mate waarin je in staat bent het beste en mooiste uit jezelf en anderen te halen en de mate waarin je in staat bent samen te groeien."
    section_heading[i] <- "Uitkomsten van de stap Reflectie geven."
    img_prio[i,1] <- img[108]
    img_prio[i,2] <- img[71]
    img_prio[i,3] <-img[72]
    img_prio[i,4] <-img[77]
    img_prio[i,5] <-img[78]
    img_prio[i,6] <-img[73]
    img_prio[i,7] <-img[74]
    img_prio[i,8] <-img[75]
    img_prio[i,9] <-img[76]
    img_prio[i,10] <-img[79]
    img_prio[i,11] <-img[80]
    img_prio[i,12] <-img[132]
    img_prio[i,13] <-img[133]
    img_prio[i,14] <-img[134]
  }
  if(prio_run[i] == 9)
  {
    section_tekst[i] <- "Persoonlijk Beterschap geeft inzicht in de mate waarin je in staat bent het beste en mooiste uit jezelf en anderen te halen en de mate waarin je in staat bent samen te groeien."
    section_heading[i] <- "Uitkomsten van de stap Relaties onderhouden."
    img_prio[i,1] <- img[109]
    img_prio[i,2] <- img[81]
    img_prio[i,3] <-img[82]
    img_prio[i,4] <-img[87]
    img_prio[i,5] <-img[88]
    img_prio[i,6] <-img[83]
    img_prio[i,7] <-img[84]
    img_prio[i,8] <-img[85]
    img_prio[i,9] <-img[86]
    img_prio[i,10] <-img[89]
    img_prio[i,11] <-img[90]
    img_prio[i,12] <-img[135]
    img_prio[i,13] <-img[136]
    img_prio[i,14] <-img[137]
  }
  if(prio_run[i] == 10)
  {
    section_tekst[i] <- "Persoonlijk Beterschap geeft inzicht in de mate waarin je in staat bent het beste en mooiste uit jezelf en anderen te halen en de mate waarin je in staat bent samen te groeien."
    section_heading[i] <- "Uitkomsten van de stap Ruggengraat tonen."
    img_prio[i,1] <- img[110]
    img_prio[i,2] <- img[91]
    img_prio[i,3] <-img[92]
    img_prio[i,4] <-img[97]
    img_prio[i,5] <-img[98]
    img_prio[i,6] <-img[93]
    img_prio[i,7] <-img[94]
    img_prio[i,8] <-img[95]
    img_prio[i,9] <-img[96]
    img_prio[i,10] <-img[99]
    img_prio[i,11] <-img[100]
    img_prio[i,12] <-img[138]
    img_prio[i,13] <-img[139]
    img_prio[i,14] <-img[140]
  }
  if(prio_run[i] == 11)
  {
    section_tekst[i] <- "De kritieke factor houding geeft inzicht in de wijze waarop jij, vanuit je lichaam en gedachten, je gedrag en gevoel stuurt. Het is DE graadmeter voor de mate waarin je in staat bent je te ontwikkelen en te transformeren."
    section_heading[i] <- "Uitkomsten van de kritieke succesfactor Houding"
    img_prio[i,1] <-img[145]
    img_prio[i,2] <-img[1]
    img_prio[i,3] <-img[2]
    img_prio[i,4] <-img[11]
    img_prio[i,5] <-img[12]
    img_prio[i,6] <-img[21]
    img_prio[i,7] <-img[22]
    img_prio[i,8] <-img[31]
    img_prio[i,9] <-img[32]
    img_prio[i,10] <-img[41]
    img_prio[i,11] <-img[42]
    img_prio[i,12] <-img[51]
    img_prio[i,13] <-img[52]
    img_prio[i,14] <-img[61]
    img_prio[i,15] <-img[62]
    img_prio[i,16] <-img[71]
    img_prio[i,17] <-img[72]
    img_prio[i,18] <-img[81]
    img_prio[i,19] <-img[82]
    img_prio[i,20] <-img[91]
    img_prio[i,21] <-img[92]
    img_prio[i,22] <-img[146]
    img_prio[i,23] <-img[147]
    img_prio[i,24] <-img[148]
  }
  if(prio_run[i] == 12)
  {
    section_tekst[i] <- "De kritieke factor gevoel geeft inzicht in de wijze waarop je, vanuit een `laag dieper` in jezelf, je gedrag en houding stuurt. Het is DE graadmeter voor de mate van betrokkenheid en ondernemendheid." 
    section_heading[i] <- "Uitkomsten van de kritieke succesfactor Gevoel" 
    img_prio[i,1] <-img[141]
    img_prio[i,2] <-img[3]
    img_prio[i,3] <-img[4]
    img_prio[i,3] <-img[13]
    img_prio[i,5] <-img[14]
    img_prio[i,6] <-img[23]
    img_prio[i,7] <-img[24]
    img_prio[i,8] <-img[33]
    img_prio[i,9] <-img[34]
    img_prio[i,10] <-img[43]
    img_prio[i,11] <-img[44]
    img_prio[i,12] <-img[53]
    img_prio[i,13] <-img[54]
    img_prio[i,14] <-img[63]
    img_prio[i,15] <-img[64]
    img_prio[i,16] <-img[73]
    img_prio[i,17] <-img[74]
    img_prio[i,18] <-img[83]
    img_prio[i,19] <-img[84]
    img_prio[i,20] <-img[93]
    img_prio[i,21] <-img[94]
    img_prio[i,22] <-img[142]
    img_prio[i,23] <-img[143]
    img_prio[i,24] <-img[144]
  }
  if(prio_run[i] == 13)
  {
    section_tekst[i] <- "De kritieke factor beeld geeft inzicht op de wijze waarop, vanuit jouw perspectief en (zelf)beeld, jij, je team/organisatie jouw weerhoud dan wel stimuleert om te bewegen. Het is DE graadmeter voor de mate waarin jij en je team/organisatie is staat zijn tot duurzame verandering te komen." 
    section_heading[i] <- "Uitkomsten van de kritieke succesfactor Beeld" 
    img_prio[i,1] <-img[149]
    img_prio[i,2] <-img[5]
    img_prio[i,3] <-img[6]
    img_prio[i,4] <-img[15]
    img_prio[i,5] <-img[16]
    img_prio[i,6] <-img[25]
    img_prio[i,7] <-img[26]
    img_prio[i,8] <-img[35]
    img_prio[i,9] <-img[36]
    img_prio[i,10] <-img[45]
    img_prio[i,11] <-img[46]
    img_prio[i,12] <-img[55]
    img_prio[i,13] <-img[56]
    img_prio[i,14] <-img[65]
    img_prio[i,15] <-img[66]
    img_prio[i,16] <-img[75]
    img_prio[i,17] <-img[76]
    img_prio[i,18] <-img[85]
    img_prio[i,19] <-img[86]
    img_prio[i,20] <-img[95]
    img_prio[i,21] <-img[96]
    img_prio[i,22] <-img[150]
    img_prio[i,23] <-img[151]
    img_prio[i,24] <-img[152]
  }
  if(prio_run[i] == 14)
  {
    section_tekst[i] <- "De kritieke factor gedrag geeft inzicht in de wijze waarop jij, vanuit je handelen en (zelf)beeld, je doen en laten stuurt. Het is DE graadmeter voor de mate waarin je in staat bent je daadwerkelijk anders te zijn en anders te doen."
    section_heading[i] <- "Uitkomsten van de kritieke succesfactor Gedrag"
    img_prio[i,1] <-img[153]
    img_prio[i,2] <-img[7]
    img_prio[i,3] <-img[8]
    img_prio[i,4] <-img[17]
    img_prio[i,5] <-img[18]
    img_prio[i,6] <-img[27]
    img_prio[i,7] <-img[28]
    img_prio[i,8] <-img[37]
    img_prio[i,9] <-img[38]
    img_prio[i,10] <-img[47]
    img_prio[i,11] <-img[48]
    img_prio[i,12] <-img[57]
    img_prio[i,13] <-img[58]
    img_prio[i,14] <-img[67]
    img_prio[i,15] <-img[68]
    img_prio[i,16] <-img[77]
    img_prio[i,17] <-img[78]
    img_prio[i,18] <-img[87]
    img_prio[i,19] <-img[88]
    img_prio[i,20] <-img[97]
    img_prio[i,21] <-img[98]
    img_prio[i,22] <-img[154]
    img_prio[i,23] <-img[155]
    img_prio[i,24] <-img[156]
  }
  if(prio_run[i] == 15)
  {
    section_tekst[i] <- "De kritieke factor uiting geeft inzicht in de korte termijn effecten van je intensies en waarden. Het is DE graadmeter voor de mate waarin je doet ook echt gebeurd vanuit wie je bent en waar je voor staat."
    section_heading[i] <- "Uitkomsten van de kritieke succesfactor Uiting"
    img_prio[i,1] <-img[157]
    img_prio[i,2] <-img[9]
    img_prio[i,3] <-img[10]
    img_prio[i,4] <-img[19]
    img_prio[i,5] <-img[20]
    img_prio[i,6] <-img[29]
    img_prio[i,7] <-img[30]
    img_prio[i,8] <-img[39]
    img_prio[i,9] <-img[40]
    img_prio[i,10] <-img[49]
    img_prio[i,11] <-img[50]
    img_prio[i,12] <-img[59]
    img_prio[i,13] <-img[60]
    img_prio[i,14] <-img[69]
    img_prio[i,15] <-img[70]
    img_prio[i,16] <-img[79]
    img_prio[i,17] <-img[80]
    img_prio[i,18] <-img[89]
    img_prio[i,19] <-img[90]
    img_prio[i,20] <-img[99]
    img_prio[i,21] <-img[100]
    img_prio[i,22] <-img[158]
    img_prio[i,23] <-img[159]
    img_prio[i,24] <-img[160]
  }
  if(prio_run[i] == 16)
  {
    section_tekst[i] <- "De kritieke transformatiefactoren maken je bewust dat jezelf de oorzaak bent van de omstandigheden waar jij je in bevindt. Indien je in staat bent echt vanuit jezelf naar deze factoren te kijken en zelf in beweging te komen kun je zelf ook veranderen: Het begint bij jou! " 
    section_heading[i] <- "Uitkomsten van de kritieke transformatiefactoren" 
    img_prio[i,1] <-img[167]
    img_prio[i,2] <-img[1]
    img_prio[i,3] <-img[41]
    img_prio[i,4] <-img[78]
    img_prio[i,5] <-img[4]
    img_prio[i,6] <-img[14]
    img_prio[i,7] <-img[43]
    img_prio[i,8] <-img[63]
    img_prio[i,9] <-img[94]
    img_prio[i,10] <-img[19]
    img_prio[i,11] <-img[20]
    img_prio[i,12] <-img[168]
    img_prio[i,13] <-img[169]
    img_prio[i,14] <-img[170]
  }
  if(prio_run[i] == 17)
  {
    section_tekst[i] <- "De kritieke vitaliteitsfactoren maken je bewust dat vitaal zijn een keuze is en daarmee ook werkverzuim een keuze! De genoemde factoren hebben betrekking op de mate van betrokkenheid als richtinggever voor de de kans op werkverzuim."
    section_heading[i] <- "Uitkomsten van de kritieke vitaliteitsfactoren"
    img_prio[i,1] <-img[161]
    img_prio[i,2] <-img[62]
    img_prio[i,3] <-img[92]
    img_prio[i,4] <-img[18]
    img_prio[i,5] <-img[38]
    img_prio[i,6] <-img[48]
    img_prio[i,7] <-img[58]
    img_prio[i,8] <-img[76]
    img_prio[i,9] <-img[40]
    img_prio[i,10] <-img[50]
    img_prio[i,11] <-img[90]
    img_prio[i,12] <-img[162]
    img_prio[i,13] <-img[163]
  }
  if(prio_run[i] == 18)
  {
    section_tekst[i] <- "De kritieke veranderfactoren maken je bewust dat veranderen een wisselwerking is tussen jouw eigen transformatie en het team/organisatie waar je werkt. De genoemde factoren geven inzicht in de mate waarin de randvoorwaarden zijn ingevuld om tot een duurzame verandering te komen binnen het team of de organisatie." 
    section_heading[i] <- "Uitkomsten van de kritieke veranderfactoren" 
    img_prio[i,1] <-img[164]
    img_prio[i,2] <-img[11]
    img_prio[i,3] <-img[21]
    img_prio[i,4] <-img[17]
    img_prio[i,5] <-img[27]
    img_prio[i,6] <-img[57]
    img_prio[i,7] <-img[5]
    img_prio[i,8] <-img[15]
    img_prio[i,9] <-img[25]
    img_prio[i,10] <-img[35]
    img_prio[i,11] <-img[45]
    img_prio[i,12] <-img[165]
    img_prio[i,13] <-img[166]
  }
  if(prio_run[i] == 19)
  {
    section_tekst[i] <- "De kritieke prestatie factoren maken je bewust dat het 'in the end' gaat om de mate waarin je in staat bent een prestatie te leveren. De genoemde factoren geven inzicht in de mate waarin je resultaatgericht ben ten opzichte van wie je bent en wat je wilt bereiken."
    section_heading[i] <- "Uitkomsten van de kritieke prestatiefactoren"
    img_prio[i,1] <-img[171]
    img_prio[i,2] <-img[61]
    img_prio[i,3] <-img[47]
    img_prio[i,4] <-img[87]
    img_prio[i,5] <-img[73]
    img_prio[i,6] <-img[55]
    img_prio[i,7] <-img[65]
    img_prio[i,8] <-img[39]
    img_prio[i,9] <-img[59]
    img_prio[i,10] <-img[69]
    img_prio[i,11] <-img[89]
    img_prio[i,12] <-img[172]
    img_prio[i,13] <-img[173]
  }
  if(prio_run[i] == 20)
  {
    section_tekst[i] <- "De kritieke waardefactoren maken je bewust dat ondernemendheid en betrokkenheid een waardegedreven fundament vraagt. Het sturen(leiderschap) en invloed uitoefenen(zeggenschap). De factoren geven inzicht in de mate waarin je vanuit je natuurlijke rol en eigen waarde beweegt."
    section_heading[i] <- "Uitkomsten van de kritieke waardenfactoren"
    img_prio[i,1] <-img[174]
    img_prio[i,2] <-img[81]
    img_prio[i,3] <-img[7]
    img_prio[i,4] <-img[97]
    img_prio[i,5] <-img[3]
    img_prio[i,6] <-img[13]
    img_prio[i,7] <-img[23]
    img_prio[i,8] <-img[53]
    img_prio[i,9] <-img[9]
    img_prio[i,10] <-img[79]
    img_prio[i,11] <-img[99]
    img_prio[i,12] <-img[175]
    img_prio[i,13] <-img[176]
  }
}

