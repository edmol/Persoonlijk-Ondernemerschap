  # 
  # 1 t/m 100 vragen
  #
  for(i in 1 : 100)
  {
    teamprintantwoorden(i,t1results[i],
                            t2results[i],
                            t3results[i],
                            t4results[i],
                            t5results[i],
                            t6results[i],
                            t7results[i],
                            t8results[i],
                            t1results[i+156],
                            t2results[i+156],
                            t3results[i+156],
                            t4results[i+156],
                            t5results[i+156],
                            t6results[i+156],
                            t7results[i+156],
                            t8results[i+156],
                            'vraag')
    img[i] <- paste(folder,'vraag',i,sep="")
  }
  # 101 - 110 Headings van de stappen
  #
  teamprintheading("1. Regenboog",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap1.png")
  teamprintheading("2. Regie",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap2.png")
  teamprintheading("3. Richting",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap3.png")
  teamprintheading("4. Rust",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap4.png")
  teamprintheading("5. Ruimte",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap5.png")
  teamprintheading("6. Rendement",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap6.png")
  teamprintheading("7. Resultaten",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap7.png")
  teamprintheading("8. Reflectie",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap8.png")
  teamprintheading("9. Relaties",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap9.png")
  teamprintheading("10. Ruggengraat",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-stap10.png") 
  img[101] <- paste(folder,'head-stap1.png',sep="")
  img[102] <- paste(folder,'head-stap2.png',sep="")
  img[103] <- paste(folder,'head-stap3.png',sep="")
  img[104] <- paste(folder,'head-stap4.png',sep="")
  img[105] <- paste(folder,'head-stap5.png',sep="")
  img[106] <- paste(folder,'head-stap6.png',sep="")
  img[107] <- paste(folder,'head-stap7.png',sep="")
  img[108] <- paste(folder,'head-stap8.png',sep="")
  img[109] <- paste(folder,'head-stap9.png',sep="")
  img[110] <- paste(folder,'head-stap10.png',sep="")
  #
  # gemiddelde ondernemerschap, betrokkenheid en groeipotentieel per stap 3 stuks toraal 30
  # van 111 tot 140
  # summxa,b en c waarbij x het nummer van de stap is
  teamprintsumm("o","1a",t1results[101],t2results[101],t3results[101],t4results[101],t5results[101],t6results[101],t7results[101],t8results[101])
  teamprintsumm("b","1b",t1results[102],t2results[102],t3results[102],t4results[102],t5results[102],t6results[102],t7results[102],t8results[102])
  teamprintsumm("g","1c",t1results[103],t2results[103],t3results[103],t4results[103],t5results[103],t6results[103],t7results[103],t8results[103])
  img[111] <- paste(folder,'summ1a.png',sep="") 
  img[112] <- paste(folder,'summ1b.png',sep="")
  img[113] <- paste(folder,'summ1c.png',sep="")
  #
  teamprintsumm("o","2a",t1results[104],t2results[104],t3results[104],t4results[104],t5results[104],t6results[104],t7results[104],t8results[104])
  teamprintsumm("b","2b",t1results[105],t2results[105],t3results[105],t4results[105],t5results[105],t6results[105],t7results[105],t8results[105])
  teamprintsumm("g","2c",t1results[106],t2results[106],t3results[106],t4results[106],t5results[106],t6results[106],t7results[106],t8results[106])
  img[114] <- paste(folder,'summ2a.png',sep="") 
  img[115] <- paste(folder,'summ2b.png',sep="")
  img[116] <- paste(folder,'summ2c.png',sep="")
  #
  teamprintsumm("o","3a",t1results[107],t2results[107],t3results[107],t4results[107],t5results[107],t6results[107],t7results[107],t8results[107])
  teamprintsumm("b","3b",t1results[108],t2results[108],t3results[108],t4results[108],t5results[108],t6results[108],t7results[108],t8results[108])
  teamprintsumm("g","3c",t1results[109],t2results[109],t3results[109],t4results[109],t5results[109],t6results[109],t7results[109],t8results[109])
  img[117] <- paste(folder,'summ3a.png',sep="") 
  img[118] <- paste(folder,'summ3b.png',sep="")
  img[119] <- paste(folder,'summ3c.png',sep="")
  #
  teamprintsumm("o","4a",t1results[110],t2results[110],t3results[110],t4results[110],t5results[110],t6results[110],t7results[110],t8results[110])
  teamprintsumm("b","4b",t1results[111],t2results[111],t3results[111],t4results[111],t5results[111],t6results[111],t7results[111],t8results[111])
  teamprintsumm("g","4c",t1results[112],t2results[112],t3results[112],t4results[112],t5results[112],t6results[112],t7results[112],t8results[112])
  img[120] <- paste(folder,'summ4a.png',sep="") 
  img[121] <- paste(folder,'summ4b.png',sep="")
  img[122] <- paste(folder,'summ4c.png',sep="")
  #
  teamprintsumm("o","5a",t1results[113],t2results[113],t3results[113],t4results[113],t5results[113],t6results[113],t7results[113],t8results[113])
  teamprintsumm("b","5b",t1results[114],t2results[114],t3results[114],t4results[114],t5results[114],t6results[114],t7results[114],t8results[114])
  teamprintsumm("g","5c",t1results[115],t2results[115],t3results[115],t4results[115],t5results[115],t6results[115],t7results[115],t8results[115])
  img[123] <- paste(folder,'summ5a.png',sep="") 
  img[124] <- paste(folder,'summ5b.png',sep="")
  img[125] <- paste(folder,'summ5c.png',sep="")
  #
  teamprintsumm("o","6a",t1results[116],t2results[116],t3results[116],t4results[116],t5results[116],t6results[116],t7results[116],t8results[116])
  teamprintsumm("b","6b",t1results[117],t2results[117],t3results[117],t4results[117],t5results[117],t6results[117],t7results[117],t8results[117])
  teamprintsumm("g","6c",t1results[118],t2results[118],t3results[118],t4results[118],t5results[118],t6results[118],t7results[118],t8results[118])
  img[126] <- paste(folder,'summ6a.png',sep="") 
  img[127] <- paste(folder,'summ6b.png',sep="")
  img[128] <- paste(folder,'summ6c.png',sep="")
  #
  teamprintsumm("o","7a",t1results[119],t2results[119],t3results[119],t4results[119],t5results[119],t6results[119],t7results[119],t8results[119])
  teamprintsumm("b","7b",t1results[120],t2results[120],t3results[120],t4results[120],t5results[120],t6results[120],t7results[120],t8results[120])
  teamprintsumm("g","7c",t1results[121],t2results[121],t3results[121],t4results[121],t5results[121],t6results[121],t7results[121],t8results[121])
  img[129] <- paste(folder,'summ7a.png',sep="") 
  img[130] <- paste(folder,'summ7b.png',sep="")
  img[131] <- paste(folder,'summ7c.png',sep="")
  #
  teamprintsumm("o","8a",t1results[122],t2results[122],t3results[122],t4results[122],t5results[122],t6results[122],t7results[122],t8results[122])
  teamprintsumm("b","8b",t1results[123],t2results[123],t3results[123],t4results[123],t5results[123],t6results[123],t7results[123],t8results[123])
  teamprintsumm("g","8c",t1results[124],t2results[124],t3results[124],t4results[124],t5results[124],t6results[124],t7results[124],t8results[124])
  img[132] <- paste(folder,'summ8a.png',sep="") 
  img[133] <- paste(folder,'summ8b.png',sep="")
  img[134] <- paste(folder,'summ8c.png',sep="")
  #
  teamprintsumm("o","9a",t1results[125],t2results[125],t3results[125],t4results[125],t5results[125],t6results[125],t7results[125],t8results[125])
  teamprintsumm("b","9b",t1results[126],t2results[126],t3results[126],t4results[126],t5results[126],t6results[126],t7results[126],t8results[126])
  teamprintsumm("g","9c",t1results[127],t2results[127],t3results[127],t4results[127],t5results[127],t6results[127],t7results[127],t8results[127])
  img[135] <- paste(folder,'summ9a.png',sep="") 
  img[136] <- paste(folder,'summ9b.png',sep="")
  img[137] <- paste(folder,'summ9c.png',sep="")
  #
  teamprintsumm("o","10a",t1results[128],t2results[128],t3results[128],t4results[128],t5results[128],t6results[128],t7results[128],t8results[128])
  teamprintsumm("b","10b",t1results[129],t2results[129],t3results[129],t4results[129],t5results[129],t6results[129],t7results[129],t8results[129])
  teamprintsumm("g","10c",t1results[130],t2results[130],t3results[130],t4results[130],t5results[130],t6results[130],t7results[130],t8results[130])
  img[138] <- paste(folder,'summ10a.png',sep="") 
  img[139] <- paste(folder,'summ10b.png',sep="")
  img[140] <- paste(folder,'summ10c.png',sep="")
  #
  # Gevoel
  #
  teamprintheading("GEVOEL",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-gevoel.png")
  img[141] <- paste(folder,'head-gevoel.png',sep="")
  teamprintsumm("o","-gevoel-a",t1results[134],t2results[134],t3results[134],t4results[134],t5results[134],t6results[134],t7results[134],t8results[134])
  teamprintsumm("b","-gevoel-b",t1results[135],t2results[135],t3results[135],t4results[135],t5results[135],t6results[135],t7results[135],t8results[135])
  teamprintsumm("g","-gevoel-c",t1results[136],t2results[136],t3results[136],t4results[136],t5results[136],t6results[136],t7results[136],t8results[136])
  img[142] <- paste(folder,'summ-gevoel-a.png',sep="")
  img[143] <- paste(folder,'summ-gevoel-b.png',sep="")
  img[144] <- paste(folder,'summ-gevoel-c.png',sep="")
  #
  # Houding
  #
  teamprintheading("HOUDING",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-houding.png")
  img[145] <- paste(folder,'head-houding.png',sep="")
  teamprintsumm("o","-houding-a",t1results[131],t2results[131],t3results[131],t4results[131],t5results[131],t6results[131],t7results[131],t8results[131])
  teamprintsumm("b","-houding-b",t1results[132],t2results[132],t3results[132],t4results[132],t5results[132],t6results[132],t7results[132],t8results[132])
  teamprintsumm("g","-houding-c",t1results[133],t2results[133],t3results[133],t4results[133],t5results[133],t6results[133],t7results[133],t8results[133])
  img[146] <- paste(folder,'summ-houding-a.png',sep="")
  img[147] <- paste(folder,'summ-houding-b.png',sep="")
  img[148] <- paste(folder,'summ-houding-c.png',sep="")
  #
  # Organisatie kenmerk
  #
  teamprintheading("Organisatie kenmerk",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-orgkenmerk.png")
  img[149] <- paste(folder,'head-orgkenmerk.png',sep="")
  teamprintsumm("o","okenmerka",t1results[137],t2results[137],t3results[137],t4results[137],t5results[137],t6results[137],t7results[137],t8results[137])
  teamprintsumm("b","okenmerkb",t1results[138],t2results[138],t3results[138],t4results[138],t5results[138],t6results[138],t7results[138],t8results[138])
  teamprintsumm("g","okenmerkc",t1results[139],t2results[139],t3results[139],t4results[139],t5results[139],t6results[139],t7results[139],t8results[139])
  img[150] <- paste(folder,'summokenmerka.png',sep="")
  img[151] <- paste(folder,'summokenmerkb.png',sep="")
  img[152] <- paste(folder,'summokenmerkc.png',sep="")
  #
  # Gedrag
  #
  teamprintheading("GEDRAG",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-gedrag.png")
  img[153] <- paste(folder,'head-gedrag.png',sep="")
  teamprintsumm("o","gedraga",t1results[140],t2results[140],t3results[140],t4results[140],t5results[140],t6results[140],t7results[140],t8results[140])
  teamprintsumm("b","gedragb",t1results[141],t2results[141],t3results[141],t4results[141],t5results[141],t6results[141],t7results[141],t8results[141])
  teamprintsumm("g","gedragc",t1results[142],t2results[142],t3results[142],t4results[142],t5results[142],t6results[142],t7results[142],t8results[142])
  img[154] <- paste(folder,'summgedraga.png',sep="")
  img[155] <- paste(folder,'summgedragb.png',sep="")
  img[156] <- paste(folder,'summgedragc.png',sep="")
  #
  # Effect
  #
  teamprintheading("EFFECT",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-effect.png")
  img[157] <- paste(folder,'head-effect.png',sep="")
  teamprintsumm("o","effecta",t1results[143],t2results[143],t3results[143],t4results[143],t5results[143],t6results[143],t7results[143],t8results[143])
  teamprintsumm("b","effectb",t1results[144],t2results[144],t3results[144],t4results[144],t5results[144],t6results[144],t7results[144],t8results[144])
  teamprintsumm("g","effectc",t1results[145],t2results[145],t3results[145],t4results[145],t5results[145],t6results[145],t7results[145],t8results[145])
  img[158] <- paste(folder,'summeffecta.png',sep="")
  img[159] <- paste(folder,'summeffectb.png',sep="")
  img[160] <- paste(folder,'summeffectc.png',sep="")
  #
  # Vitaliteit
  #
  teamprintheading("VITALITEIT",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-vitaal.png")
  img[161] <- paste(folder,'head-vitaal.png',sep="")
  teamprintsumm("v1","vitaal1",t1results[149],t2results[149],t3results[149],t4results[149],t5results[149],t6results[149],t7results[149],t8results[149])
  teamprintsumm("v2","vitaal2",t1results[150],t2results[150],t3results[150],t4results[150],t5results[150],t6results[150],t7results[150],t8results[150])
  img[162] <- paste(folder,'summvitaal1.png',sep="")
  img[163] <- paste(folder,'summvitaal2.png',sep="")
  #
  # Duurzaamheid
  #
  teamprintheading("DUURZAAM",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-duurzaam.png")
  img[164] <- paste(folder,'head-duurzaam.png',sep="")
  teamprintsumm("c1","duurzaam1",t1results[151],t2results[151],t3results[151],t4results[151],t5results[151],t6results[151],t7results[151],t8results[151])
  teamprintsumm("c2","duurzaam2",t1results[152],t2results[152],t3results[152],t4results[152],t5results[152],t6results[152],t7results[152],t8results[152])
  img[165] <- paste(folder,'summduurzaam1.png',sep="")
  img[166] <- paste(folder,'summduurzaam2.png',sep="")
  #
  # Transformatie
  #
  teamprintheading("Transformatie",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-transformatie.png")
  img[167] <- paste(folder,'head-transformatie.png',sep="")
  teamprintsumm("o","transformatiea",t1results[146],t2results[146],t3results[146],t4results[146],t5results[146],t6results[146],t7results[146],t8results[146])
  teamprintsumm("b","transformatieb",t1results[147],t2results[147],t3results[147],t4results[147],t5results[147],t6results[147],t7results[147],t8results[147])
  teamprintsumm("g","transformatiec",t1results[148],t2results[148],t3results[148],t4results[148],t5results[148],t6results[148],t7results[148],t8results[148])
  img[168] <- paste(folder,'summtransformatiea.png',sep="")
  img[169] <- paste(folder,'summtransformatieb.png',sep="")
  img[170] <- paste(folder,'summtransformatiec.png',sep="")
  #
  # Prestatie
  #
  teamprintheading("Prestatie",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-prestatie.png")
  img[171] <- paste(folder,'head-prestatie.png',sep="")
  teamprintsumm("o","prestatiea",t1results[153],t2results[153],t3results[153],t4results[153],t5results[153],t6results[153],t7results[153],t8results[153])
  teamprintsumm("g","prestatieb",t1results[154],t2results[154],t3results[154],t4results[154],t5results[154],t6results[154],t7results[154],t8results[154])
  img[172] <- paste(folder,'summprestatiea.png',sep="")
  img[173] <- paste(folder,'summprestatieb.png',sep="")
  #
  # Waarden
  #
  teamprintheading("Waarden",t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam,"head-waarden.png")
  img[174] <- paste(folder,'head-waarden.png',sep="")
  teamprintsumm("o","waardena",t1results[155],t2results[155],t3results[155],t4results[155],t5results[155],t6results[155],t7results[155],t8results[155])
  teamprintsumm("g","waardenb",t1results[156],t2results[156],t3results[156],t4results[156],t5results[156],t6results[156],t7results[156],t8results[156])
  img[175] <- paste(folder,'summwaardena.png',sep="")
  img[176] <- paste(folder,'summwaardenb.png',sep="")
  #
  # Grafiek ondernemendheid ( 177 )
  #
  sum01 <- data.frame(factor=c(1,2,3,4,5,6,7,8,9,10),
                      t1=c(t1results[101],t1results[104],t1results[107],t1results[110],t1results[113],t1results[116],
                             t1results[119],t1results[122],t1results[125],t1results[128]),
                      t2=c(t2results[101],t2results[104],t2results[107],t2results[110],t2results[113],t2results[116],
                           t2results[119],t2results[122],t2results[125],t2results[128]),
                      t3=c(t3results[101],t3results[104],t3results[107],t3results[110],t3results[113],t3results[116],
                           t3results[119],t3results[122],t3results[125],t3results[128]),
                      t4=c(t4results[101],t4results[104],t4results[107],t4results[110],t4results[113],t4results[116],
                           t4results[119],t4results[122],t4results[125],t4results[128]), 
                      t5=c(t5results[101],t5results[104],t5results[107],t5results[110],t5results[113],t5results[116],
                           t5results[119],t5results[122],t5results[125],t5results[128]),
                      t6=c(t6results[101],t6results[104],t6results[107],t6results[110],t6results[113],t6results[116],
                           t6results[119],t6results[122],t6results[125],t6results[128]),
                      t7=c(t7results[101],t7results[104],t7results[107],t7results[110],t7results[113],t7results[116],
                           t7results[119],t7results[122],t7results[125],t7results[128]),
                      t8=c(t8results[101],t8results[104],t8results[107],t8results[110],t8results[113],t8results[116],
                           t8results[119],t8results[122],t8results[125],t8results[128]),
                      t9=c(mean(c(t1results[101],t2results[101],t3results[101],t4results[101],t5results[101],t6results[101],t7results[101],t8results[101])),
                           mean(c(t1results[104],t2results[104],t3results[104],t4results[104],t5results[104],t6results[104],t7results[104],t8results[104])),
                           mean(c(t1results[107],t2results[107],t3results[107],t4results[107],t5results[107],t6results[107],t7results[107],t8results[107])),
                           mean(c(t1results[110],t2results[110],t3results[110],t4results[110],t5results[110],t6results[110],t7results[110],t8results[110])),
                           mean(c(t1results[113],t2results[113],t3results[113],t4results[113],t5results[113],t6results[113],t7results[113],t8results[113])),
                           mean(c(t1results[116],t2results[116],t3results[116],t4results[116],t5results[116],t6results[116],t7results[116],t8results[116])),
                           mean(c(t1results[119],t2results[119],t3results[119],t4results[119],t5results[119],t6results[119],t7results[119],t8results[119])),
                           mean(c(t1results[122],t2results[122],t3results[122],t4results[122],t5results[122],t6results[122],t7results[122],t8results[122])),
                           mean(c(t1results[125],t2results[125],t3results[125],t4results[125],t5results[125],t6results[125],t7results[125],t8results[125])),
                           mean(c(t1results[128],t2results[128],t3results[128],t4results[128],t5results[128],t6results[128],t7results[128],t8results[128]))
                           )
                      )
  img[177] <- paste(folder,"summosteps.png",sep="")
  png(filename=img[177])
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  maintitle <- paste('De mate van ondernemendheid in het team',sep='')
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5,sum01$t6,sum01$t7,sum01$t8)
  plot(sum01$t9,type="o",lty=1,col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="10 factoren van persoonlijk ondernemerschap",ylab="% score t.o.v. het gemiddelde(groen)")
  axis(1,at=1:10,lab=sum01$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
  points(sum01$t1, type="p", pch=15, lty=1, col=c(26))
  points(sum01$t2, type="p", pch=1, lty=1, col=c(52))
  points(sum01$t3, type="p", pch=2, lty=2, col=c(103))
  points(sum01$t4, type="p", pch=3, lty=3, col=c(115))
  points(sum01$t5, type="p", pch=4, lty=4, col=c(153))
  points(sum01$t6, type="p", pch=5, lty=5, col=c(503))
  points(sum01$t7, type="p", pch=6, lty=6, col=c(578))
  points(sum01$t8, type="p", pch=8, lty=1, col=c(625))
  title(main=maintitle, col.main="blue", font.main=3)
  legend(8, 30, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
         cex=0.8, 
         col=c(26,52,103,115,153,503,578,625),
         pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  # Grafiek betrokkenheid ( 178 )
  #
  sum01 <- data.frame(factor=c(1,2,3,4,5,6,7,8,9,10),
                      t1=c(t1results[102],t1results[105],t1results[108],t1results[111],t1results[114],t1results[117],
                             t1results[120],t1results[123],t1results[126],t1results[129]),
                      t2=c(t2results[102],t2results[105],t2results[108],t2results[111],t2results[114],t2results[117],
                           t2results[120],t2results[123],t2results[126],t2results[129]),
                      t3=c(t3results[102],t3results[105],t3results[108],t3results[111],t3results[114],t3results[117],
                           t3results[120],t3results[123],t3results[126],t3results[129]),
                      t4=c(t4results[102],t4results[105],t4results[108],t4results[111],t4results[114],t4results[117],
                           t4results[120],t4results[123],t4results[126],t4results[129]),
                      t5=c(t5results[102],t5results[105],t5results[108],t5results[111],t5results[114],t5results[117],
                           t5results[120],t5results[123],t5results[126],t5results[129]),
                      t6=c(t6results[102],t6results[105],t6results[108],t6results[111],t6results[114],t6results[117],
                           t6results[120],t6results[123],t6results[126],t6results[129]),
                      t7=c(t7results[102],t7results[105],t7results[108],t7results[111],t7results[114],t7results[117],
                           t7results[120],t7results[123],t7results[126],t7results[129]),
                      t8=c(t8results[102],t8results[105],t8results[108],t8results[111],t8results[114],t8results[117],
                           t8results[120],t8results[123],t8results[126],t8results[129]),
                      t9=c(mean(c(t1results[102],t2results[102],t3results[102],t4results[102],t5results[102],t6results[102],t7results[102],t8results[102])),
                           mean(c(t1results[105],t2results[105],t3results[105],t4results[105],t5results[105],t6results[105],t7results[105],t8results[105])),
                           mean(c(t1results[108],t2results[108],t3results[108],t4results[108],t5results[108],t6results[108],t7results[108],t8results[108])),
                           mean(c(t1results[111],t2results[111],t3results[111],t4results[111],t5results[111],t6results[111],t7results[111],t8results[111])),
                           mean(c(t1results[114],t2results[114],t3results[114],t4results[114],t5results[114],t6results[114],t7results[114],t8results[114])),
                           mean(c(t1results[117],t2results[117],t3results[117],t4results[117],t5results[117],t6results[117],t7results[117],t8results[117])),
                           mean(c(t1results[120],t2results[120],t3results[120],t4results[120],t5results[120],t6results[120],t7results[120],t8results[120])),
                           mean(c(t1results[123],t2results[123],t3results[123],t4results[123],t5results[123],t6results[123],t7results[123],t8results[123])),
                           mean(c(t1results[126],t2results[126],t3results[126],t4results[126],t5results[126],t6results[126],t7results[126],t8results[126])),
                           mean(c(t1results[129],t2results[129],t3results[129],t4results[129],t5results[129],t6results[129],t7results[129],t8results[129]))
                      )
                      )
  maintitle <- paste('De mate van betrokkenheid in het team',sep='')
  img[178] <- paste(folder,"summbsteps.png",sep="")
  png(filename=img[178])
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5,sum01$t6,sum01$t7,sum01$t8)
  plot(sum01$t9,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="10 factoren van persoonlijk ondernemerschap",ylab="% score t.o.v. het gemiddelde(groen)")
  axis(1,at=1:10,lab=sum01$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
  points(sum01$t1, type="p", pch=15, lty=1, col=c(26))
  points(sum01$t2, type="p", pch=1, lty=1, col=c(52))
  points(sum01$t3, type="p", pch=2, lty=2, col=c(103))
  points(sum01$t4, type="p", pch=3, lty=3, col=c(115))
  points(sum01$t5, type="p", pch=4, lty=4, col=c(153))
  points(sum01$t6, type="p", pch=5, lty=5, col=c(503))
  points(sum01$t7, type="p", pch=6, lty=6, col=c(578))
  points(sum01$t8, type="p", pch=8, lty=1, col=c(625))
  title(main=maintitle, col.main="orange", font.main=3)
  legend(8, 30, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
         cex=0.8, 
         col=c(26,52,103,115,153,503,578,625),
         pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  # Grafiek groeipotentieel op de 10 PO factoren (179)
  #
  sum01 <- data.frame(factor=c(1,2,3,4,5,6,7,8,9,10),
                      t1=c(t1results[103],t1results[106],t1results[109],t1results[112],t1results[115],t1results[118],
                             t1results[121],t1results[124],t1results[127],t1results[130]),
                      t2=c(t2results[103],t2results[106],t2results[109],t2results[112],t2results[115],t2results[118],
                           t2results[121],t2results[124],t2results[127],t2results[130]),
                      t3=c(t3results[103],t3results[106],t3results[109],t3results[112],t3results[115],t3results[118],
                           t3results[121],t3results[124],t3results[127],t3results[130]),
                      t4=c(t4results[103],t4results[106],t4results[109],t4results[112],t4results[115],t4results[118],
                           t4results[121],t4results[124],t4results[127],t4results[130]),
                      t5=c(t5results[103],t5results[106],t5results[109],t5results[112],t5results[115],t5results[118],
                           t5results[121],t5results[124],t5results[127],t5results[130]),
                      t6=c(t6results[103],t6results[106],t6results[109],t6results[112],t6results[115],t6results[118],
                           t6results[121],t6results[124],t6results[127],t6results[130]),
                      t7=c(t7results[103],t7results[106],t7results[109],t7results[112],t7results[115],t7results[118],
                           t7results[121],t7results[124],t7results[127],t7results[130]),
                      t8=c(t8results[103],t8results[106],t8results[109],t8results[112],t8results[115],t8results[118],
                           t8results[121],t8results[124],t8results[127],t8results[130]),
                      t9=c(mean(c(t1results[103],t2results[103],t3results[103],t4results[103],t5results[103],t6results[103],t7results[103],t8results[103])),
                           mean(c(t1results[106],t2results[106],t3results[106],t4results[106],t5results[106],t6results[106],t7results[106],t8results[106])),
                           mean(c(t1results[109],t2results[109],t3results[109],t4results[109],t5results[109],t6results[109],t7results[109],t8results[109])),
                           mean(c(t1results[112],t2results[112],t3results[112],t4results[112],t5results[112],t6results[112],t7results[112],t8results[112])),
                           mean(c(t1results[115],t2results[115],t3results[115],t4results[115],t5results[115],t6results[115],t7results[115],t8results[115])),
                           mean(c(t1results[118],t2results[118],t3results[118],t4results[118],t5results[118],t6results[118],t7results[118],t8results[118])),
                           mean(c(t1results[121],t2results[121],t3results[121],t4results[121],t5results[121],t6results[121],t7results[121],t8results[121])),
                           mean(c(t1results[124],t2results[124],t3results[124],t4results[124],t5results[124],t6results[124],t7results[124],t8results[124])),
                           mean(c(t1results[127],t2results[127],t3results[127],t4results[127],t5results[127],t6results[127],t7results[127],t8results[127])),
                           mean(c(t1results[130],t2results[130],t3results[130],t4results[130],t5results[130],t6results[130],t7results[130],t8results[130]))
                      )
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[179] <- paste(folder,'summ10steps.png',sep="")
  png(filename=img[179])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkelmogelijkheden op de 10 factoren',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5,sum01$t6,sum01$t7,sum01$t8)
  plot(sum02$t9,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="10 factoren van persoonlijk ondernemerschap",ylab="% ontwikkel potentieel t.o.v het gemiddelde (groen)")
  axis(1,at=1:10,lab=sum02$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
  points(sum02$t1, type="p", pch=15, lty=1, col=c(26))
  points(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  points(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  points(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  points(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  points(sum02$t6, type="p", pch=5, lty=5, col=c(503))
  points(sum02$t7, type="p", pch=6, lty=6, col=c(578))
  points(sum02$t8, type="p", pch=8, lty=1, col=c(625))
  title(main=maintitle, col.main=c(139), font.main=3)
  legend(8, 25, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
         cex=0.8, 
         col=c(26,52,103,115,153,503,578,625),
         pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  # Grafiek op houding, gedrag, kenmerk, organisatie en gevoel (180)
  # 
  sum01 <- data.frame(factor=c(1,2,3,4,5),
                      t1=c(t1results[133],t1results[136],t1results[139],t1results[142],t1results[145]),
                      t2=c(t2results[133],t2results[136],t2results[139],t2results[142],t2results[145]),
                      t3=c(t3results[133],t3results[136],t3results[139],t3results[142],t3results[145]),
                      t4=c(t4results[133],t4results[136],t4results[139],t4results[142],t4results[145]),
                      t5=c(t5results[133],t5results[136],t5results[139],t5results[142],t5results[145]),
                      t6=c(t6results[133],t6results[136],t6results[139],t6results[142],t6results[145]),
                      t7=c(t7results[133],t7results[136],t7results[139],t7results[142],t7results[145]),
                      t8=c(t8results[133],t8results[136],t8results[139],t8results[142],t8results[145]),
                      t9=c(mean(c(t1results[133],t2results[133],t3results[133],t4results[133],t5results[133],t6results[133],t7results[133],t8results[133])),
                           mean(c(t1results[136],t2results[136],t3results[136],t4results[136],t5results[136],t6results[136],t7results[136],t8results[136])),
                           mean(c(t1results[139],t2results[139],t3results[139],t4results[139],t5results[139],t6results[139],t7results[139],t8results[139])),
                           mean(c(t1results[142],t2results[142],t3results[142],t4results[142],t5results[142],t6results[142],t7results[142],t8results[142])),
                           mean(c(t1results[145],t2results[145],t3results[145],t4results[145],t5results[145],t6results[145],t7results[145],t8results[145]))
                      )
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[180] <- paste(folder,'summgedrag.png',sep="")
  png(filename=img[180])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkel potentieel',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5,sum02$t6,sum02$t7,sum02$t8)
  plot(sum02$t9,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="Gevoel, Houding, Organisatie, Gedrag en Effect",ylab="% ontwikkel potentieel t.o.v. gemiddelden (groen)")
  axis(1,at=1:5,lab=sum02$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
  points(sum02$t1, type="p", pch=15, lty=1, col=c(26))
  points(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  points(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  points(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  points(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  points(sum02$t6, type="p", pch=5, lty=5, col=c(503))
  points(sum02$t7, type="p", pch=6, lty=6, col=c(578))
  points(sum02$t8, type="p", pch=8, lty=1, col=c(625))
  title(main=maintitle, col.main=c(139), font.main=1)
  legend(4, 20, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
         cex=0.8, 
         col=c(26,52,103,115,153,503,578,625),
         pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  # Grafiek op dimensies ( 181 )
  #
  t1avg <- mean(c(
                  mean(c(t1results[103],t1results[106],t1results[109])),
                  mean(c(t2results[103],t2results[106],t2results[109])),
                  mean(c(t3results[103],t3results[106],t3results[109])),
                  mean(c(t4results[103],t4results[106],t4results[109])),
                  mean(c(t5results[103],t5results[106],t5results[109])),
                  mean(c(t6results[103],t6results[106],t6results[109])),
                  mean(c(t7results[103],t7results[106],t7results[109])),
                  mean(c(t8results[103],t8results[106],t8results[109]))))
  
  t2avg <- mean(c(
                  mean(c(t1results[112],t1results[115])),
                  mean(c(t2results[112],t2results[115])),
                  mean(c(t3results[112],t3results[115])),
                  mean(c(t4results[112],t4results[115])),
                  mean(c(t5results[112],t5results[115])),
                  mean(c(t6results[112],t6results[115])),
                  mean(c(t7results[112],t7results[115])),
                  mean(c(t8results[112],t8results[115]))))
  t3avg <- mean(c(
                mean(c(t1results[118],t1results[121])),
                mean(c(t2results[118],t2results[121])),
                mean(c(t3results[118],t3results[121])),
                mean(c(t4results[118],t4results[121])),
                mean(c(t5results[118],t5results[121])),
                mean(c(t6results[118],t6results[121])),
                mean(c(t7results[118],t7results[121])),
                mean(c(t8results[118],t8results[121]))))
  
  t4avg <- mean(c(
                mean(c(t1results[124],t1results[127],t1results[130])),
                mean(c(t2results[124],t2results[127],t2results[130])),
                mean(c(t3results[124],t3results[127],t3results[130])),
                mean(c(t4results[124],t4results[127],t4results[130])),
                mean(c(t5results[124],t5results[127],t5results[130])),
                mean(c(t6results[124],t6results[127],t6results[130])),
                mean(c(t7results[124],t7results[127],t7results[130])),
                mean(c(t8results[124],t8results[127],t8results[130]))))                
                  
  sum01 <- data.frame(factor=c(1,2,3,4),
                      t1=c(mean(c(t1results[103],t1results[106],t1results[109])),
                             mean(c(t1results[112],t1results[115])),
                             mean(c(t1results[118],t1results[121])),
                             mean(c(t1results[124],t1results[127],t1results[130]))),
                      t2=c(mean(c(t2results[103],t2results[106],t2results[109])),
                           mean(c(t2results[112],t2results[115])),
                           mean(c(t2results[118],t2results[121])),
                           mean(c(t2results[124],t2results[127],t2results[130]))),
                      t3=c(mean(c(t3results[103],t3results[106],t3results[109])),
                           mean(c(t3results[112],t3results[115])),
                           mean(c(t3results[118],t3results[121])),
                           mean(c(t3results[124],t3results[127],t3results[130]))),
                      t4=c(mean(c(t4results[103],t4results[106],t4results[109])),
                           mean(c(t4results[112],t4results[115])),
                           mean(c(t4results[118],t4results[121])),
                           mean(c(t4results[124],t4results[127],t4results[130]))),
                      t5=c(mean(c(t5results[103],t5results[106],t5results[109])),
                           mean(c(t5results[112],t5results[115])),
                           mean(c(t5results[118],t5results[121])),
                           mean(c(t5results[124],t5results[127],t5results[130]))),
                      t6=c(mean(c(t6results[103],t6results[106],t6results[109])),
                           mean(c(t6results[112],t6results[115])),
                           mean(c(t6results[118],t6results[121])),
                           mean(c(t6results[124],t6results[127],t6results[130]))),
                      t7=c(mean(c(t7results[103],t7results[106],t7results[109])),
                           mean(c(t7results[112],t7results[115])),
                           mean(c(t7results[118],t7results[121])),
                           mean(c(t7results[124],t7results[127],t7results[130]))),
                      t8=c(mean(c(t8results[103],t8results[106],t8results[109])),
                           mean(c(t8results[112],t8results[115])),
                           mean(c(t8results[118],t8results[121])),
                           mean(c(t8results[124],t8results[127],t8results[130]))),
                      t9=c(t1avg,t2avg,t3avg,t4avg)
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel ( 181 )
  #
  img[181] <- paste(folder,'summdimensie.png',sep="")
  png(filename=img[181])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkel potentieel - Dimensies van persoonlijk ondernemerschap',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5,sum02$t6,sum02$t7,sum02$t8)
  plot(sum02$t9,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="Dimensies persoonlijk ondernemerschap",ylab="% groei potentieel t.o.v. gemiddelden (groen)")
  axis(1,at=1:4,lab=sum02$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
 points(sum02$t1, type="p", pch=15, lty=1, col=c(26))
 points(sum02$t2, type="p", pch=1, lty=1, col=c(52))
 points(sum02$t3, type="p", pch=2, lty=2, col=c(103))
 points(sum02$t4, type="p", pch=3, lty=3, col=c(115))
 points(sum02$t5, type="p", pch=4, lty=4, col=c(153))
 points(sum02$t6, type="p", pch=5, lty=5, col=c(503))
 points(sum02$t7, type="p", pch=6, lty=6, col=c(578))
 points(sum02$t8, type="p", pch=8, lty=1, col=c(625))
 title(main=maintitle, col.main=c(139), font.main=3)
 legend(3, 20, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
        cex=0.8, 
        col=c(26,52,103,115,153,503,578,625),
        pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  # Grafiek op de kritieke factoren (182)
  #
  sum01 <- data.frame(factor=c(1,2,3,4,5),
                      t1=c(t1results[150],t1results[152],t1results[148],t1results[154],t1results[156]),
                      t2=c(t2results[150],t2results[152],t2results[148],t2results[154],t2results[156]),
                      t3=c(t3results[150],t3results[152],t3results[148],t3results[154],t3results[156]),
                      t4=c(t4results[150],t4results[152],t4results[148],t4results[154],t4results[156]),
                      t5=c(t5results[150],t5results[152],t5results[148],t5results[154],t5results[156]),
                      t6=c(t6results[150],t6results[152],t6results[148],t6results[154],t6results[156]),
                      t7=c(t7results[150],t7results[152],t7results[148],t7results[154],t7results[156]),
                      t8=c(t8results[150],t8results[152],t8results[148],t8results[154],t8results[156]),
                      t9=c(mean(c(t1results[150],t2results[150],t3results[150],t4results[150],t5results[150],t6results[150],t7results[150],t8results[150])),
                           mean(c(t1results[152],t2results[152],t3results[152],t4results[152],t5results[152],t6results[152],t7results[152],t8results[152])),
                           mean(c(t1results[148],t2results[148],t3results[148],t4results[148],t5results[148],t6results[148],t7results[148],t8results[148])),
                           mean(c(t1results[154],t2results[154],t3results[154],t4results[154],t5results[154],t6results[154],t7results[154],t8results[154])),
                           mean(c(t1results[156],t2results[156],t3results[156],t4results[156],t5results[156],t6results[156],t7results[156],t8results[156]))
                      )
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[182] <- paste(folder,'kfactoren.png',sep="")
  png(filename=img[182])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkel potentieel op kritieken factoren (specials)',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5,sum02$t6,sum02$t7,sum02$t8)
  plot(sum02$t9,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="Kritieke factor",ylab="% groei potentieel t.o.v. gemiddelde(groen)")
  axis(1,at=1:5,lab=sum02$factor)
  axis(2, las=1,at=5*0:g_range[2])
  box()
  points(sum02$t1, type="p", pch=15, lty=1, col=c(26))
  points(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  points(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  points(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  points(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  points(sum02$t6, type="p", pch=5, lty=5, col=c(503))
  points(sum02$t7, type="p", pch=6, lty=6, col=c(578))
  points(sum02$t8, type="p", pch=8, lty=1, col=c(625))
  title(main=maintitle, col.main=c(139), font.main=3)
  legend(4, 20, c(t1naam,t2naam,t3naam,t4naam,t5naam,t6naam,t7naam,t8naam),
         cex=0.8, 
         col=c(26,52,103,115,153,503,578,625),
         pch=c(15,1,2,3,4,5,6,8))
  dev.off()
  #
  #
  # summary dataframe voor teamlid 1
  #
  sum01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                               "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                               "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                               "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                      o=c(t1results[101],t1results[104],t1results[107],t1results[110],t1results[113],t1results[116],
                          t1results[119],t1results[122],t1results[125],t1results[128],t1results[131],t1results[134],
                          t1results[137],t1results[140],t1results[143],t1results[146],0,t1results[151],t1results[153],t1results[155]),
                      b=c(t1results[102],t1results[105],t1results[108],t1results[111],t1results[114],t1results[117],
                          t1results[120],t1results[123],t1results[126],t1results[129],t1results[132],t1results[135],
                          t1results[138],t1results[141],t1results[144],t1results[147],t1results[149],0,0,0),
                      g=c(t1results[103],t1results[106],t1results[109],t1results[112],t1results[115],t1results[118],
                          t1results[121],t1results[124],t1results[127],t1results[130],t1results[133],t1results[136],
                          t1results[139],t1results[142],t1results[145],t1results[148],t1results[150],t1results[152],t1results[154],t1results[156]))
  t1sum <- sum01[with(sum01, order(-g)),]
  #
  # summary dataframe voor teamlid 2
  #
  fb01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t2results[101],t2results[104],t2results[107],t2results[110],t2results[113],t2results[116],
                         t2results[119],t2results[122],t2results[125],t2results[128],t2results[131],t2results[134],
                         t2results[137],t2results[140],t2results[143],t2results[146],0,t2results[151],t2results[153],t2results[155]),
                     b=c(t2results[102],t2results[105],t2results[108],t2results[111],t2results[114],t2results[117],
                         t2results[120],t2results[123],t2results[126],t2results[129],t2results[132],t2results[135],
                         t2results[138],t2results[141],t2results[144],t2results[147],t2results[149],0,0,0),
                     g=c(t2results[103],t2results[106],t2results[109],t2results[112],t2results[115],t2results[118],
                         t2results[121],t2results[124],t2results[127],t2results[130],t2results[133],t2results[136],
                         t2results[139],t2results[142],t2results[145],t2results[148],t2results[150],t2results[152],t2results[154],t2results[156]))
  t2sum <- fb01[with(fb01, order(-g)),]
  #
  # summary dataframe voor teamlid 3
  #
  fb03 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t3results[101],t3results[104],t3results[107],t3results[110],t3results[113],t3results[116],
                         t3results[119],t3results[122],t3results[125],t3results[128],t3results[131],t3results[134],
                         t3results[137],t3results[140],t3results[143],t3results[146],0,t3results[151],t3results[153],t3results[155]),
                     b=c(t3results[102],t3results[105],t3results[108],t3results[111],t3results[114],t3results[117],
                         t3results[120],t3results[123],t3results[126],t3results[129],t3results[132],t3results[135],
                         t3results[138],t3results[141],t3results[144],t3results[147],t3results[149],0,0,0),
                     g=c(t3results[103],t3results[106],t3results[109],t3results[112],t3results[115],t3results[118],
                         t3results[121],t3results[124],t3results[127],t3results[130],t3results[133],t3results[136],
                         t3results[139],t3results[142],t3results[145],t3results[148],t3results[150],t3results[152],t3results[154],t3results[156]))
  t3sum <- fb03[with(fb03, order(-g)),]
  #
  # summary dataframe voor teamlid 4
  #
  fb04 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t4results[101],t4results[104],t4results[107],t4results[110],t4results[113],t4results[116],
                         t4results[119],t4results[122],t4results[125],t4results[128],t4results[131],t4results[134],
                         t4results[137],t4results[140],t4results[143],t4results[146],0,t4results[151],t4results[153],t4results[155]),
                     b=c(t4results[102],t4results[105],t4results[108],t4results[111],t4results[114],t4results[117],
                         t4results[120],t4results[123],t4results[126],t4results[129],t4results[132],t4results[135],
                         t4results[138],t4results[141],t4results[144],t4results[147],t4results[149],0,0,0),
                     g=c(t4results[103],t4results[106],t4results[109],t4results[112],t4results[115],t4results[118],
                         t4results[121],t4results[124],t4results[127],t4results[130],t4results[133],t4results[136],
                         t4results[139],t4results[142],t4results[145],t4results[148],t4results[150],t4results[152],t4results[154],t4results[156]))
  t4sum <- fb04[with(fb04, order(-g)),]
  #
  # summary dataframe voor teamlid 5
  #
  fb05 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t5results[101],t5results[104],t5results[107],t5results[110],t5results[113],t5results[116],
                         t5results[119],t5results[122],t5results[125],t5results[128],t5results[131],t5results[134],
                         t5results[137],t5results[140],t5results[143],t5results[146],0,t5results[151],t5results[153],t5results[155]),
                     b=c(t5results[102],t5results[105],t5results[108],t5results[111],t5results[114],t5results[117],
                         t5results[120],t5results[123],t5results[126],t5results[129],t5results[132],t5results[135],
                         t5results[138],t5results[141],t5results[144],t5results[147],t5results[149],0,0,0),
                     g=c(t5results[103],t5results[106],t5results[109],t5results[112],t5results[115],t5results[118],
                         t5results[121],t5results[124],t5results[127],t5results[130],t5results[133],t5results[136],
                         t5results[139],t5results[142],t5results[145],t5results[148],t5results[150],t5results[152],t5results[154],t5results[156]))
  t5sum <- fb05[with(fb05, order(-g)),]
  #
  # summary dataframe voor teamlid 6
  #
  fb06 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t6results[101],t6results[104],t6results[107],t6results[110],t6results[113],t6results[116],
                         t6results[119],t6results[122],t6results[125],t6results[128],t6results[131],t6results[134],
                         t6results[137],t6results[140],t6results[143],t6results[146],0,t6results[151],t6results[153],t6results[155]),
                     b=c(t6results[102],t6results[105],t6results[108],t6results[111],t6results[114],t6results[117],
                         t6results[120],t6results[123],t6results[126],t6results[129],t6results[132],t6results[135],
                         t6results[138],t6results[141],t6results[144],t6results[147],t6results[149],0,0,0),
                     g=c(t6results[103],t6results[106],t6results[109],t6results[112],t6results[115],t6results[118],
                         t6results[121],t6results[124],t6results[127],t6results[130],t6results[133],t6results[136],
                         t6results[139],t6results[142],t6results[145],t6results[148],t6results[150],t6results[152],t6results[154],t6results[156]))
  t6sum <- fb06[with(fb06, order(-g)),]
  #
  # summary dataframe voor teamlid 7
  #
  fb07 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t7results[101],t7results[104],t7results[107],t7results[110],t7results[113],t7results[116],
                         t7results[119],t7results[122],t7results[125],t7results[128],t7results[131],t7results[134],
                         t7results[137],t7results[140],t7results[143],t7results[146],0,t7results[151],t7results[153],t7results[155]),
                     b=c(t7results[102],t7results[105],t7results[108],t7results[111],t7results[114],t7results[117],
                         t7results[120],t7results[123],t7results[126],t7results[129],t7results[132],t7results[135],
                         t7results[138],t7results[141],t7results[144],t7results[147],t7results[149],0,0,0),
                     g=c(t7results[103],t7results[106],t7results[109],t7results[112],t7results[115],t7results[118],
                         t7results[121],t7results[124],t7results[127],t7results[130],t7results[133],t7results[136],
                         t7results[139],t7results[142],t7results[145],t7results[148],t7results[150],t7results[152],t7results[154],t7results[156]))
  t7sum <- fb07[with(fb07, order(-g)),]
  #
  # summary dataframe voor teamlid 8
  #
  fb08 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(t8results[101],t8results[104],t8results[107],t8results[110],t8results[113],t8results[116],
                         t8results[119],t8results[122],t8results[125],t8results[128],t8results[131],t8results[134],
                         t8results[137],t8results[140],t8results[143],t8results[146],0,t8results[151],t8results[153],t8results[155]),
                     b=c(t8results[102],t8results[105],t8results[108],t8results[111],t8results[114],t8results[117],
                         t8results[120],t8results[123],t8results[126],t8results[129],t8results[132],t8results[135],
                         t8results[138],t8results[141],t8results[144],t8results[147],t8results[149],0,0,0),
                     g=c(t8results[103],t8results[106],t8results[109],t8results[112],t8results[115],t8results[118],
                         t8results[121],t8results[124],t8results[127],t8results[130],t8results[133],t8results[136],
                         t8results[139],t8results[142],t8results[145],t8results[148],t8results[150],t8results[152],t8results[154],t8results[156]))
  t8sum <- fb08[with(fb08, order(-g)),]
