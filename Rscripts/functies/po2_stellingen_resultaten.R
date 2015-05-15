# 
# 1 t/m 100 vragen
#
for(i in 1 : 100)
{
  printantwoorden(i,rresults[i],
                  f1results[i],
                  f2results[i],
                  rresults[i+156],
                  f1results[i+156],
                  f2results[i+156],
                  'vraag')
}
# 101 - 110 Headings van de stappen
#
printheading("Leiderschap","Regenboog zien",rvnaam,f1vnaam,f2vnaam,"head-stap1.png")
printheading("Leiderschap","Regie voeren",rvnaam,f1vnaam,f2vnaam,"head-stap2.png")
printheading("Leiderschap","Richting vaststellen",rvnaam,f1vnaam,f2vnaam,"head-stap3.png")
printheading("Zeggenschap","Rust geven",rvnaam,f1vnaam,f2vnaam,"head-stap4.png")
printheading("Zeggenschap","Ruimte creeren",rvnaam,f1vnaam,f2vnaam,"head-stap5.png")
printheading("Vakmanschap","Rendement vaststellen",rvnaam,f1vnaam,f2vnaam,"head-stap6.png")
printheading("Vakmanschap","Resultaat boeken",rvnaam,f1vnaam,f2vnaam,"head-stap7.png")
printheading("Vakmanschap","Reflectie vragen/geven",rvnaam,f1vnaam,f2vnaam,"head-stap8.png")
printheading("Beterschap","Relaties houden",rvnaam,f1vnaam,f2vnaam,"head-stap9.png")
printheading("Beterschap","Ruggengraat tonen",rvnaam,f1vnaam,f2vnaam,"head-stap10.png") 
#
# gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
# van 111 tot 140
# summxa,b en c waarbij x het nummer van de stap is
printsumm("o","1a",rresults[101],f1results[101],f2results[101])
printsumm("b","1b",rresults[102],f1results[102],f2results[102])
printsumm("g","1c",rresults[103],f1results[103],f2results[103])
#
printsumm("o","2a",rresults[104],f1results[104],f2results[104])
printsumm("b","2b",rresults[105],f1results[105],f2results[105])
printsumm("g","2c",rresults[106],f1results[106],f2results[106])
#
printsumm("o","3a",rresults[107],f1results[107],f2results[107])
printsumm("b","3b",rresults[108],f1results[108],f2results[108])
printsumm("g","3c",rresults[109],f1results[109],f2results[109])
#
printsumm("o","4a",rresults[110],f1results[110],f2results[110])
printsumm("b","4b",rresults[111],f1results[111],f2results[111])
printsumm("g","4c",rresults[112],f1results[112],f2results[112])
#
printsumm("o","5a",rresults[113],f1results[113],f2results[113])
printsumm("b","5b",rresults[114],f1results[114],f2results[114])
printsumm("g","5c",rresults[115],f1results[115],f2results[115])
#
printsumm("o","6a",rresults[116],f1results[116],f2results[116])
printsumm("b","6b",rresults[117],f1results[117],f2results[117])
printsumm("g","6c",rresults[118],f1results[118],f2results[118])
#
printsumm("o","7a",rresults[119],f1results[119],f2results[119])
printsumm("b","7b",rresults[120],f1results[120],f2results[120])
printsumm("g","7c",rresults[121],f1results[121],f2results[121])
#
printsumm("o","8a",rresults[122],f1results[122],f2results[122])
printsumm("b","8b",rresults[123],f1results[123],f2results[123])
printsumm("g","8c",rresults[124],f1results[124],f2results[124])
#
printsumm("o","9a",rresults[125],f1results[125],f2results[125])
printsumm("b","9b",rresults[126],f1results[126],f2results[126])
printsumm("g","9c",rresults[127],f1results[127],f2results[127])
#
printsumm("o","10a",rresults[128],f1results[128],f2results[128])
printsumm("b","10b",rresults[129],f1results[129],f2results[129])
printsumm("g","10c",rresults[130],f1results[130],f2results[130])
#
# Gevoel
#
printheading("Gevoel","Kritieke succesfactor: Gevoel",rvnaam,f1vnaam,f2vnaam,"head-gevoel.png")
printsumm("o","-gevoel-a",rresults[134],f1results[134],f2results[134])
printsumm("b","-gevoel-b",rresults[135],f1results[135],f2results[135])
printsumm("g","-gevoel-c",rresults[136],f1results[136],f2results[136])
#
# Houding
#
printheading("Houding","Kritieke succesfactor: Houding",rvnaam,f1vnaam,f2vnaam,"head-houding.png")
printsumm("o","-houding-a",rresults[131],f1results[131],f2results[131])
printsumm("b","-houding-b",rresults[132],f1results[132],f2results[132])
printsumm("g","-houding-c",rresults[133],f1results[133],f2results[133])
#
# Organisatie kenmerk
#
printheading("Beeld","Kritieke succesfactor: Beeld",rvnaam,f1vnaam,f2vnaam,"head-orgkenmerk.png")
printsumm("o","okenmerka",rresults[137],f1results[137],f2results[137])
printsumm("b","okenmerkb",rresults[138],f1results[138],f2results[138])
printsumm("g","okenmerkc",rresults[139],f1results[139],f2results[139])
#
# Gedrag
#
printheading("Gedrag","Kritieke succesfactor: Gedrag",rvnaam,f1vnaam,f2vnaam,"head-gedrag.png")
printsumm("o","gedraga",rresults[140],f1results[140],f2results[140])
printsumm("b","gedragb",rresults[141],f1results[141],f2results[141])
printsumm("g","gedragc",rresults[142],f1results[142],f2results[142])
#
# Effect
#
printheading("Uiting","Kritieke succesfactor: Uiting",rvnaam,f1vnaam,f2vnaam,"head-effect.png")
printsumm("o","effecta",rresults[143],f1results[143],f2results[143])
printsumm("b","effectb",rresults[144],f1results[144],f2results[144])
printsumm("g","effectc",rresults[145],f1results[145],f2results[145])
#
# Vitaliteit
#
printheading("Vitaliteit","Kritieke vitaliteitsfactoren",rvnaam,f1vnaam,f2vnaam,"head-vitaal.png")
printsumm("v1","vitaal1",rresults[149],f1results[149],f2results[149])
printsumm("v2","vitaal2",rresults[150],f1results[150],f2results[150])
#
# Duurzaamheid
#
printheading("Veranderen","Kritieke veranderfactoren",rvnaam,f1vnaam,f2vnaam,"head-duurzaam.png")
printsumm("c1","duurzaam1",rresults[151],f1results[151],f2results[151])
printsumm("c2","duurzaam2",rresults[152],f1results[152],f2results[152])
#
# Transformatie
#
printheading("Transformatie","Kritieke transformatiefactoren",rvnaam,f1vnaam,f2vnaam,"head-transformatie.png")
printsumm("o","transformatiea",rresults[146],f1results[146],f2results[146])
printsumm("b","transformatieb",rresults[147],f1results[147],f2results[147])
printsumm("g","transformatiec",rresults[148],f1results[148],f2results[148])
#
# Prestatie
#
printheading("Prestatie","Kritieke prestatiefactoren",rvnaam,f1vnaam,f2vnaam,"head-prestatie.png")
printsumm("o","prestatiea",rresults[153],f1results[153],f2results[153])
printsumm("g","prestatieb",rresults[154],f1results[154],f2results[154])
#
# Waarden
#
printheading("Waarden","Kritieke waarden factoren",rvnaam,f1vnaam,f2vnaam,"head-waarden.png")
printsumm("o","waardena",rresults[155],f1results[155],f2results[155])
printsumm("g","waardenb",rresults[156],f1results[156],f2results[156])