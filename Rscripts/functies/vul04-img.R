  # 
  # 1 t/m 100 vragen
  #
  for(i in 1 : 100)
  {
    teamprintantwoorden(i,rrresults[i],
                            f1results[i],
                            f2results[i],
                            f3results[i],
                            f4results[i],
                            rrresults[i+156],
                            f1results[i+156],
                            f2results[i+156],
                            f3results[i+156],
                            f4results[i+156],
                            'vraag')
    img[i] <- paste(folder,'vraag',i,sep="")
  }
  # 101 - 110 Headings van de stappen
  #
  teamprintheading("1. Regenboog",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap1.png")
  teamprintheading("2. Regie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap2.png")
  teamprintheading("3. Richting",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap3.png")
  teamprintheading("4. Rust",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap4.png")
  teamprintheading("5. Ruimte",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap5.png")
  teamprintheading("6. Rendement",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap6.png")
  teamprintheading("7. Resultaten",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap7.png")
  teamprintheading("8. Reflectie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap8.png")
  teamprintheading("9. Relaties",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap9.png")
  teamprintheading("10. Ruggengraat",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-stap10.png") 
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
  teamprintsumm("o","1a",rrresults[101],f1results[101],f2results[101],f3results[101],f4results[101])
  teamprintsumm("b","1b",rrresults[102],f1results[102],f2results[102],f3results[102],f4results[102])
  teamprintsumm("g","1c",rrresults[103],f1results[103],f2results[103],f3results[103],f4results[103])
  img[111] <- paste(folder,'summ1a.png',sep="") 
  img[112] <- paste(folder,'summ1b.png',sep="")
  img[113] <- paste(folder,'summ1c.png',sep="")
  #
  teamprintsumm("o","2a",rrresults[104],f1results[104],f2results[104],f3results[104],f4results[104])
  teamprintsumm("b","2b",rrresults[105],f1results[105],f2results[105],f3results[105],f4results[105])
  teamprintsumm("g","2c",rrresults[106],f1results[106],f2results[106],f3results[106],f4results[106])
  img[114] <- paste(folder,'summ2a.png',sep="") 
  img[115] <- paste(folder,'summ2b.png',sep="")
  img[116] <- paste(folder,'summ2c.png',sep="")
  #
  teamprintsumm("o","3a",rrresults[107],f1results[107],f2results[107],f3results[107],f4results[107])
  teamprintsumm("b","3b",rrresults[108],f1results[108],f2results[108],f3results[108],f4results[108])
  teamprintsumm("g","3c",rrresults[109],f1results[109],f2results[109],f3results[109],f4results[109])
  img[117] <- paste(folder,'summ3a.png',sep="") 
  img[118] <- paste(folder,'summ3b.png',sep="")
  img[119] <- paste(folder,'summ3c.png',sep="")
  #
  teamprintsumm("o","4a",rrresults[110],f1results[110],f2results[110],f3results[110],f4results[110])
  teamprintsumm("b","4b",rrresults[111],f1results[111],f2results[111],f3results[111],f4results[111])
  teamprintsumm("g","4c",rrresults[112],f1results[112],f2results[112],f3results[112],f4results[112])
  img[120] <- paste(folder,'summ4a.png',sep="") 
  img[121] <- paste(folder,'summ4b.png',sep="")
  img[122] <- paste(folder,'summ4c.png',sep="")
  #
  teamprintsumm("o","5a",rrresults[113],f1results[113],f2results[113],f3results[113],f4results[113])
  teamprintsumm("b","5b",rrresults[114],f1results[114],f2results[114],f3results[114],f4results[114])
  teamprintsumm("g","5c",rrresults[115],f1results[115],f2results[115],f3results[115],f4results[115])
  img[123] <- paste(folder,'summ5a.png',sep="") 
  img[124] <- paste(folder,'summ5b.png',sep="")
  img[125] <- paste(folder,'summ5c.png',sep="")
  #
  teamprintsumm("o","6a",rrresults[116],f1results[116],f2results[116],f3results[116],f4results[116])
  teamprintsumm("b","6b",rrresults[117],f1results[117],f2results[117],f3results[117],f4results[117])
  teamprintsumm("g","6c",rrresults[118],f1results[118],f2results[118],f3results[118],f4results[118])
  img[126] <- paste(folder,'summ6a.png',sep="") 
  img[127] <- paste(folder,'summ6b.png',sep="")
  img[128] <- paste(folder,'summ6c.png',sep="")
  #
  teamprintsumm("o","7a",rrresults[119],f1results[119],f2results[119],f3results[119],f4results[119])
  teamprintsumm("b","7b",rrresults[120],f1results[120],f2results[120],f3results[120],f4results[120])
  teamprintsumm("g","7c",rrresults[121],f1results[121],f2results[121],f3results[121],f4results[121])
  img[129] <- paste(folder,'summ7a.png',sep="") 
  img[130] <- paste(folder,'summ7b.png',sep="")
  img[131] <- paste(folder,'summ7c.png',sep="")
  #
  teamprintsumm("o","8a",rrresults[122],f1results[122],f2results[122],f3results[122],f4results[122])
  teamprintsumm("b","8b",rrresults[123],f1results[123],f2results[123],f3results[123],f4results[123])
  teamprintsumm("g","8c",rrresults[124],f1results[124],f2results[124],f3results[124],f4results[124])
  img[132] <- paste(folder,'summ8a.png',sep="") 
  img[133] <- paste(folder,'summ8b.png',sep="")
  img[134] <- paste(folder,'summ8c.png',sep="")
  #
  teamprintsumm("o","9a",rrresults[125],f1results[125],f2results[125],f3results[125],f4results[125])
  teamprintsumm("b","9b",rrresults[126],f1results[126],f2results[126],f3results[126],f4results[126])
  teamprintsumm("g","9c",rrresults[127],f1results[127],f2results[127],f3results[127],f4results[127])
  img[135] <- paste(folder,'summ9a.png',sep="") 
  img[136] <- paste(folder,'summ9b.png',sep="")
  img[137] <- paste(folder,'summ9c.png',sep="")
  #
  teamprintsumm("o","10a",rrresults[128],f1results[128],f2results[128],f3results[128],f4results[128])
  teamprintsumm("b","10b",rrresults[129],f1results[129],f2results[129],f3results[129],f4results[129])
  teamprintsumm("g","10c",rrresults[130],f1results[130],f2results[130],f3results[130],f4results[130])
  img[138] <- paste(folder,'summ10a.png',sep="") 
  img[139] <- paste(folder,'summ10b.png',sep="")
  img[140] <- paste(folder,'summ10c.png',sep="")
  #
  # Gevoel
  #
  teamprintheading("GEVOEL",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-gevoel.png")
  img[141] <- paste(folder,'head-gevoel.png',sep="")
  teamprintsumm("o","-gevoel-a",rrresults[134],f1results[134],f2results[134],f3results[134],f4results[134])
  teamprintsumm("b","-gevoel-b",rrresults[135],f1results[135],f2results[135],f3results[135],f4results[135])
  teamprintsumm("g","-gevoel-c",rrresults[136],f1results[136],f2results[136],f3results[136],f4results[136])
  img[142] <- paste(folder,'summ-gevoel-a.png',sep="")
  img[143] <- paste(folder,'summ-gevoel-b.png',sep="")
  img[144] <- paste(folder,'summ-gevoel-c.png',sep="")
  #
  # Houding
  #
  teamprintheading("HOUDING",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-houding.png")
  img[145] <- paste(folder,'head-houding.png',sep="")
  teamprintsumm("o","-houding-a",rrresults[131],f1results[131],f2results[131],f3results[131],f4results[131])
  teamprintsumm("b","-houding-b",rrresults[132],f1results[132],f2results[132],f3results[132],f4results[132])
  teamprintsumm("g","-houding-c",rrresults[133],f1results[133],f2results[133],f3results[133],f4results[133])
  img[146] <- paste(folder,'summ-houding-a.png',sep="")
  img[147] <- paste(folder,'summ-houding-b.png',sep="")
  img[148] <- paste(folder,'summ-houding-c.png',sep="")
  #
  # Organisatie kenmerk
  #
  teamprintheading("Organisatie kenmerk",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-orgkenmerk.png")
  img[149] <- paste(folder,'head-orgkenmerk.png',sep="")
  teamprintsumm("o","okenmerka",rrresults[137],f1results[137],f2results[137],f3results[137],f4results[137])
  teamprintsumm("b","okenmerkb",rrresults[138],f1results[138],f2results[138],f3results[138],f4results[138])
  teamprintsumm("g","okenmerkc",rrresults[139],f1results[139],f2results[139],f3results[139],f4results[139])
  img[150] <- paste(folder,'summokenmerka.png',sep="")
  img[151] <- paste(folder,'summokenmerkb.png',sep="")
  img[152] <- paste(folder,'summokenmerkc.png',sep="")
  #
  # Gedrag
  #
  teamprintheading("GEDRAG",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-gedrag.png")
  img[153] <- paste(folder,'head-gedrag.png',sep="")
  teamprintsumm("o","gedraga",rrresults[140],f1results[140],f2results[140],f3results[140],f4results[140])
  teamprintsumm("b","gedragb",rrresults[141],f1results[141],f2results[141],f3results[141],f4results[141])
  teamprintsumm("g","gedragc",rrresults[142],f1results[142],f2results[142],f3results[142],f4results[142])
  img[154] <- paste(folder,'summgedraga.png',sep="")
  img[155] <- paste(folder,'summgedragb.png',sep="")
  img[156] <- paste(folder,'summgedragc.png',sep="")
  #
  # Effect
  #
  teamprintheading("EFFECT",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-effect.png")
  img[157] <- paste(folder,'head-effect.png',sep="")
  teamprintsumm("o","effecta",rrresults[143],f1results[143],f2results[143],f3results[143],f4results[143])
  teamprintsumm("b","effectb",rrresults[144],f1results[144],f2results[144],f3results[144],f4results[144])
  teamprintsumm("g","effectc",rrresults[145],f1results[145],f2results[145],f3results[145],f4results[145])
  img[158] <- paste(folder,'summeffecta.png',sep="")
  img[159] <- paste(folder,'summeffectb.png',sep="")
  img[160] <- paste(folder,'summeffectc.png',sep="")
  #
  # Vitaliteit
  #
  teamprintheading("VITALITEIT",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-vitaal.png")
  img[161] <- paste(folder,'head-vitaal.png',sep="")
  teamprintsumm("v1","vitaal1",rrresults[149],f1results[149],f2results[149],f3results[149],f4results[149])
  teamprintsumm("v2","vitaal2",rrresults[150],f1results[150],f2results[150],f3results[150],f4results[150])
  img[162] <- paste(folder,'summvitaal1.png',sep="")
  img[163] <- paste(folder,'summvitaal2.png',sep="")
  #
  # Duurzaamheid
  #
  teamprintheading("DUURZAAM",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-duurzaam.png")
  img[164] <- paste(folder,'head-duurzaam.png',sep="")
  teamprintsumm("c1","duurzaam1",rrresults[151],f1results[151],f2results[151],f3results[151],f4results[151])
  teamprintsumm("c2","duurzaam2",rrresults[152],f1results[152],f2results[152],f3results[152],f4results[152])
  img[165] <- paste(folder,'summduurzaam1.png',sep="")
  img[166] <- paste(folder,'summduurzaam2.png',sep="")
  #
  # Transformatie
  #
  teamprintheading("Transformatie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-transformatie.png")
  img[167] <- paste(folder,'head-transformatie.png',sep="")
  teamprintsumm("o","transformatiea",rrresults[146],f1results[146],f2results[146],f3results[146],f4results[146])
  teamprintsumm("b","transformatieb",rrresults[147],f1results[147],f2results[147],f3results[147],f4results[147])
  teamprintsumm("g","transformatiec",rrresults[148],f1results[148],f2results[148],f3results[148],f4results[148])
  img[168] <- paste(folder,'summtransformatiea.png',sep="")
  img[169] <- paste(folder,'summtransformatieb.png',sep="")
  img[170] <- paste(folder,'summtransformatiec.png',sep="")
  #
  # Prestatie
  #
  teamprintheading("Prestatie",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-prestatie.png")
  img[171] <- paste(folder,'head-prestatie.png',sep="")
  teamprintsumm("o","prestatiea",rrresults[153],f1results[153],f2results[153],f3results[153],f4results[153])
  teamprintsumm("g","prestatieb",rrresults[154],f1results[154],f2results[154],f3results[154],f4results[154])
  img[172] <- paste(folder,'summprestatiea.png',sep="")
  img[173] <- paste(folder,'summprestatieb.png',sep="")
  #
  # Waarden
  #
  teamprintheading("Waarden",rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam,"head-waarden.png")
  img[174] <- paste(folder,'head-waarden.png',sep="")
  teamprintsumm("o","waardena",rrresults[155],f1results[155],f2results[155],f3results[155],f4results[155])
  teamprintsumm("g","waardenb",rrresults[156],f1results[156],f2results[156],f3results[156],f4results[156])
  img[175] <- paste(folder,'summwaardena.png',sep="")
  img[176] <- paste(folder,'summwaardenb.png',sep="")
  #
  # Grafiek ondernemendheid ( 177 )
  #
  sum01 <- data.frame(factor=c("Regenboog","Regie","Richting","Rust","Ruimte","Rendement","Resultaten","Reflectie",
				"Relaties","Ruggengraat"),
                      t1=c(rrresults[101],rrresults[104],rrresults[107],rrresults[110],rrresults[113],rrresults[116],
                             rrresults[119],rrresults[122],rrresults[125],rrresults[128]),
                      t2=c(f1results[101],f1results[104],f1results[107],f1results[110],f1results[113],f1results[116],
                           f1results[119],f1results[122],f1results[125],f1results[128]),
                      t3=c(f2results[101],f2results[104],f2results[107],f2results[110],f2results[113],f2results[116],
                           f2results[119],f2results[122],f2results[125],f2results[128]),
                      t4=c(f3results[101],f3results[104],f3results[107],f3results[110],f3results[113],f3results[116],
                           f3results[119],f3results[122],f3results[125],f3results[128]), 
                      t5=c(f4results[101],f4results[104],f4results[107],f4results[110],f4results[113],f4results[116],
                           f4results[119],f4results[122],f4results[125],f4results[128])
                      )
  img[177] <- paste(folder,"summosteps.png",sep="")
  png(filename=img[177])
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  maintitle <- paste(rvnaam,'\'s mate van ondernemendheid',sep='')
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5)
  plot(sum01$t1,type="o",lty=1,col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Jouw mate van ondernemendheid")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum01$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
  lines(sum01$t2, type="p", pch=1, lty=1, col=c(52))
  lines(sum01$t3, type="p", pch=2, lty=2, col=c(103))
  lines(sum01$t4, type="p", pch=3, lty=3, col=c(115))
  lines(sum01$t5, type="p", pch=4, lty=4, col=c(153))
  title(main=maintitle, col.main="blue", font.main=4)
  legend(1, 20, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
         cex=0.8, 
         col=c(26,52,103,115,153),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek betrokkenheid ( 178 )
  #
  sum01 <- data.frame(factor=c("Regenboog","Regie","Richting","Rust","Ruimte","Rendement","Resultaten","Reflectie",
                                "Relaties","Ruggengraat"),
                      t1=c(rrresults[102],rrresults[105],rrresults[108],rrresults[111],rrresults[114],rrresults[117],
                             rrresults[120],rrresults[123],rrresults[126],rrresults[129]),
                      t2=c(f1results[102],f1results[105],f1results[108],f1results[111],f1results[114],f1results[117],
                           f1results[120],f1results[123],f1results[126],f1results[129]),
                      t3=c(f2results[102],f2results[105],f2results[108],f2results[111],f2results[114],f2results[117],
                           f2results[120],f2results[123],f2results[126],f2results[129]),
                      t4=c(f3results[102],f3results[105],f3results[108],f3results[111],f3results[114],f3results[117],
                           f3results[120],f3results[123],f3results[126],f3results[129]),
                      t5=c(f4results[102],f4results[105],f4results[108],f4results[111],f4results[114],f4results[117],
                           f4results[120],f4results[123],f4results[126],f4results[129])
                      )
  maintitle <- paste(rvnaam,'\'s mate van betrokkenheid',sep='')
  img[178] <- paste(folder,"summbsteps.png",sep="")
  png(filename=img[178])
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5)
  plot(sum01$t1,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Jouw mate van betrokkenheid")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum01$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
  lines(sum01$t2, type="p", pch=1, lty=1, col=c(52))
  lines(sum01$t3, type="p", pch=2, lty=2, col=c(103))
  lines(sum01$t4, type="p", pch=3, lty=3, col=c(115))
  lines(sum01$t5, type="p", pch=4, lty=4, col=c(153))
  title(main=maintitle, col.main="orange", font.main=4)
  legend(1, 20, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
         cex=0.8, 
         col=c(26,52,103,115,153),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek groeipotentieel op de 10 PO factoren (179)
  #
  sum01 <- data.frame(factor=c("Regenboog","Regie","Richting","Rust","Ruimte","Rendement","Resultaten","Reflectie",
                                "Relaties","Ruggengraat"),
                      t1=c(rrresults[103],rrresults[106],rrresults[109],rrresults[112],rrresults[115],rrresults[118],
                             rrresults[121],rrresults[124],rrresults[127],rrresults[130]),
                      t2=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                           f1results[121],f1results[124],f1results[127],f1results[130]),
                      t3=c(f2results[103],f2results[106],f2results[109],f2results[112],f2results[115],f2results[118],
                           f2results[121],f2results[124],f2results[127],f2results[130]),
                      t4=c(f3results[103],f3results[106],f3results[109],f3results[112],f3results[115],f3results[118],
                           f3results[121],f3results[124],f3results[127],f3results[130]),
                      t5=c(f4results[103],f4results[106],f4results[109],f4results[112],f4results[115],f4results[118],
                           f4results[121],f4results[124],f4results[127],f4results[130])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[179] <- paste(folder,'summ10steps.png',sep="")
  png(filename=img[179])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste(rvnaam,'\' s groeipotentieel op de PO stappen',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum01$t1,sum01$t2,sum01$t3,sum01$t4,sum01$t5)
  plot(sum02$t1,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Mogelijke groei percentage")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum02$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
  lines(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  lines(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  lines(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  lines(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  title(main=maintitle, col.main="black", font.main=4)
  legend(1, 10, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
         cex=0.8, 
         col=c(26,52,103,115,153),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op houding, gedrag, kenmerk, organisatie en gevoel (180)
  # 
  sum01 <- data.frame(factor=c("Gevoel","Houding","Organisatie","Gedrag","Effect"),
                      t1=c(rrresults[133],rrresults[136],rrresults[139],rrresults[142],rrresults[145]),
                      t2=c(f1results[133],f1results[136],f1results[139],f1results[142],f1results[145]),
                      t3=c(f2results[133],f2results[136],f2results[139],f2results[142],f2results[145]),
                      t4=c(f3results[133],f3results[136],f3results[139],f3results[142],f3results[145]),
                      t5=c(f4results[133],f4results[136],f4results[139],f4results[142],f4results[145])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[180] <- paste(folder,'summgedrag.png',sep="")
  png(filename=img[180])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste(rvnaam,'\'s groeipotentieel',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5)
  plot(sum02$t1,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkel potentieel")
  axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum02$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
  lines(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  lines(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  lines(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  lines(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  title(main=maintitle, col.main="black", font.main=4)
  legend(1, 10, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
         cex=0.8, 
         col=c(26,52,103,115,153),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op dimensies ( 181 )
  #                          
  sum01 <- data.frame(factor=c("leiderschap","Zeggenschap","Vakmanschap","Beterschap"),
                      t1=c(mean(c(rrresults[103],rrresults[106],rrresults[109])),
                             mean(c(rrresults[112],rrresults[115])),
                             mean(c(rrresults[118],rrresults[121])),
                             mean(c(rrresults[124],rrresults[127],rrresults[130]))),
                      t2=c(mean(c(f1results[103],f1results[106],f1results[109])),
                           mean(c(f1results[112],f1results[115])),
                           mean(c(f1results[118],f1results[121])),
                           mean(c(f1results[124],f1results[127],f1results[130]))),
                      t3=c(mean(c(f2results[103],f2results[106],f2results[109])),
                           mean(c(f2results[112],f2results[115])),
                           mean(c(f2results[118],f2results[121])),
                           mean(c(f2results[124],f2results[127],f2results[130]))),
                      t4=c(mean(c(f3results[103],f3results[106],f3results[109])),
                           mean(c(f3results[112],f3results[115])),
                           mean(c(f3results[118],f3results[121])),
                           mean(c(f3results[124],f3results[127],f3results[130]))),
                      t5=c(mean(c(f4results[103],f4results[106],f4results[109])),
                           mean(c(f4results[112],f4results[115])),
                           mean(c(f4results[118],f4results[121])),
                           mean(c(f4results[124],f4results[127],f4results[130])))
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel ( 181 )
  #
  img[181] <- paste(folder,'summdimensie.png',sep="")
  png(filename=img[181])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste(rvnaam,'\'s groeipotentieelop de PO dimensies',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5)
  plot(sum02$t1,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Mogelijke groei percentage")
  axis(1,at=1:4,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum02$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
 lines(sum02$t2, type="p", pch=1, lty=1, col=c(52))
 lines(sum02$t3, type="p", pch=2, lty=2, col=c(103))
 lines(sum02$t4, type="p", pch=3, lty=3, col=c(115))
 lines(sum02$t5, type="p", pch=4, lty=4, col=c(153))
 title(main=maintitle, col.main="black", font.main=4)
 legend(1, 10, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
        cex=0.8, 
        col=c(26,52,103,115,153),
        pch=c(15,1,2,3,4))
  dev.off()
  #
  # Grafiek op de kritieke factoren (182)
  #
  sum01 <- data.frame(factor=c("Vitaliteit","Veranderen","Omgevingsbewust","Presteren","Waarden"),
                      t1=c(rrresults[150],rrresults[152],rrresults[148],rrresults[154],rrresults[156]),
                      t2=c(f1results[150],f1results[152],f1results[148],f1results[154],f1results[156]),
                      t3=c(f2results[150],f2results[152],f2results[148],f2results[154],f2results[156]),
                      t4=c(f3results[150],f3results[152],f3results[148],f3results[154],f3results[156]),
                      t5=c(f4results[150],f4results[152],f4results[148],f4results[154],f4results[156])
                      )
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[182] <- paste(folder,'kfactoren.png',sep="")
  png(filename=img[182])
  sum02 <- sum01[with(sum01, order(-t9)),]
  maintitle <- paste(rvnaam,'\'s groeipotentieel op de kritieke factoren',sep='')
  # LIne plot voorbereiden
  g_range <- range(0,sum02$t1,sum02$t2,sum02$t3,sum02$t4,sum02$t5)
  plot(sum02$t1,type="o",col=c(139),ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Mogelijke groei percentage")
  axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = sum02$factor, col=c("blue"), xpd = TRUE, cex=0.8)
  box()
  lines(sum02$t2, type="p", pch=1, lty=1, col=c(52))
  lines(sum02$t3, type="p", pch=2, lty=2, col=c(103))
  lines(sum02$t4, type="p", pch=3, lty=3, col=c(115))
  lines(sum02$t5, type="p", pch=4, lty=4, col=c(153))
  title(main=maintitle, col.main="black", font.main=4)
  legend(1, 10, c(rvnaam,f1vnaam,f2vnaam,f3vnaam,f4vnaam),
         cex=0.8, 
         col=c(26,52,103,115,153),
         pch=c(15,1,2,3,4))
  dev.off()
  #
  #
  # summary dataframe voor teamlid 1
  #
  sum01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                               "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                               "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                               "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                      o=c(rrresults[101],rrresults[104],rrresults[107],rrresults[110],rrresults[113],rrresults[116],
                          rrresults[119],rrresults[122],rrresults[125],rrresults[128],rrresults[131],rrresults[134],
                          rrresults[137],rrresults[140],rrresults[143],rrresults[146],0,rrresults[151],rrresults[153],rrresults[155]),
                      b=c(rrresults[102],rrresults[105],rrresults[108],rrresults[111],rrresults[114],rrresults[117],
                          rrresults[120],rrresults[123],rrresults[126],rrresults[129],rrresults[132],rrresults[135],
                          rrresults[138],rrresults[141],rrresults[144],rrresults[147],rrresults[149],0,0,0),
                      g=c(rrresults[103],rrresults[106],rrresults[109],rrresults[112],rrresults[115],rrresults[118],
                          rrresults[121],rrresults[124],rrresults[127],rrresults[130],rrresults[133],rrresults[136],
                          rrresults[139],rrresults[142],rrresults[145],rrresults[148],rrresults[150],rrresults[152],rrresults[154],rrresults[156]))
  sum02 <- sum01[with(sum01, order(-g)),]
  #
  # summary dataframe voor teamlid 2
  #
  fb01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(f1results[101],f1results[104],f1results[107],f1results[110],f1results[113],f1results[116],
                         f1results[119],f1results[122],f1results[125],f1results[128],f1results[131],f1results[134],
                         f1results[137],f1results[140],f1results[143],f1results[146],0,f1results[151],f1results[153],f1results[155]),
                     b=c(f1results[102],f1results[105],f1results[108],f1results[111],f1results[114],f1results[117],
                         f1results[120],f1results[123],f1results[126],f1results[129],f1results[132],f1results[135],
                         f1results[138],f1results[141],f1results[144],f1results[147],f1results[149],0,0,0),
                     g=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                         f1results[121],f1results[124],f1results[127],f1results[130],f1results[133],f1results[136],
                         f1results[139],f1results[142],f1results[145],f1results[148],f1results[150],f1results[152],f1results[154],f1results[156]))
  fb02 <- fb01[with(fb01, order(-g)),]
  #
  # summary dataframe voor teamlid 3
  #
  fb03 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(f2results[101],f2results[104],f2results[107],f2results[110],f2results[113],f2results[116],
                         f2results[119],f2results[122],f2results[125],f2results[128],f2results[131],f2results[134],
                         f2results[137],f2results[140],f2results[143],f2results[146],0,f2results[151],f2results[153],f2results[155]),
                     b=c(f2results[102],f2results[105],f2results[108],f2results[111],f2results[114],f2results[117],
                         f2results[120],f2results[123],f2results[126],f2results[129],f2results[132],f2results[135],
                         f2results[138],f2results[141],f2results[144],f2results[147],f2results[149],0,0,0),
                     g=c(f2results[103],f2results[106],f2results[109],f2results[112],f2results[115],f2results[118],
                         f2results[121],f2results[124],f2results[127],f2results[130],f2results[133],f2results[136],
                         f2results[139],f2results[142],f2results[145],f2results[148],f2results[150],f2results[152],f2results[154],f2results[156]))
  fb04 <- fb03[with(fb03, order(-g)),]
  #
  # summary dataframe voor teamlid 4
  #
  fb05 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(f3results[101],f3results[104],f3results[107],f3results[110],f3results[113],f3results[116],
                         f3results[119],f3results[122],f3results[125],f3results[128],f3results[131],f3results[134],
                         f3results[137],f3results[140],f3results[143],f3results[146],0,f3results[151],f3results[153],f3results[155]),
                     b=c(f3results[102],f3results[105],f3results[108],f3results[111],f3results[114],f3results[117],
                         f3results[120],f3results[123],f3results[126],f3results[129],f3results[132],f3results[135],
                         f3results[138],f3results[141],f3results[144],f3results[147],f3results[149],0,0,0),
                     g=c(f3results[103],f3results[106],f3results[109],f3results[112],f3results[115],f3results[118],
                         f3results[121],f3results[124],f3results[127],f3results[130],f3results[133],f3results[136],
                         f3results[139],f3results[142],f3results[145],f3results[148],f3results[150],f3results[152],f3results[154],f3results[156]))
  fb06 <- fb05[with(fb05, order(-g)),]
  #
  # summary dataframe voor teamlid 5
  #
  fb07 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                              "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                              "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                     o=c(f4results[101],f4results[104],f4results[107],f4results[110],f4results[113],f4results[116],
                         f4results[119],f4results[122],f4results[125],f4results[128],f4results[131],f4results[134],
                         f4results[137],f4results[140],f4results[143],f4results[146],0,f4results[151],f4results[153],f4results[155]),
                     b=c(f4results[102],f4results[105],f4results[108],f4results[111],f4results[114],f4results[117],
                         f4results[120],f4results[123],f4results[126],f4results[129],f4results[132],f4results[135],
                         f4results[138],f4results[141],f4results[144],f4results[147],f4results[149],0,0,0),
                     g=c(f4results[103],f4results[106],f4results[109],f4results[112],f4results[115],f4results[118],
                         f4results[121],f4results[124],f4results[127],f4results[130],f4results[133],f4results[136],
                         f4results[139],f4results[142],f4results[145],f4results[148],f4results[150],f4results[152],f4results[154],f4results[156]))
  fb08 <- fb07[with(fb07, order(-g)),]
