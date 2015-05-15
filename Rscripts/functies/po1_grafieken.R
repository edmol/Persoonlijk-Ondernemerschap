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
sum01 <- data.frame(factor=c("Houding","Gedrag","Gevoel","Beeld","Uiting"),
                    resp=c(rresults[133],rresults[142],rresults[136],rresults[139],rresults[145]),
                    f1=c(f1results[133],f1results[142],f1results[136],f1results[139],f1results[145]))
#
# Nu sorteren van hoog naar laag op Groeipotentieel
#
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