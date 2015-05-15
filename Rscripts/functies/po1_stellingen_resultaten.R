# 
# 1 t/m 100 vragen
#
for(i in 1 : 100)
{
  print1antwoorden(i,rresults[i],
                   f1results[i],
                   rresults[i+156],
                   f1results[i+156],
                   'vraag')
}
# 101 - 110 Headings van de stappen
#
print1heading("Leiderschap","Regenboog zien",rvnaam,f1vnaam,"head-stap1.png")
print1heading("Leiderschap","Regie voeren",rvnaam,f1vnaam,"head-stap2.png")
print1heading("Leiderschap","Richting vaststellen",rvnaam,f1vnaam,"head-stap3.png")
print1heading("Zeggenschap","Rust geven",rvnaam,f1vnaam,"head-stap4.png")
print1heading("Zeggenschap","Ruimte creeren",rvnaam,f1vnaam,"head-stap5.png")
print1heading("Vakmanschap","Rendement vaststellen",rvnaam,f1vnaam,"head-stap6.png")
print1heading("Vakmanschap","Resultaat boeken",rvnaam,f1vnaam,"head-stap7.png")
print1heading("Vakmanschap","Reflectie vragen/geven",rvnaam,f1vnaam,"head-stap8.png")
print1heading("Beterschap","Relaties houden",rvnaam,f1vnaam,"head-stap9.png")
print1heading("Beterschap","Ruggengraat tonen",rvnaam,f1vnaam,"head-stap10.png") 
#
# gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
# van 111 tot 140
# summxa,b en c waarbij x het nummer van de stap is
print1summ("o","1a",rresults[101],f1results[101])
print1summ("b","1b",rresults[102],f1results[102])
print1summ("g","1c",rresults[103],f1results[103])
#
print1summ("o","2a",rresults[104],f1results[104])
print1summ("b","2b",rresults[105],f1results[105])
print1summ("g","2c",rresults[106],f1results[106])
#
print1summ("o","3a",rresults[107],f1results[107])
print1summ("b","3b",rresults[108],f1results[108])
print1summ("g","3c",rresults[109],f1results[109])
#
print1summ("o","4a",rresults[110],f1results[110])
print1summ("b","4b",rresults[111],f1results[111])
print1summ("g","4c",rresults[112],f1results[112])
#
print1summ("o","5a",rresults[113],f1results[113])
print1summ("b","5b",rresults[114],f1results[114])
print1summ("g","5c",rresults[115],f1results[115])
#
print1summ("o","6a",rresults[116],f1results[116])
print1summ("b","6b",rresults[117],f1results[117])
print1summ("g","6c",rresults[118],f1results[118])
#
print1summ("o","7a",rresults[119],f1results[119])
print1summ("b","7b",rresults[120],f1results[120])
print1summ("g","7c",rresults[121],f1results[121])
#
print1summ("o","8a",rresults[122],f1results[122])
print1summ("b","8b",rresults[123],f1results[123])
print1summ("g","8c",rresults[124],f1results[124])
#
print1summ("o","9a",rresults[125],f1results[125])
print1summ("b","9b",rresults[126],f1results[126])
print1summ("g","9c",rresults[127],f1results[127])
#
print1summ("o","10a",rresults[128],f1results[128])
print1summ("b","10b",rresults[129],f1results[129])
print1summ("g","10c",rresults[130],f1results[130])
#
# Gevoel
#
print1heading("Gevoel","Kritieke succesfactor: Gevoel",rvnaam,f1vnaam,"head-gevoel.png")
print1summ("o","-gevoel-a",rresults[134],f1results[134])
print1summ("b","-gevoel-b",rresults[135],f1results[135])
print1summ("g","-gevoel-c",rresults[136],f1results[136])
#
# Houding
#
print1heading("Houding","Kritieke succesfactor: Houding",rvnaam,f1vnaam,"head-houding.png")
print1summ("o","-houding-a",rresults[131],f1results[131])
print1summ("b","-houding-b",rresults[132],f1results[132])
print1summ("g","-houding-c",rresults[133],f1results[133])
#
# Organisatie kenmerk
#
print1heading("Beeld","Kritieke succesfactor: Beeld",rvnaam,f1vnaam,"head-orgkenmerk.png")
print1summ("o","okenmerka",rresults[137],f1results[137])
print1summ("b","okenmerkb",rresults[138],f1results[138])
print1summ("g","okenmerkc",rresults[139],f1results[139])
#
# Gedrag
#
print1heading("Gedrag","Kritieke succesfactor: Gedrag",rvnaam,f1vnaam,"head-gedrag.png")
print1summ("o","gedraga",rresults[140],f1results[140])
print1summ("b","gedragb",rresults[141],f1results[141])
print1summ("g","gedragc",rresults[142],f1results[142])
#
# Effect
#
print1heading("Uiting","Kritieke succesfactor: Uiting",rvnaam,f1vnaam,"head-effect.png")
print1summ("o","effecta",rresults[143],f1results[143])
print1summ("b","effectb",rresults[144],f1results[144])
print1summ("g","effectc",rresults[145],f1results[145])
#
# Vitaliteit
#
print1heading("Vitaliteit","Kritieke vitaliteitsfactoren",rvnaam,f1vnaam,"head-vitaal.png")
print1summ("v1","vitaal1",rresults[149],f1results[149])
print1summ("v2","vitaal2",rresults[150],f1results[150])
#
# Duurzaamheid
#
print1heading("Veranderen","Kritieke veranderfactoren",rvnaam,f1vnaam,"head-duurzaam.png")
print1summ("c1","duurzaam1",rresults[151],f1results[151])
print1summ("c2","duurzaam2",rresults[152],f1results[152])
#
# Transformatie
#
print1heading("Transformeren","Kritieke transformatiefactoren",rvnaam,f1vnaam,"head-transformatie.png")
print1summ("o","transformatiea",rresults[146],f1results[146])
print1summ("b","transformatieb",rresults[147],f1results[147])
print1summ("g","transformatiec",rresults[148],f1results[148])
#
# Prestatie
#
print1heading("Presteren","Kritieke prestatiefactoren",rvnaam,f1vnaam,"head-prestatie.png")
print1summ("o","prestatiea",rresults[153],f1results[153])
print1summ("g","prestatieb",rresults[154],f1results[154])
#
# Waarden
#
print1heading("Waarden","Kritieke waarden factoren",rvnaam,f1vnaam,"head-waarden.png")
print1summ("o","waardena",rresults[155],f1results[155])
print1summ("g","waardenb",rresults[156],f1results[156])