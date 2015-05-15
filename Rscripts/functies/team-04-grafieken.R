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
                    t9=c(team[101],team[104],team[107],team[110],team[113],team[116],
                         team[119],team[122],team[125],team[128])
)
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1, 100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25,horiz=TRUE, 
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
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
                    t9=c(team[102],team[105],team[108],team[111],team[114],team[117],
                         team[120],team[123],team[126],team[129])
)
maintitle <- paste('De mate van behoudendheid in het team',sep='')
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1,100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25, horiz=TRUE, 
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
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
                    t9=c(team[103],team[106],team[109],team[112],team[115],team[118],
                         team[121],team[124],team[127],team[130])
)
#
# Nu sorteren van hoog naar laag op Groeipotentieel
#
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1,100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25,horiz=TRUE, 
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
dev.off()
#
# Grafiek op houding, gedrag, kenmerk, organisatie en gevoel (180)
# 
sum01 <- data.frame(factor=c("Gevoel","Houding","Beeld","Gedrag","Uiting"),
                    t1=c(t1results[133],t1results[136],t1results[139],t1results[142],t1results[145]),
                    t2=c(t2results[133],t2results[136],t2results[139],t2results[142],t2results[145]),
                    t3=c(t3results[133],t3results[136],t3results[139],t3results[142],t3results[145]),
                    t4=c(t4results[133],t4results[136],t4results[139],t4results[142],t4results[145]),
                    t9=c(team[133],team[136],team[139],team[142],team[145])
)
#
# Nu sorteren van hoog naar laag op Groeipotentieel
#
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1,100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25,horiz=TRUE, 
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
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
                    t9=c(mean(c(team[103],team[106],team[109])),
                         mean(c(team[112],team[115])),
                         mean(c(team[118],team[121])),
                         mean(c(team[124],team[127],team[130])))
)
#
# Nu sorteren van hoog naar laag op Groeipotentieel ( 181 )
#
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1,100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25, horiz=TRUE, 
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
dev.off()
#
# Grafiek op de kritieke factoren (182)
#
sum01 <- data.frame(factor=c("Vitaliteit","Verandercapaciteit","Transformatie","Prestatie","Waarden"),
                    t1=c(t1results[150],t1results[152],t1results[148],t1results[154],t1results[156]),
                    t2=c(t2results[150],t2results[152],t2results[148],t2results[154],t2results[156]),
                    t3=c(t3results[150],t3results[152],t3results[148],t3results[154],t3results[156]),
                    t4=c(t4results[150],t4results[152],t4results[148],t4results[154],t4results[156]),
                    t9=c(team[150],team[152],team[148],team[154],team[156])
)
#
# Nu sorteren van hoog naar laag op Groeipotentieel
#
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
title(main=maintitle, col.main="black", font.main=7,cex.main=2)
legend(1,100, c(t1naam,t2naam,t3naam,t4naam),
       cex=1.25, horiz=TRUE,
       col=c("red","blue","gray","brown"),
       pch=c(15,1,2,3))
dev.off()