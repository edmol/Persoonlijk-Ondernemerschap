  # 
  # 1 t/m 100 vragen
  #
  for(i in 1 : 100)
  {
    teamprintantwoorden(i,team[i],t1results[i],
                            t2results[i],
                            t3results[i],
                            t4results[i],
                            t5results[i],
                            t1results[i+156],
                            t2results[i+156],
                            t3results[i+156],
                            t4results[i+156],
                            t5results[i+156],
                            'vraag')
    img[i] <- paste(folder,'vraag',i,sep="")
  }
  # 101 - 110 Headings van de stappen
  #
  teamprintheading("Leiderschap","Regenboog","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap1.png")
  teamprintheading("Leiderschap","Regie","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap2.png")
  teamprintheading("Leiderschap","Richting","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap3.png")
  teamprintheading("Zeggenschap","Rust","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap4.png")
  teamprintheading("Zeggenschap","Ruimte","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap5.png")
  teamprintheading("Vakmanschap","Rendement","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap6.png")
  teamprintheading("Vakmanschap","Resultaten","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap7.png")
  teamprintheading("Beterschap","Reflectie","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap8.png")
  teamprintheading("Beterschap","Relaties","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap9.png")
  teamprintheading("Beterschap","Ruggengraat","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-stap10.png") 
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
  # gemiddelde ondernemerschap, behoudendheid en groeipotentieel per stap 3 stuks toraal 30
  # van 111 tot 140
  # summxa,b en c waarbij x het nummer van de stap is
  teamprintsumm("o","1a",team[101],t1results[101],t2results[101],t3results[101],t4results[101],t5results[101])
  teamprintsumm("b","1b",team[102],t1results[102],t2results[102],t3results[102],t4results[102],t5results[102])
  teamprintsumm("g","1c",team[103],t1results[103],t2results[103],t3results[103],t4results[103],t5results[103])
  img[111] <- paste(folder,'summ1a.png',sep="") 
  img[112] <- paste(folder,'summ1b.png',sep="")
  img[113] <- paste(folder,'summ1c.png',sep="")
  #
  teamprintsumm("o","2a",team[104],t1results[104],t2results[104],t3results[104],t4results[104],t5results[104])
  teamprintsumm("b","2b",team[105],t1results[105],t2results[105],t3results[105],t4results[105],t5results[105])
  teamprintsumm("g","2c",team[106],t1results[106],t2results[106],t3results[106],t4results[106],t5results[106])
  img[114] <- paste(folder,'summ2a.png',sep="") 
  img[115] <- paste(folder,'summ2b.png',sep="")
  img[116] <- paste(folder,'summ2c.png',sep="")
  #
  teamprintsumm("o","3a",team[107],t1results[107],t2results[107],t3results[107],t4results[107],t5results[107])
  teamprintsumm("b","3b",team[108],t1results[108],t2results[108],t3results[108],t4results[108],t5results[108])
  teamprintsumm("g","3c",team[109],t1results[109],t2results[109],t3results[109],t4results[109],t5results[109])
  img[117] <- paste(folder,'summ3a.png',sep="") 
  img[118] <- paste(folder,'summ3b.png',sep="")
  img[119] <- paste(folder,'summ3c.png',sep="")
  #
  teamprintsumm("o","4a",team[110],t1results[110],t2results[110],t3results[110],t4results[110],t5results[110])
  teamprintsumm("b","4b",team[111],t1results[111],t2results[111],t3results[111],t4results[111],t5results[111])
  teamprintsumm("g","4c",team[112],t1results[112],t2results[112],t3results[112],t4results[112],t5results[112])
  img[120] <- paste(folder,'summ4a.png',sep="") 
  img[121] <- paste(folder,'summ4b.png',sep="")
  img[122] <- paste(folder,'summ4c.png',sep="")
  #
  teamprintsumm("o","5a",team[113],t1results[113],t2results[113],t3results[113],t4results[113],t5results[113])
  teamprintsumm("b","5b",team[114],t1results[114],t2results[114],t3results[114],t4results[114],t5results[114])
  teamprintsumm("g","5c",team[115],t1results[115],t2results[115],t3results[115],t4results[115],t5results[115])
  img[123] <- paste(folder,'summ5a.png',sep="") 
  img[124] <- paste(folder,'summ5b.png',sep="")
  img[125] <- paste(folder,'summ5c.png',sep="")
  #
  teamprintsumm("o","6a",team[116],t1results[116],t2results[116],t3results[116],t4results[116],t5results[116])
  teamprintsumm("b","6b",team[117],t1results[117],t2results[117],t3results[117],t4results[117],t5results[117])
  teamprintsumm("g","6c",team[118],t1results[118],t2results[118],t3results[118],t4results[118],t5results[118])
  img[126] <- paste(folder,'summ6a.png',sep="") 
  img[127] <- paste(folder,'summ6b.png',sep="")
  img[128] <- paste(folder,'summ6c.png',sep="")
  #
  teamprintsumm("o","7a",team[119],t1results[119],t2results[119],t3results[119],t4results[119],t5results[119])
  teamprintsumm("b","7b",team[120],t1results[120],t2results[120],t3results[120],t4results[120],t5results[120])
  teamprintsumm("g","7c",team[121],t1results[121],t2results[121],t3results[121],t4results[121],t5results[121])
  img[129] <- paste(folder,'summ7a.png',sep="") 
  img[130] <- paste(folder,'summ7b.png',sep="")
  img[131] <- paste(folder,'summ7c.png',sep="")
  #
  teamprintsumm("o","8a",team[122],t1results[122],t2results[122],t3results[122],t4results[122],t5results[122])
  teamprintsumm("b","8b",team[123],t1results[123],t2results[123],t3results[123],t4results[123],t5results[123])
  teamprintsumm("g","8c",team[124],t1results[124],t2results[124],t3results[124],t4results[124],t5results[124])
  img[132] <- paste(folder,'summ8a.png',sep="") 
  img[133] <- paste(folder,'summ8b.png',sep="")
  img[134] <- paste(folder,'summ8c.png',sep="")
  #
  teamprintsumm("o","9a",team[125],t1results[125],t2results[125],t3results[125],t4results[125],t5results[125])
  teamprintsumm("b","9b",team[126],t1results[126],t2results[126],t3results[126],t4results[126],t5results[126])
  teamprintsumm("g","9c",team[127],t1results[127],t2results[127],t3results[127],t4results[127],t5results[127])
  img[135] <- paste(folder,'summ9a.png',sep="") 
  img[136] <- paste(folder,'summ9b.png',sep="")
  img[137] <- paste(folder,'summ9c.png',sep="")
  #
  teamprintsumm("o","10a",team[128],t1results[128],t2results[128],t3results[128],t4results[128],t5results[128])
  teamprintsumm("b","10b",team[129],t1results[129],t2results[129],t3results[129],t4results[129],t5results[129])
  teamprintsumm("g","10c",team[130],t1results[130],t2results[130],t3results[130],t4results[130],t5results[130])
  img[138] <- paste(folder,'summ10a.png',sep="") 
  img[139] <- paste(folder,'summ10b.png',sep="")
  img[140] <- paste(folder,'summ10c.png',sep="")
  #
  # Gevoel
  #
  teamprintheading("Gevoel","Kritieke succesfactor: Gevoel","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-gevoel.png")
  img[141] <- paste(folder,'head-gevoel.png',sep="")
  teamprintsumm("o","-gevoel-a",team[134],t1results[134],t2results[134],t3results[134],t4results[134],t5results[134])
  teamprintsumm("b","-gevoel-b",team[135],t1results[135],t2results[135],t3results[135],t4results[135],t5results[135])
  teamprintsumm("g","-gevoel-c",team[136],t1results[136],t2results[136],t3results[136],t4results[136],t5results[136])
  img[142] <- paste(folder,'summ-gevoel-a.png',sep="")
  img[143] <- paste(folder,'summ-gevoel-b.png',sep="")
  img[144] <- paste(folder,'summ-gevoel-c.png',sep="")
  #
  # Houding
  #
  teamprintheading("Houding","Kritieke succesfactor: Houding","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-houding.png")
  img[145] <- paste(folder,'head-houding.png',sep="")
  teamprintsumm("o","-houding-a",team[131],t1results[131],t2results[131],t3results[131],t4results[131],t5results[131])
  teamprintsumm("b","-houding-b",team[132],t1results[132],t2results[132],t3results[132],t4results[132],t5results[132])
  teamprintsumm("g","-houding-c",team[133],t1results[133],t2results[133],t3results[133],t4results[133],t5results[133])
  img[146] <- paste(folder,'summ-houding-a.png',sep="")
  img[147] <- paste(folder,'summ-houding-b.png',sep="")
  img[148] <- paste(folder,'summ-houding-c.png',sep="")
  #
  # Organisatie kenmerk
  #
  teamprintheading("Kenmerk","Kritieke succesfactor: Organisatiekenmerk","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-orgkenmerk.png")
  img[149] <- paste(folder,'head-orgkenmerk.png',sep="")
  teamprintsumm("o","okenmerka",team[137],t1results[137],t2results[137],t3results[137],t4results[137],t5results[137])
  teamprintsumm("b","okenmerkb",team[138],t1results[138],t2results[138],t3results[138],t4results[138],t5results[138])
  teamprintsumm("g","okenmerkc",team[139],t1results[139],t2results[139],t3results[139],t4results[139],t5results[139])
  img[150] <- paste(folder,'summokenmerka.png',sep="")
  img[151] <- paste(folder,'summokenmerkb.png',sep="")
  img[152] <- paste(folder,'summokenmerkc.png',sep="")
  #
  # Gedrag
  #
  teamprintheading("Gedrag","Kritieke succesfactor: Gedrag","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-gedrag.png")
  img[153] <- paste(folder,'head-gedrag.png',sep="")
  teamprintsumm("o","gedraga",team[140],t1results[140],t2results[140],t3results[140],t4results[140],t5results[140])
  teamprintsumm("b","gedragb",team[141],t1results[141],t2results[141],t3results[141],t4results[141],t5results[141])
  teamprintsumm("g","gedragc",team[142],t1results[142],t2results[142],t3results[142],t4results[142],t5results[142])
  img[154] <- paste(folder,'summgedraga.png',sep="")
  img[155] <- paste(folder,'summgedragb.png',sep="")
  img[156] <- paste(folder,'summgedragc.png',sep="")
  #
  # Effect
  #
  teamprintheading("Effect","Kritieke succesfactor Organisatie effect","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-effect.png")
  img[157] <- paste(folder,'head-effect.png',sep="")
  teamprintsumm("o","effecta",team[143],t1results[143],t2results[143],t3results[143],t4results[143],t5results[143])
  teamprintsumm("b","effectb",team[144],t1results[144],t2results[144],t3results[144],t4results[144],t5results[144])
  teamprintsumm("g","effectc",team[145],t1results[145],t2results[145],t3results[145],t4results[145],t5results[145])
  img[158] <- paste(folder,'summeffecta.png',sep="")
  img[159] <- paste(folder,'summeffectb.png',sep="")
  img[160] <- paste(folder,'summeffectc.png',sep="")
  #
  # Vitaliteit
  #
  teamprintheading("Specials","Kritieke vitaliteitsfactoren","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-vitaal.png")
  img[161] <- paste(folder,'head-vitaal.png',sep="")
  teamprintsumm("v1","vitaal1",team[149],t1results[149],t2results[149],t3results[149],t4results[149],t5results[149])
  teamprintsumm("v2","vitaal2",team[150],t1results[150],t2results[150],t3results[150],t4results[150],t5results[150])
  img[162] <- paste(folder,'summvitaal1.png',sep="")
  img[163] <- paste(folder,'summvitaal2.png',sep="")
  #
  # Duurzaamheid
  #
  teamprintheading("Specials","Kritieke veranderfactoren","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-duurzaam.png")
  img[164] <- paste(folder,'head-duurzaam.png',sep="")
  teamprintsumm("c1","duurzaam1",team[151],t1results[151],t2results[151],t3results[151],t4results[151],t5results[151])
  teamprintsumm("c2","duurzaam2",team[152],t1results[152],t2results[152],t3results[152],t4results[152],t5results[152])
  img[165] <- paste(folder,'summduurzaam1.png',sep="")
  img[166] <- paste(folder,'summduurzaam2.png',sep="")
  #
  # Transformatie
  #
  teamprintheading("Specials","Kritieke transformatiefactoren","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-transformatie.png")
  img[167] <- paste(folder,'head-transformatie.png',sep="")
  teamprintsumm("o","transformatiea",team[146],t1results[146],t2results[146],t3results[146],t4results[146],t5results[146])
  teamprintsumm("b","transformatieb",team[147],t1results[147],t2results[147],t3results[147],t4results[147],t5results[147])
  teamprintsumm("g","transformatiec",team[148],t1results[148],t2results[148],t3results[148],t4results[148],t5results[148])
  img[168] <- paste(folder,'summtransformatiea.png',sep="")
  img[169] <- paste(folder,'summtransformatieb.png',sep="")
  img[170] <- paste(folder,'summtransformatiec.png',sep="")
  #
  # Prestatie
  #
  teamprintheading("Specials","Kritieke prestatiefactoren","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-prestatie.png")
  img[171] <- paste(folder,'head-prestatie.png',sep="")
  teamprintsumm("o","prestatiea",team[153],t1results[153],t2results[153],t3results[153],t4results[153],t5results[153])
  teamprintsumm("g","prestatieb",team[154],t1results[154],t2results[154],t3results[154],t4results[154],t5results[154])
  img[172] <- paste(folder,'summprestatiea.png',sep="")
  img[173] <- paste(folder,'summprestatieb.png',sep="")
  #
  # Waarden
  #
  teamprintheading("Specials","Kritieke waardenfactoren","TEAM",t1naam,t2naam,t3naam,t4naam,t5naam,"head-waarden.png")
  img[174] <- paste(folder,'head-waarden.png',sep="")
  teamprintsumm("o","waardena",team[155],t1results[155],t2results[155],t3results[155],t4results[155],t5results[155])
  teamprintsumm("g","waardenb",team[156],t1results[156],t2results[156],t3results[156],t4results[156],t5results[156])
  img[175] <- paste(folder,'summwaardena.png',sep="")
  img[176] <- paste(folder,'summwaardenb.png',sep="")
  #
  # Grafiek ondernemendheid ( 177 )
  #
  sum01 <- data.frame(factor=c("Regenboog",
                                "Regie",
                                "Richting",
                                "Rust",
                                "Ruimte",
                                "Rendement",
                                "Resultaten",
                                "Reflectie",
                                "Relaties",
                                "Ruggengraat"),
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
                      t9=c(team[101],team[104],team[107],team[110],team[113],team[116],
                           team[119],team[122],team[125],team[128])
                      )
  img[177] <- paste(folder,"summosteps.png",sep="")
  png(filename=img[177],width=1000,height=600)
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  maintitle <- paste('De mate van ondernemendheid in het team',sep='')
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,lty=1,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% score t.o.v. het teamgemiddelde (groen)")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
         cex=1.25, horiz=TRUE, 
         col=c("red","blue","gray","brown","yellow"),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek behoudendheid ( 178 )
  #
  sum01 <- data.frame(factor=c("Regenboog",
                                "Regie",
                                "Richting",
                                "Rust",
                                "Ruimte",
                                "Rendement",
                                "Resultaten",
                                "Reflectie",
                                "Relaties",
                                "Ruggengraat"),
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
                      t9=c(team[102],team[105],team[108],team[111],team[114],team[117],
                           team[120],team[123],team[126],team[129])
                      )
  maintitle <- paste('De mate van behoudendheid in het team',sep='')
  img[178] <- paste(folder,"summbsteps.png",sep="")
  png(filename=img[178],width=1000,height=600)
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% score t.o.v. het teamgemiddelde (groen)")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)  
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
   title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
         cex=1.25, horiz=TRUE, 
         col=c("red","blue","gray","brown","yellow"),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek groeipotentieel op de 10 PO factoren (179)
  #
  sum01 <- data.frame(factor=c("Regenboog",
                                "Regie",
                                "Richting",
                                "Rust",
                                "Ruimte",
                                "Rendement",
                                "Resultaten",
                                "Reflectie",
                                "Relaties",
                                "Ruggengraat"),
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
                      t9=c(team[103],team[106],team[109],team[112],team[115],team[118],
                           team[121],team[124],team[127],team[130])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[179] <- paste(folder,'summ10steps.png',sep="")
  png(filename=img[179],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkelruimte op de PO stappen',sep='')
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte t.o.v het teamgemiddelde (groen)")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)  
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
   title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
         cex=1.25, horiz=TRUE, 
         col=c("red","blue","gray","brown","yellow"),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op houding, gedrag, kenmerk, organisatie en gevoel (180)
  # 
  sum01 <- data.frame(factor=c("Houding","Gedrag","Gevoel","Organisatie kenmerk","Organisatie effect"),
                      t1=c(t1results[133],t1results[142],t1results[136],t1results[139],t1results[145]),
                      t2=c(t2results[133],t2results[142],t2results[136],t2results[139],t2results[145]),
                      t3=c(t3results[133],t3results[142],t3results[136],t3results[139],t3results[145]),
                      t4=c(t4results[133],t4results[142],t4results[136],t4results[139],t4results[145]),
                      t5=c(t5results[133],t5results[142],t5results[136],t5results[139],t5results[145]),
                      t9=c(team[133],team[142],team[136],team[139],team[145])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[180] <- paste(folder,'summgedrag.png',sep="")
  png(filename=img[180],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkelruime kritieke succesfactoren',sep='')
  # LIne plot voorbereidenmaintitle <- paste('Team ontwikkel potentieel',sep='')
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte t.o.v. het teamgemiddelde (groen)")
  axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:5, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)  
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
   title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
         cex=1.25, horiz=TRUE, 
         col=c("red","blue","gray","brown","yellow"),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op dimensies ( 181 )
  #               
  sum01 <- data.frame(factor=c("Leiderschap","Zeggenschap","Vakmanschap","Beterschap"),
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
                      t9=c(mean(c(team[103],team[106],team[109])),
                           mean(c(team[112],team[115])),
                           mean(c(team[118],team[121])),
                           mean(c(team[124],team[127],team[130])))
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel ( 181 )
  #
  img[181] <- paste(folder,'summdimensie.png',sep="")
  png(filename=img[181],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkelruimte op de PO dimensies',sep='')
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte t.o.v. het teamgemiddelde (groen)")
  axis(1,at=1:4,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:4, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)  
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
 legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
        cex=1.25, horiz=TRUE, 
        col=c("red","blue","gray","brown","yellow"),
        pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op de kritieke factoren (182)
  #
  sum01 <- data.frame(factor=c("Vitaliteit","Verandercapaciteit","Transformatie","Prestatie","Waarden"),
                      t1=c(t1results[150],t1results[152],t1results[148],t1results[154],t1results[156]),
                      t2=c(t2results[150],t2results[152],t2results[148],t2results[154],t2results[156]),
                      t3=c(t3results[150],t3results[152],t3results[148],t3results[154],t3results[156]),
                      t4=c(t4results[150],t4results[152],t4results[148],t4results[154],t4results[156]),
                      t5=c(t5results[150],t5results[152],t5results[148],t5results[154],t5results[156]),
                      t9=c(team[150],team[152],team[148],team[154],team[156])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[182] <- paste(folder,'kfactoren.png',sep="")
  png(filename=img[182],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste('Ontwikkelruimte op de kritieke factoren',sep='')
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$t9,type="o",lwd=2,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte t.o.v. het teamgemiddelde (groen)")
   axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:5, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  points(sum01$t1, type="o",lwd=2, pch=15, lty=1, col="red")
  points(sum01$t2, type="o",lwd=2, pch=1, lty=1, col="blue")
  points(sum01$t3, type="o",lwd=2, pch=2, lty=2, col="gray")
  points(sum01$t4, type="o",lwd=2, pch=3, lty=3, col="brown")
  points(sum01$t5, type="o",lwd=2, pch=4, lty=4, col="yellow")
   title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(t1naam,t2naam,t3naam,t4naam,t5naam),
         cex=1.25, horiz=TRUE, 
         col=c("red","blue","gray","brown","yellow"),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  #
  # summary dataframe voor teamlid 1
  #
  sum01 <- data.frame(t1prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                      factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                               "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                               "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
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
  fb01 <- data.frame(t2prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
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
  fb03 <- data.frame(t3prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
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
  fb04 <- data.frame(t4prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
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
  fb05 <- data.frame(t5prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
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
  # summary dataframe voor het hele team
  #
  fb09 <- data.frame(prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(team[101],team[104],team[107],team[110],team[113],team[116],
                         team[119],team[122],team[125],team[128],team[131],team[134],
                         team[137],team[140],team[143],team[146],0,team[151],team[153],team[155]),
                     b=c(team[102],team[105],team[108],team[111],team[114],team[117],
                         team[120],team[123],team[126],team[129],team[132],team[135],
                         team[138],team[141],team[144],team[147],team[149],0,0,0),
                     g=c(team[103],team[106],team[109],team[112],team[115],team[118],
                         team[121],team[124],team[127],team[130],team[133],team[136],
                         team[139],team[142],team[145],team[148],team[150],team[152],team[154],team[156]))
  t9sum <- fb09[with(fb09, order(-g)),]
  #
  # summary voor alle ontwikkelruimtes 
  #
  t1 <- data.frame(t1prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                            "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   team=c(team[103],team[106],team[109],team[112],team[115],team[118],
                          team[121],team[124],team[127],team[130],team[133],team[136],
                          team[139],team[142],team[145],team[148],team[150],team[152],team[154],team[156]),
                   t1=c(t1results[103],t1results[106],t1results[109],t1results[112],t1results[115],t1results[118],
                        t1results[121],t1results[124],t1results[127],t1results[130],t1results[133],t1results[136],
                        t1results[139],t1results[142],t1results[145],t1results[148],t1results[150],t1results[152],t1results[154],t1results[156]),
                   t2=c(t2results[103],t2results[106],t2results[109],t2results[112],t2results[115],t2results[118],
                        t2results[121],t2results[124],t2results[127],t2results[130],t2results[133],t2results[136],
                        t2results[139],t2results[142],t2results[145],t2results[148],t2results[150],t2results[152],t2results[154],t2results[156]),
                   t3=c(t3results[103],t3results[106],t3results[109],t3results[112],t3results[115],t3results[118],
                        t3results[121],t3results[124],t3results[127],t3results[130],t3results[133],t3results[136],
                        t3results[139],t3results[142],t3results[145],t3results[148],t3results[150],t3results[152],t3results[154],t3results[156]),
                   t4=c(t4results[103],t4results[106],t4results[109],t4results[112],t4results[115],t4results[118],
                        t4results[121],t4results[124],t4results[127],t4results[130],t4results[133],t4results[136],
                        t4results[139],t4results[142],t4results[145],t4results[148],t4results[150],t4results[152],t4results[154],t4results[156]),
                   t5=c(t5results[103],t5results[106],t5results[109],t5results[112],t5results[115],t5results[118],
                        t5results[121],t5results[124],t5results[127],t5results[130],t5results[133],t5results[136],
                        t5results[139],t5results[142],t5results[145],t5results[148],t5results[150],t5results[152],t5results[154],t5results[156]))
  tg <- t1[with(t1, order(-team)),]