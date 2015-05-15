  # 
  # 1 t/m 100 vragen
  #
  for(i in 1 : 100)
  {
    teamprintantwoorden(i,team[i],t1results[i],
                            t2results[i],
                            t1results[i+156],
                            t2results[i+156],
                            'vraag')
  }
  # 101 - 110 Headings van de stappen
  #
  teamprintheading("Leiderschap","Regenboog","TEAM",t1naam,t2naam,"head-stap1.png")
  teamprintheading("Leiderschap","Regie","TEAM",t1naam,t2naam,"head-stap2.png")
  teamprintheading("Leiderschap","Richting","TEAM",t1naam,t2naam,"head-stap3.png")
  teamprintheading("Zeggenschap","Rust","TEAM",t1naam,t2naam,"head-stap4.png")
  teamprintheading("Zeggenschap","Ruimte","TEAM",t1naam,t2naam,"head-stap5.png")
  teamprintheading("Vakmanschap","Rendement","TEAM",t1naam,t2naam,"head-stap6.png")
  teamprintheading("Vakmanschap","Resultaten","TEAM",t1naam,t2naam,"head-stap7.png")
  teamprintheading("Beterschap","Reflectie","TEAM",t1naam,t2naam,"head-stap8.png")
  teamprintheading("Beterschap","Relaties","TEAM",t1naam,t2naam,"head-stap9.png")
  teamprintheading("Beterschap","Ruggengraat","TEAM",t1naam,t2naam,"head-stap10.png") 
  #
  # gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
  # van 111 tot 140
  # summxa,b en c waarbij x het nummer van de stap is
  teamprintsumm("o","1a",team[101],t1results[101],t2results[101])
  teamprintsumm("b","1b",team[102],t1results[102],t2results[102])
  teamprintsumm("g","1c",team[103],t1results[103],t2results[103])
  #
  teamprintsumm("o","2a",team[104],t1results[104],t2results[104])
  teamprintsumm("b","2b",team[105],t1results[105],t2results[105])
  teamprintsumm("g","2c",team[106],t1results[106],t2results[106])
  #
  teamprintsumm("o","3a",team[107],t1results[107],t2results[107])
  teamprintsumm("b","3b",team[108],t1results[108],t2results[108])
  teamprintsumm("g","3c",team[109],t1results[109],t2results[109])
  #
  teamprintsumm("o","4a",team[110],t1results[110],t2results[110])
  teamprintsumm("b","4b",team[111],t1results[111],t2results[111])
  teamprintsumm("g","4c",team[112],t1results[112],t2results[112])
  #
  teamprintsumm("o","5a",team[113],t1results[113],t2results[113])
  teamprintsumm("b","5b",team[114],t1results[114],t2results[114])
  teamprintsumm("g","5c",team[115],t1results[115],t2results[115])
  #
  teamprintsumm("o","6a",team[116],t1results[116],t2results[116])
  teamprintsumm("b","6b",team[117],t1results[117],t2results[117])
  teamprintsumm("g","6c",team[118],t1results[118],t2results[118])
  #
  teamprintsumm("o","7a",team[119],t1results[119],t2results[119])
  teamprintsumm("b","7b",team[120],t1results[120],t2results[120])
  teamprintsumm("g","7c",team[121],t1results[121],t2results[121])
  #
  teamprintsumm("o","8a",team[122],t1results[122],t2results[122])
  teamprintsumm("b","8b",team[123],t1results[123],t2results[123])
  teamprintsumm("g","8c",team[124],t1results[124],t2results[124])
  #
  teamprintsumm("o","9a",team[125],t1results[125],t2results[125])
  teamprintsumm("b","9b",team[126],t1results[126],t2results[126])
  teamprintsumm("g","9c",team[127],t1results[127],t2results[127])
  #
  teamprintsumm("o","10a",team[128],t1results[128],t2results[128])
  teamprintsumm("b","10b",team[129],t1results[129],t2results[129])
  teamprintsumm("g","10c",team[130],t1results[130],t2results[130])
  #
  # Gevoel
  #
  teamprintheading("Gevoel","Kritieke succesfactor: Gevoel","TEAM",t1naam,t2naam,"head-gevoel.png")
  teamprintsumm("o","-gevoel-a",team[134],t1results[134],t2results[134])
  teamprintsumm("b","-gevoel-b",team[135],t1results[135],t2results[135])
  teamprintsumm("g","-gevoel-c",team[136],t1results[136],t2results[136])
  #
  # Houding
  #
  teamprintheading("Houding","Kritieke succesfactor: Houding","TEAM",t1naam,t2naam,"head-houding.png")
  teamprintsumm("o","-houding-a",team[131],t1results[131],t2results[131])
  teamprintsumm("b","-houding-b",team[132],t1results[132],t2results[132])
  teamprintsumm("g","-houding-c",team[133],t1results[133],t2results[133])
  #
  # Beeld
  #
  teamprintheading("Kenmerk","Kritieke succesfactor: Beeld","TEAM",t1naam,t2naam,"head-orgkenmerk.png")
  teamprintsumm("o","okenmerka",team[137],t1results[137],t2results[137])
  teamprintsumm("b","okenmerkb",team[138],t1results[138],t2results[138])
  teamprintsumm("g","okenmerkc",team[139],t1results[139],t2results[139])
  #
  # Gedrag
  #
  teamprintheading("Gedrag","Kritieke succesfactor: Gedrag","TEAM",t1naam,t2naam,"head-gedrag.png")
  teamprintsumm("o","gedraga",team[140],t1results[140],t2results[140])
  teamprintsumm("b","gedragb",team[141],t1results[141],t2results[141])
  teamprintsumm("g","gedragc",team[142],t1results[142],t2results[142])
  #
  # Effect
  #
  teamprintheading("Effect","Kritieke succesfactor: Uiting","TEAM",t1naam,t2naam,"head-effect.png")
  teamprintsumm("o","effecta",team[143],t1results[143],t2results[143])
  teamprintsumm("b","effectb",team[144],t1results[144],t2results[144])
  teamprintsumm("g","effectc",team[145],t1results[145],t2results[145])
  #
  # Vitaliteit
  #
  teamprintheading("Specials","Kritieke vitaliteitsfactoren","TEAM",t1naam,t2naam,"head-vitaal.png")
  teamprintsumm("v1","vitaal1",team[149],t1results[149],t2results[149])
  teamprintsumm("v2","vitaal2",team[150],t1results[150],t2results[150])
  #
  # Duurzaamheid
  #
  teamprintheading("Specials","Kritieke veranderfactoren","TEAM",t1naam,t2naam,"head-duurzaam.png")
  teamprintsumm("c1","duurzaam1",team[151],t1results[151],t2results[151])
  teamprintsumm("c2","duurzaam2",team[152],t1results[152],t2results[152])
  #
  # Transformatie
  #
  teamprintheading("Specials","Kritieke transformatiefactoren","TEAM",t1naam,t2naam,"head-transformatie.png")
  teamprintsumm("o","transformatiea",team[146],t1results[146],t2results[146])
  teamprintsumm("b","transformatieb",team[147],t1results[147],t2results[147])
  teamprintsumm("g","transformatiec",team[148],t1results[148],t2results[148])
  #
  # Prestatie
  #
  teamprintheading("Specials","Kritieke prestatiefactoren","TEAM",t1naam,t2naam,"head-prestatie.png")
  teamprintsumm("o","prestatiea",team[153],t1results[153],t2results[153])
  teamprintsumm("g","prestatieb",team[154],t1results[154],t2results[154])
  #
  # Waarden
  #
  teamprintheading("Specials","Kritieke waardenfactoren","TEAM",t1naam,t2naam,"head-waarden.png")
  teamprintsumm("o","waardena",team[155],t1results[155],t2results[155])
  teamprintsumm("g","waardenb",team[156],t1results[156],t2results[156])