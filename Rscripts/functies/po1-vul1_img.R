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
    img[i] <- paste(folder,'vraag',i,sep="")
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
  print1summ("o","1a",rresults[101],f1results[101])
  print1summ("b","1b",rresults[102],f1results[102])
  print1summ("g","1c",rresults[103],f1results[103])
  img[111] <- paste(folder,'summ1a.png',sep="") 
  img[112] <- paste(folder,'summ1b.png',sep="")
  img[113] <- paste(folder,'summ1c.png',sep="")
  #
  print1summ("o","2a",rresults[104],f1results[104])
  print1summ("b","2b",rresults[105],f1results[105])
  print1summ("g","2c",rresults[106],f1results[106])
  img[114] <- paste(folder,'summ2a.png',sep="") 
  img[115] <- paste(folder,'summ2b.png',sep="")
  img[116] <- paste(folder,'summ2c.png',sep="")
  #
  print1summ("o","3a",rresults[107],f1results[107])
  print1summ("b","3b",rresults[108],f1results[108])
  print1summ("g","3c",rresults[109],f1results[109])
  img[117] <- paste(folder,'summ3a.png',sep="") 
  img[118] <- paste(folder,'summ3b.png',sep="")
  img[119] <- paste(folder,'summ3c.png',sep="")
  #
  print1summ("o","4a",rresults[110],f1results[110])
  print1summ("b","4b",rresults[111],f1results[111])
  print1summ("g","4c",rresults[112],f1results[112])
  img[120] <- paste(folder,'summ4a.png',sep="") 
  img[121] <- paste(folder,'summ4b.png',sep="")
  img[122] <- paste(folder,'summ4c.png',sep="")
  #
  print1summ("o","5a",rresults[113],f1results[113])
  print1summ("b","5b",rresults[114],f1results[114])
  print1summ("g","5c",rresults[115],f1results[115])
  img[123] <- paste(folder,'summ5a.png',sep="") 
  img[124] <- paste(folder,'summ5b.png',sep="")
  img[125] <- paste(folder,'summ5c.png',sep="")
  #
  print1summ("o","6a",rresults[116],f1results[116])
  print1summ("b","6b",rresults[117],f1results[117])
  print1summ("g","6c",rresults[118],f1results[118])
  img[126] <- paste(folder,'summ6a.png',sep="") 
  img[127] <- paste(folder,'summ6b.png',sep="")
  img[128] <- paste(folder,'summ6c.png',sep="")
  #
  print1summ("o","7a",rresults[119],f1results[119])
  print1summ("b","7b",rresults[120],f1results[120])
  print1summ("g","7c",rresults[121],f1results[121])
  img[129] <- paste(folder,'summ7a.png',sep="") 
  img[130] <- paste(folder,'summ7b.png',sep="")
  img[131] <- paste(folder,'summ7c.png',sep="")
  #
  print1summ("o","8a",rresults[122],f1results[122])
  print1summ("b","8b",rresults[123],f1results[123])
  print1summ("g","8c",rresults[124],f1results[124])
  img[132] <- paste(folder,'summ8a.png',sep="") 
  img[133] <- paste(folder,'summ8b.png',sep="")
  img[134] <- paste(folder,'summ8c.png',sep="")
  #
  print1summ("o","9a",rresults[125],f1results[125])
  print1summ("b","9b",rresults[126],f1results[126])
  print1summ("g","9c",rresults[127],f1results[127])
  img[135] <- paste(folder,'summ9a.png',sep="") 
  img[136] <- paste(folder,'summ9b.png',sep="")
  img[137] <- paste(folder,'summ9c.png',sep="")
  #
  print1summ("o","10a",rresults[128],f1results[128])
  print1summ("b","10b",rresults[129],f1results[129])
  print1summ("g","10c",rresults[130],f1results[130])
  img[138] <- paste(folder,'summ10a.png',sep="") 
  img[139] <- paste(folder,'summ10b.png',sep="")
  img[140] <- paste(folder,'summ10c.png',sep="")
  #
  # Gevoel
  #
  print1heading("Gevoel","Kritieke succesfactor: Gevoel",rvnaam,f1vnaam,"head-gevoel.png")
  img[141] <- paste(folder,'head-gevoel.png',sep="")
  print1summ("o","-gevoel-a",rresults[134],f1results[134])
  print1summ("b","-gevoel-b",rresults[135],f1results[135])
  print1summ("g","-gevoel-c",rresults[136],f1results[136])
  img[142] <- paste(folder,'summ-gevoel-a.png',sep="")
  img[143] <- paste(folder,'summ-gevoel-b.png',sep="")
  img[144] <- paste(folder,'summ-gevoel-c.png',sep="")
  #
  # Houding
  #
  print1heading("Houding","Kritieke succesfactor: Houding",rvnaam,f1vnaam,"head-houding.png")
  img[145] <- paste(folder,'head-houding.png',sep="")
  print1summ("o","-houding-a",rresults[131],f1results[131])
  print1summ("b","-houding-b",rresults[132],f1results[132])
  print1summ("g","-houding-c",rresults[133],f1results[133])
  img[146] <- paste(folder,'summ-houding-a.png',sep="")
  img[147] <- paste(folder,'summ-houding-b.png',sep="")
  img[148] <- paste(folder,'summ-houding-c.png',sep="")
  #
  # Organisatie kenmerk
  #
  print1heading("Kenmerk","Kritieke succesfactor: Organisatiekenmerk",rvnaam,f1vnaam,"head-orgkenmerk.png")
  img[149] <- paste(folder,'head-orgkenmerk.png',sep="")
  print1summ("o","okenmerka",rresults[137],f1results[137])
  print1summ("b","okenmerkb",rresults[138],f1results[138])
  print1summ("g","okenmerkc",rresults[139],f1results[139])
  img[150] <- paste(folder,'summokenmerka.png',sep="")
  img[151] <- paste(folder,'summokenmerkb.png',sep="")
  img[152] <- paste(folder,'summokenmerkc.png',sep="")
  #
  # Gedrag
  #
  print1heading("Gedrag","Kritieke succesfactor: Gedrag",rvnaam,f1vnaam,"head-gedrag.png")
  img[153] <- paste(folder,'head-gedrag.png',sep="")
  print1summ("o","gedraga",rresults[140],f1results[140])
  print1summ("b","gedragb",rresults[141],f1results[141])
  print1summ("g","gedragc",rresults[142],f1results[142])
  img[154] <- paste(folder,'summgedraga.png',sep="")
  img[155] <- paste(folder,'summgedragb.png',sep="")
  img[156] <- paste(folder,'summgedragc.png',sep="")
  #
  # Effect
  #
  print1heading("Effect","Kritieke succesfactor: Organisatie effect",rvnaam,f1vnaam,"head-effect.png")
  img[157] <- paste(folder,'head-effect.png',sep="")
  print1summ("o","effecta",rresults[143],f1results[143])
  print1summ("b","effectb",rresults[144],f1results[144])
  print1summ("g","effectc",rresults[145],f1results[145])
  img[158] <- paste(folder,'summeffecta.png',sep="")
  img[159] <- paste(folder,'summeffectb.png',sep="")
  img[160] <- paste(folder,'summeffectc.png',sep="")
  #
  # Vitaliteit
  #
  print1heading("Specials","Kritieke vitaliteitsfactoren",rvnaam,f1vnaam,"head-vitaal.png")
  img[161] <- paste(folder,'head-vitaal.png',sep="")
  print1summ("v1","vitaal1",rresults[149],f1results[149])
  print1summ("v2","vitaal2",rresults[150],f1results[150])
  img[162] <- paste(folder,'summvitaal1.png',sep="")
  img[163] <- paste(folder,'summvitaal2.png',sep="")
  #
  # Duurzaamheid
  #
  print1heading("Specials","Kritieke veranderfactoren",rvnaam,f1vnaam,"head-duurzaam.png")
  img[164] <- paste(folder,'head-duurzaam.png',sep="")
  print1summ("c1","duurzaam1",rresults[151],f1results[151])
  print1summ("c2","duurzaam2",rresults[152],f1results[152])
  img[165] <- paste(folder,'summduurzaam1.png',sep="")
  img[166] <- paste(folder,'summduurzaam2.png',sep="")
  #
  # Transformatie
  #
  print1heading("Specials","Kritieke transformatiefactoren",rvnaam,f1vnaam,"head-transformatie.png")
  img[167] <- paste(folder,'head-transformatie.png',sep="")
  print1summ("o","transformatiea",rresults[146],f1results[146])
  print1summ("b","transformatieb",rresults[147],f1results[147])
  print1summ("g","transformatiec",rresults[148],f1results[148])
  img[168] <- paste(folder,'summtransformatiea.png',sep="")
  img[169] <- paste(folder,'summtransformatieb.png',sep="")
  img[170] <- paste(folder,'summtransformatiec.png',sep="")
  #
  # Prestatie
  #
  print1heading("Specials","Kritieke prestatiefactoren",rvnaam,f1vnaam,"head-prestatie.png")
  img[171] <- paste(folder,'head-prestatie.png',sep="")
  print1summ("o","prestatiea",rresults[153],f1results[153])
  print1summ("g","prestatieb",rresults[154],f1results[154])
  img[172] <- paste(folder,'summprestatiea.png',sep="")
  img[173] <- paste(folder,'summprestatieb.png',sep="")
  #
  # Waarden
  #
  print1heading("Specials","Kritieke waarden factoren",rvnaam,f1vnaam,"head-waarden.png")
  img[174] <- paste(folder,'head-waarden.png',sep="")
  print1summ("o","waardena",rresults[155],f1results[155])
  print1summ("g","waardenb",rresults[156],f1results[156])
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
                      resp=c(rresults[101],rresults[104],rresults[107],rresults[110],rresults[113],rresults[116],
                             rresults[119],rresults[122],rresults[125],rresults[128]),
                      f1=c(f1results[101],f1results[104],f1results[107],f1results[110],f1results[113],f1results[116],
                           f1results[119],f1results[122],f1results[125],f1results[128]))
  img[177] <- paste(folder,"summosteps.png",sep="")
  png(filename=img[177],width=1000,height=600)
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  maintitle <- paste(rvnaam,'\'s mate van ondernemendheid',sep='')
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd=2, pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Mate van ondernemendheid")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1, 100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"),pch=22:23, lty=1:2)
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
                      resp=c(rresults[102],rresults[105],rresults[108],rresults[111],rresults[114],rresults[117],
                             rresults[120],rresults[123],rresults[126],rresults[129]),
                      f1=c(f1results[102],f1results[105],f1results[108],f1results[111],f1results[114],f1results[117],
                           f1results[120],f1results[123],f1results[126],f1results[129]))
  maintitle <- paste(rvnaam,'\'s mate van behoudendheid',sep='')
  img[178] <- paste(folder,"summbsteps.png",sep="")
  png(filename=img[178],width=1000,height=600)
  # sum02 <- sum01[with(sum01, order(-resp)),]
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd= 4, pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="Mate van behoudendheid")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1,100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"), pch=22:23, lty=1:2)
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
                      resp=c(rresults[103],rresults[106],rresults[109],rresults[112],rresults[115],rresults[118],
                             rresults[121],rresults[124],rresults[127],rresults[130]),
                      f1=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                           f1results[121],f1results[124],f1results[127],f1results[130]))
                      
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[179] <- paste(folder,'summ10steps.png',sep="")
  png(filename=img[179],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-resp)),]
  maintitle <- "Ontwikkelruimte op de PO stappen"
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd=2, pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte")
  axis(1,at=1:10,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:10, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1,100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"), pch=22:23, lty=1:2)
  dev.off()
  #
  # Grafiek op houding, gedrag, kenmerk, organisatie en gevoel (180)
  # 
  sum01 <- data.frame(factor=c("Houding","Gedrag","Gevoel","Organisatiekenmerk","Organisatie effect"),
                      resp=c(rresults[133],rresults[142],rresults[136],rresults[139],rresults[145]),
                      f1=c(f1results[133],f1results[142],f1results[136],f1results[139],f1results[145]))
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[180] <- paste(folder,'summgedrag.png',sep="")
  png(filename=img[180],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-resp)),]
  maintitle <- "Ontwikkelruimte op de kritieke succesfactoren"
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd=2,pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte")
  axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:5, par("usr")[3] - 2, srt = 20, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.5)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1,100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"), pch=22:23, lty=1:2)
  dev.off()
  #
  # Grafiek op dimensies ( 181 )
  #
  sum01 <- data.frame(factor=c("Leiderschap","Zeggenschap","Vakmanschap","Beterschap"),
                      resp=c(mean(c(rresults[103],rresults[106],rresults[109])),
                             mean(c(rresults[112],rresults[115])),
                             mean(c(rresults[118],rresults[121])),
                             mean(c(rresults[124],rresults[127],rresults[130]))),
                      f1=c(mean(c(f1results[103],f1results[106],f1results[109])),
                           mean(c(f1results[112],f1results[115])),
                           mean(c(f1results[118],f1results[121])),
                           mean(c(f1results[124],f1results[127],f1results[130]))))
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel ( 181 )
  #
  img[181] <- paste(folder,'summdimensie.png',sep="")
  png(filename=img[181],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-resp)),]
  maintitle <- "Ontwikkelruimte op de PO dimensies"
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd=2,pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte")
  axis(1,at=1:4,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:4, par("usr")[3] - 2, srt = 18, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.4)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1,100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"), pch=22:23, lty=1:2)
  dev.off()
  #
  # Grafiek op de kritieke factoren (182)
  #
  sum01 <- data.frame(factor=c("Vitaliteit","Verandercapaciteit","Transformatie","Prestatie","Waarden"),
                      resp=c(rresults[150],rresults[152],rresults[148],rresults[154],rresults[156]),
                      f1=c(f1results[150],f1results[152],f1results[148],f1results[154],f1results[156]))
  #
  # Nu sorteren van hoog naar laag op Groeipotentieel
  #
  img[182] <- paste(folder,'kfactoren.png',sep="")
  png(filename=img[182],width=1000,height=600)
  sum02 <- sum01[with(sum01, order(-resp)),]
  maintitle <- "Ontwikkelruimte op kritieke factoren (specials)"
  # LIne plot voorbereiden
  g_range <- range(10,100)
  plot(sum01$resp,type="o",lwd=2,pch=22,col="green",ylim=g_range,axes=FALSE,ann=TRUE,xlab="",ylab="% ontwikkelruimte")
  axis(1,at=1:5,labels = FALSE)
  axis(2, las=1,at=5*0:g_range[2])
  text(1:5, par("usr")[3] - 2, srt = 18, adj = 1,
     labels = sum01$factor, col=c("black"), xpd = TRUE, cex=1.4)
  box()
  lines(sum01$f1, type="o", pch=23, lty=2, col="blue",lwd=2)
  title(main=maintitle, col.main="black", font.main=7,cex.main=2)
  legend(1,100, c(rvnaam,f1vnaam), cex=1.3, horiz=TRUE, 
         col=c("green","blue"), pch=22:23, lty=1:2)
  dev.off()
  #
  #
  # summary dataframe voor respondent
  #
  sum01 <- data.frame(prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                      factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                               "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                               "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                               "Gedrag","Organisatie effect",
                                "Kritieke transformatiefactoren",
                                "Kritieke vitaliteitsfactoren",
                                "Kritieke veranderfactoren",
                                "Kritieke prestatiefactoren",
                                "Kritieke waarden factoren"),
                      o=c(rresults[101],rresults[104],rresults[107],rresults[110],rresults[113],rresults[116],
                          rresults[119],rresults[122],rresults[125],rresults[128],rresults[131],rresults[134],
                          rresults[137],rresults[140],rresults[143],rresults[146],0,rresults[151],rresults[153],rresults[155]),
                      b=c(rresults[102],rresults[105],rresults[108],rresults[111],rresults[114],rresults[117],
                          rresults[120],rresults[123],rresults[126],rresults[129],rresults[132],rresults[135],
                          rresults[138],rresults[141],rresults[144],rresults[147],rresults[149],0,0,0),
                      g=c(rresults[103],rresults[106],rresults[109],rresults[112],rresults[115],rresults[118],
                          rresults[121],rresults[124],rresults[127],rresults[130],rresults[133],rresults[136],
                          rresults[139],rresults[142],rresults[145],rresults[148],rresults[150],rresults[152],rresults[154],rresults[156]))
  sum02 <- sum01[with(sum01, order(-g)),]
  #
  # summary dataframe voor feedbackgever 1
  #
  fb01 <- data.frame(fbprio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                              "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                              "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                              "Gedrag","Organisatie effect",
                                "Kritieke transformatiefactoren",
                                "Kritieke vitaliteitsfactoren",
                                "Kritieke veranderfactoren",
                                "Kritieke prestatiefactoren",
                                "Kritieke waarden factoren"),
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
  gr1 <- data.frame(grprio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                    factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                             "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                             "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                             "Gedrag","Organisatie effect",
                             "Kritieke transformatiefactoren",
                             "Kritieke vitaliteitsfactoren",
                             "Kritieke veranderfactoren",
                             "Kritieke prestatiefactoren",
                             "Kritieke waarden factoren"),
                    r1=c(rresults[103],rresults[106],rresults[109],rresults[112],rresults[115],rresults[118],
                         rresults[121],rresults[124],rresults[127],rresults[130],rresults[133],rresults[136],
                         rresults[139],rresults[142],rresults[145],rresults[148],rresults[150],rresults[152],rresults[154],rresults[156]),
                    f1=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                         f1results[121],f1results[124],f1results[127],f1results[130],f1results[133],f1results[136],
                         f1results[139],f1results[142],f1results[145],f1results[148],f1results[150],f1results[152],f1results[154],f1results[156]))
  gr <- gr1[with(gr1, order(-r1)),]