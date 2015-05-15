# 
# 1 t/m 100 vragen
#
for(i in 1 : 100)
{
  print1antwoorden(i,rresults[i],
                   rresults[i+156],
                   'vraag')
}
# 101 - 110 Headings van de stappen
#
print1heading("Leiderschap","Regenboog zien",rvnaam,"head-stap1.png")
print1heading("Leiderschap","Regie voeren",rvnaam,"head-stap2.png")
print1heading("Leiderschap","Richting vaststellen",rvnaam,"head-stap3.png")
print1heading("Zeggenschap","Rust geven",rvnaam,"head-stap4.png")
print1heading("Zeggenschap","Ruimte creeren",rvnaam,"head-stap5.png")
print1heading("Vakmanschap","Rendement vaststellen",rvnaam,"head-stap6.png")
print1heading("Vakmanschap","Resultaat boeken",rvnaam,"head-stap7.png")
print1heading("Vakmanschap","Reflectie vragen/geven",rvnaam,"head-stap8.png")
print1heading("Beterschap","Relaties houden",rvnaam,"head-stap9.png")
print1heading("Beterschap","Ruggengraat tonen",rvnaam,"head-stap10.png") 
#
# gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
# van 111 tot 140
# summxa,b en c waarbij x het nummer van de stap is
print1summ("o","1a",rresults[101])
print1summ("b","1b",rresults[102])
print1summ("g","1c",rresults[103])
#
print1summ("o","2a",rresults[104])
print1summ("b","2b",rresults[105])
print1summ("g","2c",rresults[106])
#
print1summ("o","3a",rresults[107])
print1summ("b","3b",rresults[108])
print1summ("g","3c",rresults[109])
#
print1summ("o","4a",rresults[110])
print1summ("b","4b",rresults[111])
print1summ("g","4c",rresults[112])
#
print1summ("o","5a",rresults[113])
print1summ("b","5b",rresults[114])
print1summ("g","5c",rresults[115])
#
print1summ("o","6a",rresults[116])
print1summ("b","6b",rresults[117])
print1summ("g","6c",rresults[118])
#
print1summ("o","7a",rresults[119])
print1summ("b","7b",rresults[120])
print1summ("g","7c",rresults[121])
#
print1summ("o","8a",rresults[122])
print1summ("b","8b",rresults[123])
print1summ("g","8c",rresults[124])
#
print1summ("o","9a",rresults[125])
print1summ("b","9b",rresults[126])
print1summ("g","9c",rresults[127])
#
print1summ("o","10a",rresults[128])
print1summ("b","10b",rresults[129])
print1summ("g","10c",rresults[130])
#
# Gevoel
#
print1heading("Gevoel","Kritieke succesfactor: Gevoel",rvnaam,"head-gevoel.png")
print1summ("o","-gevoel-a",rresults[134])
print1summ("b","-gevoel-b",rresults[135])
print1summ("g","-gevoel-c",rresults[136])
#
# Houding
#
print1heading("Houding","Kritieke succesfactor: Houding",rvnaam,"head-houding.png")
print1summ("o","-houding-a",rresults[131])
print1summ("b","-houding-b",rresults[132])
print1summ("g","-houding-c",rresults[133])
#
# Organisatie kenmerk
#
print1heading("Beeld","Kritieke succesfactor: Beeld",rvnaam,"head-orgkenmerk.png")
print1summ("o","okenmerka",rresults[137])
print1summ("b","okenmerkb",rresults[138])
print1summ("g","okenmerkc",rresults[139])
#
# Gedrag
#
print1heading("Gedrag","Kritieke succesfactor: Gedrag",rvnaam,"head-gedrag.png")
print1summ("o","gedraga",rresults[140])
print1summ("b","gedragb",rresults[141])
print1summ("g","gedragc",rresults[142])
#
# Effect
#
print1heading("Uiting","Kritieke succesfactor: Uiting",rvnaam,"head-effect.png")
print1summ("o","effecta",rresults[143])
print1summ("b","effectb",rresults[144])
print1summ("g","effectc",rresults[145])
#
# Vitaliteit
#
print1heading("Vitaliteit","Kritieke vitaliteitsfactoren",rvnaam,"head-vitaal.png")
print1summ("v1","vitaal1",rresults[149])
print1summ("v2","vitaal2",rresults[150])
#
# Duurzaamheid
#
print1heading("Veranderen","Kritieke veranderfactoren",rvnaam,"head-duurzaam.png")
print1summ("c1","duurzaam1",rresults[151])
print1summ("c2","duurzaam2",rresults[152])
#
# Transformatie
#
print1heading("Transformatie","Kritieke transformatiefactoren",rvnaam,"head-transformatie.png")
print1summ("o","transformatiea",rresults[146])
print1summ("b","transformatieb",rresults[147])
print1summ("g","transformatiec",rresults[148])
#
# Prestatie
#
print1heading("Presteren","Kritieke prestatiefactoren",rvnaam,"head-prestatie.png")
print1summ("o","prestatiea",rresults[153])
print1summ("g","prestatieb",rresults[154])
#
# Waarden
#
print1heading("Waarden","Kritieke waarden factoren",rvnaam,"head-waarden.png")
print1summ("o","waardena",rresults[155])
print1summ("g","waardenb",rresults[156])