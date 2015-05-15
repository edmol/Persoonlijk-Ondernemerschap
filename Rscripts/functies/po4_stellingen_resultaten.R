#  
# 1 t/m 100 vragen
#
for(i in 1 : 100)
{
  teamprintantwoorden(i,rresults[i],
                      f1results[i],
                      f2results[i],
                      f3results[i],
                      f4results[i],
                      rresults[i+156],
                      f1results[i+156],
                      f2results[i+156],
                      f3results[i+156],
                      f4results[i+156],
                      'vraag')
}
# 101-110 Headings van de stappen
#
teamprintheading("Leiderschap","Regenboog",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap1.png")
teamprintheading("Leiderschap","Regie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap2.png")
teamprintheading("Leiderschap","Richting",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap3.png")
teamprintheading("Zeggenschap","Rust",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap4.png")
teamprintheading("Zeggenschap","Ruimte",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap5.png")
teamprintheading("Vakmanschap","Rendement",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap6.png")
teamprintheading("Vakmanschap","Resultaten",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap7.png")
teamprintheading("Vakmanschap","Reflectie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap8.png")
teamprintheading("Beterschap","Relaties",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap9.png")
teamprintheading("Beterschap","Ruggengraat",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap10.png") 
#
# gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
# van 111 tot 140
# summxa,b en c waarbij x het nummer van de stap is
teamprintsumm("o","1a",rresults[101],f1results[101],f2results[101],f3results[101],f4results[101])
teamprintsumm("b","1b",rresults[102],f1results[102],f2results[102],f3results[102],f4results[102])
teamprintsumm("g","1c",rresults[103],f1results[103],f2results[103],f3results[103],f4results[103])
#
teamprintsumm("o","2a",rresults[104],f1results[104],f2results[104],f3results[104],f4results[104])
teamprintsumm("b","2b",rresults[105],f1results[105],f2results[105],f3results[105],f4results[105])
teamprintsumm("g","2c",rresults[106],f1results[106],f2results[106],f3results[106],f4results[106])
#
teamprintsumm("o","3a",rresults[107],f1results[107],f2results[107],f3results[107],f4results[107])
teamprintsumm("b","3b",rresults[108],f1results[108],f2results[108],f3results[108],f4results[108])
teamprintsumm("g","3c",rresults[109],f1results[109],f2results[109],f3results[109],f4results[109])
#
teamprintsumm("o","4a",rresults[110],f1results[110],f2results[110],f3results[110],f4results[110])
teamprintsumm("b","4b",rresults[111],f1results[111],f2results[111],f3results[111],f4results[111])
teamprintsumm("g","4c",rresults[112],f1results[112],f2results[112],f3results[112],f4results[112])
#
teamprintsumm("o","5a",rresults[113],f1results[113],f2results[113],f3results[113],f4results[113])
teamprintsumm("b","5b",rresults[114],f1results[114],f2results[114],f3results[114],f4results[114])
teamprintsumm("g","5c",rresults[115],f1results[115],f2results[115],f3results[115],f4results[115])
#
teamprintsumm("o","6a",rresults[116],f1results[116],f2results[116],f3results[116],f4results[116])
teamprintsumm("b","6b",rresults[117],f1results[117],f2results[117],f3results[117],f4results[117])
teamprintsumm("g","6c",rresults[118],f1results[118],f2results[118],f3results[118],f4results[118])
#
teamprintsumm("o","7a",rresults[119],f1results[119],f2results[119],f3results[119],f4results[119])
teamprintsumm("b","7b",rresults[120],f1results[120],f2results[120],f3results[120],f4results[120])
teamprintsumm("g","7c",rresults[121],f1results[121],f2results[121],f3results[121],f4results[121])
#
teamprintsumm("o","8a",rresults[122],f1results[122],f2results[122],f3results[122],f4results[122])
teamprintsumm("b","8b",rresults[123],f1results[123],f2results[123],f3results[123],f4results[123])
teamprintsumm("g","8c",rresults[124],f1results[124],f2results[124],f3results[124],f4results[124])
#
teamprintsumm("o","9a",rresults[125],f1results[125],f2results[125],f3results[125],f4results[125])
teamprintsumm("b","9b",rresults[126],f1results[126],f2results[126],f3results[126],f4results[126])
teamprintsumm("g","9c",rresults[127],f1results[127],f2results[127],f3results[127],f4results[127])
#
teamprintsumm("o","10a",rresults[128],f1results[128],f2results[128],f3results[128],f4results[128])
teamprintsumm("b","10b",rresults[129],f1results[129],f2results[129],f3results[129],f4results[129])
teamprintsumm("g","10c",rresults[130],f1results[130],f2results[130],f3results[130],f4results[130])
#
# Gevoel
#
teamprintheading("Gevoel","Kritieke succesfactor: Gevoel",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-gevoel.png")
teamprintsumm("o","-gevoel-a",rresults[134],f1results[134],f2results[134],f3results[134],f4results[134])
teamprintsumm("b","-gevoel-b",rresults[135],f1results[135],f2results[135],f3results[135],f4results[135])
teamprintsumm("g","-gevoel-c",rresults[136],f1results[136],f2results[136],f3results[136],f4results[136])
#
# Houding
#
teamprintheading("Houding","Kritieke succesfactor: Houding",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-houding.png")
teamprintsumm("o","-houding-a",rresults[131],f1results[131],f2results[131],f3results[131],f4results[131])
teamprintsumm("b","-houding-b",rresults[132],f1results[132],f2results[132],f3results[132],f4results[132])
teamprintsumm("g","-houding-c",rresults[133],f1results[133],f2results[133],f3results[133],f4results[133])
#
# Organisatie kenmerk
#
teamprintheading("Beeld","Kritieke succesfactor: Beeld",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-orgkenmerk.png")
teamprintsumm("o","okenmerka",rresults[137],f1results[137],f2results[137],f3results[137],f4results[137])
teamprintsumm("b","okenmerkb",rresults[138],f1results[138],f2results[138],f3results[138],f4results[138])
teamprintsumm("g","okenmerkc",rresults[139],f1results[139],f2results[139],f3results[139],f4results[139])
#
# Gedrag
#
teamprintheading("Gedrag","Kritieke succesfactor: Gedrag",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-gedrag.png")
teamprintsumm("o","gedraga",rresults[140],f1results[140],f2results[140],f3results[140],f4results[140])
teamprintsumm("b","gedragb",rresults[141],f1results[141],f2results[141],f3results[141],f4results[141])
teamprintsumm("g","gedragc",rresults[142],f1results[142],f2results[142],f3results[142],f4results[142])
#
# Effect
#
teamprintheading("Uiting","Kritieke succesfactor: Uiting",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-effect.png")
teamprintsumm("o","effecta",rresults[143],f1results[143],f2results[143],f3results[143],f4results[143])
teamprintsumm("b","effectb",rresults[144],f1results[144],f2results[144],f3results[144],f4results[144])
teamprintsumm("g","effectc",rresults[145],f1results[145],f2results[145],f3results[145],f4results[145])
#
# Vitaliteit
#
teamprintheading("Vitaliteit","Kritieke vitaliteitsfactoren",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-vitaal.png")
teamprintsumm("v1","vitaal1",rresults[149],f1results[149],f2results[149],f3results[149],f4results[149])
teamprintsumm("v2","vitaal2",rresults[150],f1results[150],f2results[150],f3results[150],f4results[150])
#
# Duurzaamheid
#
teamprintheading("Veranderen","Kritieke veranderfactoren",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-duurzaam.png")
teamprintsumm("c1","duurzaam1",rresults[151],f1results[151],f2results[151],f3results[151],f4results[151])
teamprintsumm("c2","duurzaam2",rresults[152],f1results[152],f2results[152],f3results[152],f4results[152])
#
# Transformatie
#
teamprintheading("Transformeren","Kritieke transformatiefactoren",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-transformatie.png")
teamprintsumm("o","transformatiea",rresults[146],f1results[146],f2results[146],f3results[146],f4results[146])
teamprintsumm("b","transformatieb",rresults[147],f1results[147],f2results[147],f3results[147],f4results[147])
teamprintsumm("g","transformatiec",rresults[148],f1results[148],f2results[148],f3results[148],f4results[148])
#
# Prestatie
#
teamprintheading("Presteren","Kritieke prestatiefactoren",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-prestatie.png")
teamprintsumm("o","prestatiea",rresults[153],f1results[153],f2results[153],f3results[153],f4results[153])
teamprintsumm("g","prestatieb",rresults[154],f1results[154],f2results[154],f3results[154],f4results[154])
#
# Waarden
#
teamprintheading("Waarden","Kritieke waardenfactoren",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-waarden.png")
teamprintsumm("o","waardena",rresults[155],f1results[155],f2results[155],f3results[155],f4results[155])
teamprintsumm("g","waardenb",rresults[156],f1results[156],f2results[156],f3results[156],f4results[156])