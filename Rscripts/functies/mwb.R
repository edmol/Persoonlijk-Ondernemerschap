# Nu grafieken in de mwb_folder zetten
#
mwb_main <- paste(organisatie,'- Medewerker Betrokkenheids Onderzoek - ', format(Sys.time(),'%d %B 20%y'))
setwd(mwb_folder)
#
# GRAFIEK 001 - BOXPLOT - Regenboog zien
#
img[1] <- paste(mwb_folder,"boxplot-regenboog.png",sep="")
png(filename=img[1],width=2339,height=1654)
mwb_main <- paste('Leiderschap - Regenboog zien')
ytitel <- paste('Regenboog zien - score in % - ',verwerken, ' respondenten')
mean_regenboog <- c(mean(pm[1,]),
           mean(pm[2,]),
           mean(pm[3,]),
           mean(pm[4,]),
           mean(pm[5,]),
           mean(pm[6,]),
           mean(pm[7,]),
           mean(pm[8,]),
           mean(pm[9,]),
           mean(pm[10,]))
y_range <- range(0,100)
boxplot(c(pm[1,]),
        c(pm[2,]),
        c(pm[3,]),
        c(pm[4,]),
        c(pm[5,]),
        c(pm[6,]),
        c(pm[7,]),
        c(pm[8,]),
        c(pm[9,]),
        c(pm[10,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_regenboog,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[1],
            vraag_factor[2],
            vraag_factor[3],
            vraag_factor[4],
            vraag_factor[5],
            vraag_factor[6],
            vraag_factor[7],
            vraag_factor[8],
            vraag_factor[9],
            vraag_factor[10])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 002 - BOXPLOT - Regie voeren
#
img[2] <- paste(mwb_folder,"boxplot-regievoeren.png",sep="")
png(filename=img[2],width=2339,height=1654)
mwb_main <- paste('Leiderschap - Regie voeren')
ytitel <- paste('Regie voeren - score in % - ',verwerken, ' respondenten')
mean_regie <- c(mean(pm[11,]),
           mean(pm[12,]),
           mean(pm[13,]),
           mean(pm[14,]),
           mean(pm[15,]),
           mean(pm[16,]),
           mean(pm[17,]),
           mean(pm[18,]),
           mean(pm[19,]),
           mean(pm[20,]))
y_range <- range(0,100)
boxplot(c(pm[11,]),
        c(pm[12,]),
        c(pm[13,]),
        c(pm[14,]),
        c(pm[15,]),
        c(pm[16,]),
        c(pm[17,]),
        c(pm[18,]),
        c(pm[19,]),
        c(pm[20,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_regie,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[11],
            vraag_factor[12],
            vraag_factor[13],
            vraag_factor[14],
            vraag_factor[15],
            vraag_factor[16],
            vraag_factor[17],
            vraag_factor[18],
            vraag_factor[19],
            vraag_factor[20])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 003 - BOXPLOT - Richting bepalen
#
img[3] <- paste(mwb_folder,"boxplot-richtingbepalen.png",sep="")
png(filename=img[3],width=2339,height=1654)
mwb_main <- paste('Leiderschap - Richting bepalen')
ytitel <- paste('Richting bepalen - score in % - ',verwerken, ' respondenten')
mean_richting <- c(mean(pm[21,]),
           mean(pm[22,]),
           mean(pm[23,]),
           mean(pm[24,]),
           mean(pm[25,]),
           mean(pm[26,]),
           mean(pm[27,]),
           mean(pm[28,]),
           mean(pm[29,]),
           mean(pm[30,]))
y_range <- range(0,100)
boxplot(c(pm[21,]),
        c(pm[22,]),
        c(pm[23,]),
        c(pm[24,]),
        c(pm[25,]),
        c(pm[26,]),
        c(pm[27,]),
        c(pm[28,]),
        c(pm[29,]),
        c(pm[30,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_richting,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[21],
            vraag_factor[22],
            vraag_factor[23],
            vraag_factor[24],
            vraag_factor[25],
            vraag_factor[26],
            vraag_factor[27],
            vraag_factor[28],
            vraag_factor[29],
            vraag_factor[30])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 004 - BOXPLOT - Rust geven
#
img[4] <- paste(mwb_folder,"boxplot-rustgeven.png",sep="")
png(filename=img[4],width=2339,height=1654)
mwb_main <- paste('Zeggenschap - Rust geven')
ytitel <- paste('Rust geven - score in % - ',verwerken, ' respondenten')
mean_rust <- c(mean(pm[31,]),
           mean(pm[32,]),
           mean(pm[33,]),
           mean(pm[34,]),
           mean(pm[35,]),
           mean(pm[36,]),
           mean(pm[37,]),
           mean(pm[38,]),
           mean(pm[39,]),
           mean(pm[40,]))
y_range <- range(0,100)
boxplot(c(pm[31,]),
        c(pm[32,]),
        c(pm[33,]),
        c(pm[34,]),
        c(pm[35,]),
        c(pm[36,]),
        c(pm[37,]),
        c(pm[38,]),
        c(pm[39,]),
        c(pm[40,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_rust,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[31],
            vraag_factor[32],
            vraag_factor[33],
            vraag_factor[34],
            vraag_factor[35],
            vraag_factor[36],
            vraag_factor[37],
            vraag_factor[38],
            vraag_factor[39],
            vraag_factor[40])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 005 - BOXPLOT - Ruimte creëren
#
img[5] <- paste(mwb_folder,"boxplot-ruimte.png",sep="")
png(filename=img[5],width=2339,height=1654)
mwb_main <- paste('Zeggenschap - Ruimte creeren')
ytitel <- paste('Ruimte creeren - score in % - ',verwerken, ' respondenten')
mean_ruimte <- c(mean(pm[41,]),
           mean(pm[42,]),
           mean(pm[43,]),
           mean(pm[44,]),
           mean(pm[45,]),
           mean(pm[46,]),
           mean(pm[47,]),
           mean(pm[48,]),
           mean(pm[49,]),
           mean(pm[50,]))
y_range <- range(0,100)
boxplot(c(pm[41,]),
        c(pm[42,]),
        c(pm[43,]),
        c(pm[44,]),
        c(pm[45,]),
        c(pm[46,]),
        c(pm[47,]),
        c(pm[48,]),
        c(pm[49,]),
        c(pm[50,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ruimte,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[41],
            vraag_factor[42],
            vraag_factor[43],
            vraag_factor[44],
            vraag_factor[45],
            vraag_factor[46],
            vraag_factor[47],
            vraag_factor[48],
            vraag_factor[49],
            vraag_factor[50])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 006 - BOXPLOT - Rendement vaststellen
#
img[6] <- paste(mwb_folder,"boxplot-rendement.png",sep="")
png(filename=img[6],width=2339,height=1654)
mwb_main <- paste('Vakmanschap - Rendement vaststellen')
ytitel <- paste('Rendement vaststellen - score in % - ',verwerken, ' respondenten')
mean_rendement <- c(mean(pm[51,]),
           mean(pm[52,]),
           mean(pm[53,]),
           mean(pm[54,]),
           mean(pm[55,]),
           mean(pm[56,]),
           mean(pm[57,]),
           mean(pm[58,]),
           mean(pm[59,]),
           mean(pm[60,]))
y_range <- range(0,100)
boxplot(c(pm[51,]),
        c(pm[52,]),
        c(pm[53,]),
        c(pm[54,]),
        c(pm[55,]),
        c(pm[56,]),
        c(pm[57,]),
        c(pm[58,]),
        c(pm[59,]),
        c(pm[60,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_rendement,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[51],
            vraag_factor[52],
            vraag_factor[53],
            vraag_factor[54],
            vraag_factor[55],
            vraag_factor[56],
            vraag_factor[57],
            vraag_factor[58],
            vraag_factor[59],
            vraag_factor[60])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 007 - BOXPLOT - Resultaten boeken
#
img[7] <- paste(mwb_folder,"boxplot-resultaten.png",sep="")
png(filename=img[7],width=2339,height=1654)
mwb_main <- paste('Vakmanschap - Resultaten boeken')
ytitel <- paste('Resultaten boeken - score in % - ',verwerken, ' respondenten')
mean_resultaat <- c(mean(pm[61,]),
           mean(pm[62,]),
           mean(pm[63,]),
           mean(pm[64,]),
           mean(pm[65,]),
           mean(pm[66,]),
           mean(pm[67,]),
           mean(pm[68,]),
           mean(pm[69,]),
           mean(pm[70,]))
y_range <- range(0,100)
boxplot(c(pm[61,]),
        c(pm[62,]),
        c(pm[63,]),
        c(pm[64,]),
        c(pm[65,]),
        c(pm[66,]),
        c(pm[67,]),
        c(pm[68,]),
        c(pm[69,]),
        c(pm[70,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_resultaat,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[61],
            vraag_factor[62],
            vraag_factor[63],
            vraag_factor[64],
            vraag_factor[65],
            vraag_factor[66],
            vraag_factor[67],
            vraag_factor[68],
            vraag_factor[69],
            vraag_factor[70])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 008 - BOXPLOT - Reflectie geven
#
img[8] <- paste(mwb_folder,"boxplot-reflectie.png",sep="")
png(filename=img[8],width=2339,height=1654)
mwb_main <- paste('Beterschap - Reflectie vragen/geven')
ytitel <- paste('Reflectie vragen/geven - score in % - ',verwerken, ' respondenten')
mean_reflectie <- c(mean(pm[71,]),
           mean(pm[72,]),
           mean(pm[73,]),
           mean(pm[74,]),
           mean(pm[75,]),
           mean(pm[76,]),
           mean(pm[77,]),
           mean(pm[78,]),
           mean(pm[79,]),
           mean(pm[80,]))
y_range <- range(0,100)
boxplot(c(pm[71,]),
        c(pm[72,]),
        c(pm[73,]),
        c(pm[74,]),
        c(pm[75,]),
        c(pm[76,]),
        c(pm[77,]),
        c(pm[78,]),
        c(pm[79,]),
        c(pm[80,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_reflectie,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[71],
            vraag_factor[72],
            vraag_factor[73],
            vraag_factor[74],
            vraag_factor[75],
            vraag_factor[76],
            vraag_factor[77],
            vraag_factor[78],
            vraag_factor[79],
            vraag_factor[80])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 009 - BOXPLOT - Relaties onderhouden
#
img[9] <- paste(mwb_folder,"boxplot-relaties.png",sep="")
png(filename=img[9],width=2339,height=1654)
mwb_main <- paste('Beterschap - Relaties houden')
ytitel <- paste('Relaties houden - score in % - ',verwerken, ' respondenten')
mean_relaties <- c(mean(pm[81,]),
           mean(pm[82,]),
           mean(pm[83,]),
           mean(pm[84,]),
           mean(pm[85,]),
           mean(pm[86,]),
           mean(pm[87,]),
           mean(pm[88,]),
           mean(pm[89,]),
           mean(pm[90,]))
y_range <- range(0,100)
boxplot(c(pm[81,]),
        c(pm[82,]),
        c(pm[83,]),
        c(pm[84,]),
        c(pm[85,]),
        c(pm[86,]),
        c(pm[87,]),
        c(pm[88,]),
        c(pm[89,]),
        c(pm[90,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_relaties,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[81],
            vraag_factor[82],
            vraag_factor[83],
            vraag_factor[84],
            vraag_factor[85],
            vraag_factor[86],
            vraag_factor[87],
            vraag_factor[88],
            vraag_factor[89],
            vraag_factor[90])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0010 - BOXPLOT - Ruggengraat tonen
#
img[10] <- paste(mwb_folder,"boxplot-ruggengraat.png",sep="")
png(filename=img[10],width=2339,height=1654)
mwb_main <- paste('Beterschap - Ruggengraat tonen')
ytitel <- paste('Ruggengraat tonen - score in % - ',verwerken, ' respondenten')
mean_ruggengraat <- c(mean(pm[91,]),
           mean(pm[92,]),
           mean(pm[93,]),
           mean(pm[94,]),
           mean(pm[95,]),
           mean(pm[96,]),
           mean(pm[97,]),
           mean(pm[98,]),
           mean(pm[99,]),
           mean(pm[100,]))
y_range <- range(0,100)
boxplot(c(pm[91,]),
        c(pm[92,]),
        c(pm[93,]),
        c(pm[94,]),
        c(pm[95,]),
        c(pm[96,]),
        c(pm[97,]),
        c(pm[98,]),
        c(pm[99,]),
        c(pm[100,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ruggengraat,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[91],
            vraag_factor[92],
            vraag_factor[93],
            vraag_factor[94],
            vraag_factor[95],
            vraag_factor[96],
            vraag_factor[97],
            vraag_factor[98],
            vraag_factor[99],
            vraag_factor[100])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0011 - BOXPLOT - Gevoel -
#
img[11] <- paste(mwb_folder,"boxplot-gevoel.png",sep="")
png(filename=img[11],width=2339,height=1654)
mwb_main <- paste('Gevoel')
ytitel <- paste('Gevoel - Score in % - ',verwerken, ' respondenten')
mean_gevoel <- c(mean(pm[3,]),
           mean(pm[4,]),
           mean(pm[13,]),
           mean(pm[14,]),
           mean(pm[23,]),
           mean(pm[24,]),
           mean(pm[33,]),
           mean(pm[34,]),
           mean(pm[43,]),
           mean(pm[44,]),
           mean(pm[53,]),
           mean(pm[54,]),
           mean(pm[63,]),
           mean(pm[64,]),
           mean(pm[73,]),
           mean(pm[74,]),
           mean(pm[83,]),
           mean(pm[84,]),
           mean(pm[93,]),
           mean(pm[94,]))
y_range <- range(0,100)
boxplot(c(pm[3,]),
        c(pm[4,]),
        c(pm[13,]),
        c(pm[14,]),
        c(pm[23,]),
        c(pm[24,]),
        c(pm[33,]),
        c(pm[34,]),
        c(pm[43,]),
        c(pm[44,]),
        c(pm[53,]),
        c(pm[54,]),
        c(pm[63,]),
        c(pm[64,]),
        c(pm[73,]),
        c(pm[74,]),
        c(pm[83,]),
        c(pm[84,]),
        c(pm[93,]),
        c(pm[94,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_gevoel,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c(vraag_factor[3],
            vraag_factor[4],
            vraag_factor[13],
            vraag_factor[14],
            vraag_factor[23],
            vraag_factor[24],
            vraag_factor[33],
            vraag_factor[34],
            vraag_factor[43],
            vraag_factor[44],
            vraag_factor[53],
            vraag_factor[54],
            vraag_factor[63],
            vraag_factor[64],
            vraag_factor[73],
            vraag_factor[74],
            vraag_factor[83],
            vraag_factor[84],
            vraag_factor[93],
            vraag_factor[94])
text(1:20, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0012 - BOXPLOT - Houding -
#
img[12] <- paste(mwb_folder,"boxplot-houding.png",sep="")
png(filename=img[12],width=2339,height=1654)
mwb_main <- paste('Houding')
ytitel <- paste('Houding - Score in % - ',verwerken, ' respondenten')
mean_houding <- c(mean(pm[1,]),
           mean(pm[2,]),
           mean(pm[11,]),
           mean(pm[12,]),
           mean(pm[21,]),
           mean(pm[22,]),
           mean(pm[31,]),
           mean(pm[32,]),
           mean(pm[41,]),
           mean(pm[42,]),
           mean(pm[51,]),
           mean(pm[52,]),
           mean(pm[61,]),
           mean(pm[62,]),
           mean(pm[71,]),
           mean(pm[72,]),
           mean(pm[81,]),
           mean(pm[82,]),
           mean(pm[91,]),
           mean(pm[92,]))
y_range <- range(0,100)
boxplot(c(pm[1,]),
        c(pm[2,]),
        c(pm[11,]),
        c(pm[12,]),
        c(pm[21,]),
        c(pm[22,]),
        c(pm[31,]),
        c(pm[32,]),
        c(pm[41,]),
        c(pm[42,]),
        c(pm[51,]),
        c(pm[52,]),
        c(pm[61,]),
        c(pm[62,]),
        c(pm[71,]),
        c(pm[72,]),
        c(pm[81,]),
        c(pm[82,]),
        c(pm[91,]),
        c(pm[92,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_houding,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c(vraag_factor[1],
            vraag_factor[2],
            vraag_factor[11],
            vraag_factor[12],
            vraag_factor[21],
            vraag_factor[22],
            vraag_factor[31],
            vraag_factor[32],
            vraag_factor[41],
            vraag_factor[42],
            vraag_factor[51],
            vraag_factor[52],
            vraag_factor[61],
            vraag_factor[62],
            vraag_factor[71],
            vraag_factor[72],
            vraag_factor[81],
            vraag_factor[82],
            vraag_factor[91],
            vraag_factor[92])
text(1:20, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0013 - BOXPLOT - Organisatie Kenmerk -
#
img[13] <- paste(mwb_folder,"boxplot-organisatie.png",sep="")
png(filename=img[13],width=2339,height=1654)
mwb_main <- paste('Organisatie kenmerk')
ytitel <- paste('Organisatie Kenmerk - Score in % - ',verwerken, ' respondenten')
mean_organisatie <- c(mean(pm[5,]),
           mean(pm[6,]),
           mean(pm[15,]),
           mean(pm[16,]),
           mean(pm[25,]),
           mean(pm[26,]),
           mean(pm[35,]),
           mean(pm[36,]),
           mean(pm[45,]),
           mean(pm[46,]),
           mean(pm[55,]),
           mean(pm[56,]),
           mean(pm[65,]),
           mean(pm[66,]),
           mean(pm[75,]),
           mean(pm[76,]),
           mean(pm[85,]),
           mean(pm[86,]),
           mean(pm[95,]),
           mean(pm[96,]))
y_range <- range(0,100)
boxplot(c(pm[5,]),
        c(pm[6,]),
        c(pm[15,]),
        c(pm[16,]),
        c(pm[25,]),
        c(pm[26,]),
        c(pm[35,]),
        c(pm[36,]),
        c(pm[45,]),
        c(pm[46,]),
        c(pm[55,]),
        c(pm[56,]),
        c(pm[65,]),
        c(pm[66,]),
        c(pm[75,]),
        c(pm[76,]),
        c(pm[85,]),
        c(pm[86,]),
        c(pm[95,]),
        c(pm[96,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_organisatie,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c(vraag_factor[5],
            vraag_factor[6],
            vraag_factor[15],
            vraag_factor[16],
            vraag_factor[25],
            vraag_factor[26],
            vraag_factor[35],
            vraag_factor[36],
            vraag_factor[45],
            vraag_factor[46],
            vraag_factor[55],
            vraag_factor[56],
            vraag_factor[65],
            vraag_factor[66],
            vraag_factor[75],
            vraag_factor[76],
            vraag_factor[85],
            vraag_factor[86],
            vraag_factor[95],
            vraag_factor[96])
text(1:20, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0014 - BOXPLOT - Gedrag -
#
img[14] <- paste(mwb_folder,"boxplot-gedrag.png",sep="")
png(filename=img[14],width=2339,height=1654)
mwb_main <- paste('Gedrag')
ytitel <- paste('Gedrag - Score in % - ',verwerken, ' respondenten')
mean_gedrag <- c(mean(pm[7,]),
           mean(pm[8,]),
           mean(pm[17,]),
           mean(pm[18,]),
           mean(pm[27,]),
           mean(pm[28,]),
           mean(pm[37,]),
           mean(pm[38,]),
           mean(pm[47,]),
           mean(pm[48,]),
           mean(pm[57,]),
           mean(pm[58,]),
           mean(pm[67,]),
           mean(pm[68,]),
           mean(pm[77,]),
           mean(pm[78,]),
           mean(pm[87,]),
           mean(pm[88,]),
           mean(pm[97,]),
           mean(pm[98,]))
y_range <- range(0,100)
boxplot(c(pm[7,]),
        c(pm[8,]),
        c(pm[17,]),
        c(pm[18,]),
        c(pm[27,]),
        c(pm[28,]),
        c(pm[37,]),
        c(pm[38,]),
        c(pm[47,]),
        c(pm[48,]),
        c(pm[57,]),
        c(pm[58,]),
        c(pm[67,]),
        c(pm[68,]),
        c(pm[77,]),
        c(pm[78,]),
        c(pm[87,]),
        c(pm[88,]),
        c(pm[97,]),
        c(pm[98,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_gedrag,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c(vraag_factor[7],
            vraag_factor[8],
            vraag_factor[17],
            vraag_factor[18],
            vraag_factor[27],
            vraag_factor[28],
            vraag_factor[37],
            vraag_factor[38],
            vraag_factor[47],
            vraag_factor[48],
            vraag_factor[57],
            vraag_factor[58],
            vraag_factor[67],
            vraag_factor[68],
            vraag_factor[77],
            vraag_factor[78],
            vraag_factor[87],
            vraag_factor[88],
            vraag_factor[97],
            vraag_factor[98])
text(1:20, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0015 - BOXPLOT - EFFECTEN -
#
img[15] <- paste(mwb_folder,"boxplot-effecten.png",sep="")
png(filename=img[15],width=2339,height=1654)
mwb_main <- paste('Effect')
ytitel <- paste('Effecten - Score in % - ',verwerken, ' respondenten')
mean_effect <- c(mean(pm[9,]),
           mean(pm[10,]),
           mean(pm[19,]),
           mean(pm[20,]),
           mean(pm[29,]),
           mean(pm[30,]),
           mean(pm[39,]),
           mean(pm[40,]),
           mean(pm[49,]),
           mean(pm[50,]),
           mean(pm[59,]),
           mean(pm[60,]),
           mean(pm[69,]),
           mean(pm[70,]),
           mean(pm[79,]),
           mean(pm[80,]),
           mean(pm[89,]),
           mean(pm[90,]),
           mean(pm[99,]),
           mean(pm[100,]))
y_range <- range(0,100)
boxplot(c(pm[9,]),
        c(pm[10,]),
        c(pm[19,]),
        c(pm[20,]),
        c(pm[29,]),
        c(pm[30,]),
        c(pm[39,]),
        c(pm[40,]),
        c(pm[49,]),
        c(pm[50,]),
        c(pm[59,]),
        c(pm[60,]),
        c(pm[69,]),
        c(pm[70,]),
        c(pm[79,]),
        c(pm[80,]),
        c(pm[89,]),
        c(pm[90,]),
        c(pm[99,]),
        c(pm[100,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_effect,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c(vraag_factor[9],
            vraag_factor[10],
            vraag_factor[19],
            vraag_factor[20],
            vraag_factor[29],
            vraag_factor[30],
            vraag_factor[39],
            vraag_factor[40],
            vraag_factor[49],
            vraag_factor[50],
            vraag_factor[59],
            vraag_factor[60],
            vraag_factor[69],
            vraag_factor[70],
            vraag_factor[79],
            vraag_factor[80],
            vraag_factor[89],
            vraag_factor[90],
            vraag_factor[99],
            vraag_factor[100])
text(1:20, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 16: Vitaliteit
#
img[16] <- paste(mwb_folder,"boxplot-vitaliteit.png",sep="")
png(filename=img[16],width=2339,height=1654)
mwb_main <- paste('Kritieke vitaliteitsfactoren')
ytitel <- paste('Vitaliteit - score in % - ',verwerken, ' respondenten')
mean_vitaliteit <- c(mean(pm[18,]),
           mean(pm[38,]),
           mean(pm[40,]),
           mean(pm[48,]),
           mean(pm[50,]),
           mean(pm[58,]),
           mean(pm[62,]),
           mean(pm[76,]),
           mean(pm[90,]),
           mean(pm[92,]))
y_range <- range(0,100)
boxplot(c(pm[18,]),
        c(pm[38,]),
        c(pm[40,]),
        c(pm[48,]),
        c(pm[50,]),
        c(pm[58,]),
        c(pm[62,]),
        c(pm[76,]),
        c(pm[90,]),
        c(pm[92,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_vitaliteit,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[18],
            vraag_factor[38],
            vraag_factor[40],
            vraag_factor[48],
            vraag_factor[50],
            vraag_factor[58],
            vraag_factor[62],
            vraag_factor[76],
            vraag_factor[90],
            vraag_factor[92])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'orange')
dev.off()
#
# Grafiek 17: Duurzame verandering
#
img[17] <- paste(mwb_folder,"boxplot-verandering.png",sep="")
png(filename=img[17],width=2339,height=1654)
mwb_main <- paste('Kritieke veranderfactoren')
ytitel <- paste('Duurzame verandering - score in % - ',verwerken, ' respondenten')
mean_veranderen <- c(mean(pm[5,]),
           mean(pm[11,]),
           mean(pm[15,]),
           mean(pm[17,]),
           mean(pm[21,]),
           mean(pm[25,]),
           mean(pm[27,]),
           mean(pm[35,]),
           mean(pm[45,]),
           mean(pm[57,]))
y_range <- range(0,100)
boxplot(c(pm[5,]),
        c(pm[11,]),
        c(pm[15,]),
        c(pm[17,]),
        c(pm[21,]),
        c(pm[25,]),
        c(pm[27,]),
        c(pm[35,]),
        c(pm[45,]),
        c(pm[57,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_veranderen,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[5],
            vraag_factor[11],
            vraag_factor[15],
            vraag_factor[17],
            vraag_factor[21],
            vraag_factor[25],
            vraag_factor[27],
            vraag_factor[35],
            vraag_factor[45],
            vraag_factor[57])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 18: Omgevingsbewust 
#
img[18] <- paste(mwb_folder,"boxplot-omgeving.png",sep="")
png(filename=img[18],width=2339,height=1654)
mwb_main <- paste('Kritieke transformatiefactoren')
ytitel <- paste('Omgevingsbewust - score in % - ',verwerken, ' respondenten')
mean_transformatie <- c(mean(pm[1,]),
           mean(pm[4,]),
           mean(pm[14,]),
           mean(pm[19,]),
           mean(pm[20,]),
           mean(pm[41,]),
           mean(pm[43,]),
           mean(pm[63,]),
           mean(pm[78,]),
           mean(pm[94,]))
y_range <- range(0,100)
boxplot(c(pm[1,]),
        c(pm[4,]),
        c(pm[14,]),
        c(pm[19,]),
        c(pm[20,]),
        c(pm[41,]),
        c(pm[43,]),
        c(pm[63,]),
        c(pm[78,]),
        c(pm[94,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue","orange","orange","blue","orange","blue","blue","blue","orange","orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_transformatie,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[1],
            vraag_factor[4],
            vraag_factor[14],
            vraag_factor[19],
            vraag_factor[20],
            vraag_factor[41],
            vraag_factor[43],
            vraag_factor[63],
            vraag_factor[78],
            vraag_factor[94])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue","orange","orange","blue","orange","blue","blue","blue","orange","orange"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 19: Resultaatgericht 
#
img[19] <- paste(mwb_folder,"boxplot-resultaat.png",sep="")
png(filename=img[19],width=2339,height=1654)
mwb_main <- paste('Kritieke prestatiefactoren')
ytitel <- paste('Prestatiefactoren - score in % - ',verwerken, ' respondenten')
mean_prestatie <- c(mean(pm[39,]),
           mean(pm[47,]),
           mean(pm[55,]),
           mean(pm[59,]),
           mean(pm[61,]),
           mean(pm[65,]),
           mean(pm[69,]),
           mean(pm[73,]),
           mean(pm[87,]),
           mean(pm[89,]))
y_range <- range(0,100)
boxplot(c(pm[39,]),
        c(pm[47,]),
        c(pm[55,]),
        c(pm[59,]),
        c(pm[61,]),
        c(pm[65,]),
        c(pm[69,]),
        c(pm[73,]),
        c(pm[87,]),
        c(pm[89,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_prestatie,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[39],
            vraag_factor[47],
            vraag_factor[55],
            vraag_factor[59],
            vraag_factor[61],
            vraag_factor[65],
            vraag_factor[69],
            vraag_factor[73],
            vraag_factor[87],
            vraag_factor[89])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 20 : Bewegen  
#
img[20] <- paste(mwb_folder,"boxplot-bewegen.png",sep="")
png(filename=img[20],width=2339,height=1654)
mwb_main <- paste('Kritieke waardenfactoren')
ytitel <- paste('Waardenfactoren - score in % - ',verwerken, ' respondenten')
mean_waarden <- c(mean(pm[3,]),
           mean(pm[7,]),
           mean(pm[9,]),
           mean(pm[13,]),
           mean(pm[23,]),
           mean(pm[53,]),
           mean(pm[79,]),
           mean(pm[81,]),
           mean(pm[97,]),
           mean(pm[99,]))
y_range <- range(0,100)
boxplot(c(pm[3,]),
        c(pm[7,]),
        c(pm[9,]),
        c(pm[13,]),
        c(pm[23,]),
        c(pm[53,]),
        c(pm[79,]),
        c(pm[81,]),
        c(pm[97,]),
        c(pm[99,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("blue")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_waarden,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c(vraag_factor[3],
            vraag_factor[7],
            vraag_factor[9],
            vraag_factor[13],
            vraag_factor[23],
            vraag_factor[53],
            vraag_factor[79],
            vraag_factor[81],
            vraag_factor[97],
            vraag_factor[99])
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 21 : Mate van ondernemendheid in de organisatie
#
img[21] <- paste(mwb_folder,"boxplot-ondernemendheid.png",sep="")
png(filename=img[21],width=2339,height=1654)
mwb_main <- paste(' Mate van ondernemendheid')
ytitel <- paste('Mate van ondernemendheid - score in % - ',verwerken, ' respondenten')
mean_ondernemend <- c(mean(pm[101,]),
           mean(pm[104,]),
           mean(pm[107,]),
           mean(pm[110,]),
           mean(pm[113,]),
           mean(pm[116,]),
           mean(pm[119,]),
           mean(pm[122,]),
           mean(pm[125,]),
           mean(pm[128,]))
y_range <- range(0,100)
boxplot(c(pm[101,]),
        c(pm[104,]),
        c(pm[107,]),
        c(pm[110,]),
        c(pm[113,]),
        c(pm[116,]),
        c(pm[119,]),
        c(pm[122,]),
        c(pm[125,]),
        c(pm[128,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("lightblue")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ondernemend,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("Regenboog",
            "Regie",
            "Richting",
            "Rust",
            "Ruimte",
            "Rendement",
            "Resultaten",
            "Reflectie",
            "Relaties",
            "Ruggengraat")
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 22 : Mate van betrokkenheid in de organisatie
#
img[22] <- paste(mwb_folder,"boxplot-betrokkenheid.png",sep="")
png(filename=img[22],width=2339,height=1654)
mwb_main <- paste('Mate van betrokkenheid')
ytitel <- paste('Mate van betrokkenheid - score in % - ',verwerken, ' respondenten')
mean_betrokken <- c(mean(pm[102,]),
           mean(pm[105,]),
           mean(pm[108,]),
           mean(pm[111,]),
           mean(pm[114,]),
           mean(pm[117,]),
           mean(pm[120,]),
           mean(pm[123,]),
           mean(pm[126,]),
           mean(pm[129,]))
y_range <- range(0,100)
boxplot(c(pm[102,]),
        c(pm[105,]),
        c(pm[108,]),
        c(pm[111,]),
        c(pm[114,]),
        c(pm[117,]),
        c(pm[120,]),
        c(pm[123,]),
        c(pm[126,]),
        c(pm[129,]),
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("orange")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_betrokken,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("Regenboog",
            "Regie",
            "Richting",
            "Rust",
            "Ruimte",
            "Rendement",
            "Resultaten",
            "Reflectie",
            "Relaties",
            "Ruggengraat")
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'orange')
dev.off()
#
# Grafiek 23 : Ontwikkelpotentieel in de organisatie
#
img[23] <- paste(mwb_folder,"boxplot-totaalontwikkel.png",sep="")
png(filename=img[23],width=2339,height=1654)
mwb_main <- paste('Ontwikkelpotentieel op PO stappen')
ytitel <- paste('Ontwikkelpotentieel - score in % - ',verwerken, ' respondenten')
mean_ontwikkel <- c(mean(pm[103,]),
           mean(pm[106,]),
           mean(pm[109,]),
           mean(pm[112,]),
           mean(pm[115,]),
           mean(pm[118,]),
           mean(pm[121,]),
           mean(pm[124,]),
           mean(pm[127,]),
           mean(pm[130,]))
mydata <- data.frame(
  c(pm[103,]),
  c(pm[106,]),
  c(pm[109,]),
  c(pm[112,]),
  c(pm[115,]),
  c(pm[118,]),
  c(pm[121,]),
  c(pm[124,]),
  c(pm[127,]),
  c(pm[130,])
  )
labels <- c("Regenboog",
            "Regie",
            "Richting",
            "Rust",
            "Ruimte",
            "Rendement",
            "Resultaten",
            "Reflectie",
            "Relaties",
            "Ruggengraat")
y_range <- range(0,mydata)
boxplot(mydata,
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("green")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ontwikkel,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
text(1:10, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("black"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 24 : Ontwikkelpotentieel Gevoel, Houding, Organisatie, gedrag en EFFECT
#
img[24] <- paste(mwb_folder,"boxplot-5vertikaal.png",sep="")
png(filename=img[24],width=2339,height=1654)
mwb_main <- paste('Ontwikkelpotentieel succes- en faalfactoren')
ytitel <- paste('Ontwikkelpotentieel - score in % - ',verwerken, ' respondenten')
mean_ontwikkel5 <- c(mean(pm[133,]),
           mean(pm[136,]),
           mean(pm[139,]),
           mean(pm[142,]),
           mean(pm[145,]))
mydata <- data.frame(
  c(pm[133,]),
  c(pm[136,]),
  c(pm[139,]),
  c(pm[142,]),
  c(pm[145,]))
labels <- c("Gevoel",
            "Houding",
            "Organisatie",
            "Gedrag",
            "Effect")
y_range <- range(0,mydata)
boxplot(mydata,
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("green")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ontwikkel5,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:5,labels = FALSE)
text(1:5, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("black"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 25 : Ontwikkelpotentieel op Leiderschap, Zeggenschap, Vakmanschap en Beterschap
#
img[25] <- paste(mwb_folder,"boxplot-dimensies.png",sep="")
png(filename=img[25],width=2339,height=1654)
mwb_main <- paste('Ontwikkelpotentieel PO Dimensies')
ytitel <- paste('Ontwikkelpotentieel Dimensies - score in % - ',verwerken, ' respondenten')
t1 <- cbind(c(pm[103,]),c(pm[106,]),c(pm[109,]))
t2 <- cbind(c(pm[112,]),c(pm[115,]))
t3 <- cbind(c(pm[118,]),c(pm[121,]))
t4 <- cbind(c(pm[124,]),c(pm[127,]),c(pm[130,]))
results <- matrix(1:(verwerken*4),nrow=4)
for (i in 1 : verwerken)
{
  results[1,i] <- mean(t1[i,]) 
  results[2,i] <- mean(t2[i,])
  results[3,i] <- mean(t3[i,])
  results[4,i] <- mean(t4[i,])
}
rm(t1,t2,t3,t4)
mydata <- data.frame(
  c(results[1,]),
  c(results[2,]),
  c(results[3,]),
  c(results[4,])
)
mean_ontwikkel4 <- c(mean(c(mean(c(pm[103,],pm[106,],pm[109,])))),
          mean(c(mean(c(pm[112,],pm[115,])))),                            
          mean(c(mean(c(pm[118,],pm[121,])))),
          mean(c(mean(c(pm[124,],pm[127,],pm[130,])))))
labels <- c("Leiderschap",
            "Zeggenschap",
            "Vakmanschap",
            "Beterschap")
y_range <- range(0,mydata)
boxplot(mydata,
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("green")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_ontwikkel4,col="red",pch=19)
axis(2, las=1,at=4*0:y_range[2])
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:4,labels = FALSE)
text(1:4, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("black"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 26 : Ontwikkelpotentieel kritieke factoren
#
img[26] <- paste(mwb_folder,"boxplot-kritiek.png",sep="")
png(filename=img[26],width=2339,height=1654)
mwb_main <- paste('Ontwikkel potentieel - Kritieke factoren')
ytitel <- paste('Kritieke factoren - score in % - ',verwerken, ' respondenten')
mean_kritiek <- c(mean(pm[150,]),
           mean(pm[152,]),
           mean(pm[148,]),
           mean(pm[154,]),
           mean(pm[156,]))
mydata <- data.frame(
  c(pm[150,]),
  c(pm[152,]),
  c(pm[148,]),
  c(pm[154,]),
  c(pm[156,]))
labels <- c("Vitaliteit",
            "Veranderen",
            "Omgevingbewust",
            "Presteren",
            "Waarden")
y_range <- range(0,mydata)
boxplot(mydata,
        ylim=y_range,
        axes=FALSE,
        ann=FALSE,
        col=(c("green")),
        main=mwb_main,cex.main=2.0)
points(cex=2.0,mean_kritiek,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(cex.lab=2.0,ylab=ytitel)
axis(1, las=1, at=1*0:5,labels = FALSE)
text(1:5, par("usr")[3] - 2, srt = 10 , adj = 1,
     labels = labels, col=c("black"), xpd = TRUE, cex=2.0)
title(cex.lab=2.0,xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Data voor totale summary van de respondenten
# 
sum01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                             "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                             "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                             "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                    o=c(mean(pm[101,]),mean(pm[104,]),mean(pm[107,]),mean(pm[110,]),mean(pm[113,]),mean(pm[116,]),
                        mean(pm[119,]),mean(pm[122,]),mean(pm[125,]),mean(pm[128,]),mean(pm[131,]),mean(pm[134,]),
                        mean(pm[137,]),mean(pm[140,]),mean(pm[143,]),mean(pm[146,]),0,mean(pm[151,]),mean(pm[153,]),mean(pm[155,])),
                    b=c(mean(pm[102,]),mean(pm[105,]),mean(pm[108,]),mean(pm[111,]),mean(pm[114,]),mean(pm[117,]),
                        mean(pm[120,]),mean(pm[123,]),mean(pm[126,]),mean(pm[129,]),mean(pm[132,]),mean(pm[135,]),
                        mean(pm[138,]),mean(pm[141,]),mean(pm[144,]),mean(pm[147,]),mean(pm[149,]),0,0,0),
                    g=c(mean(pm[103,]),mean(pm[106,]),mean(pm[109,]),mean(pm[112,]),mean(pm[115,]),mean(pm[118,]),
                        mean(pm[121,]),mean(pm[124,]),mean(pm[127,]),mean(pm[130,]),mean(pm[133,]),mean(pm[136,]),
                        mean(pm[139,]),mean(pm[142,]),mean(pm[145,]),mean(pm[148,]),mean(pm[150,]),mean(pm[152,]),mean(pm[154,]),mean(pm[156,])))
mwbsum <- sum01[with(sum01, order(-g)),]
for (i in 1 :20 )
{
mwbsum$o[i] <- round(mwbsum$o[i],1)
mwbsum$b[i] <- round(mwbsum$b[i],1)
mwbsum$g[i] <- round(mwbsum$g[i],1)
}
rm(sum01)
#
# data voor totale summary van de feedbackgevers
#
fbsum01 <- data.frame(factor=c("1. Regenboog zien","2. Regie voeren","3. Richting vaststellen","4. Rust geven",
                             "5. Ruimte creeren","6. Rendement vaststellen","7. Resultaat boeken","8. Reflectie vragen/geven",
                             "9. Relaties houden","10. Ruggengraat tonen","Houding","Gevoel","Organisatie kenmerk",
                             "Gedrag","Effect","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                    o=c(mean(fm[101,]),mean(fm[104,]),mean(fm[107,]),mean(fm[110,]),mean(fm[113,]),mean(fm[116,]),
                        mean(fm[119,]),mean(fm[122,]),mean(fm[125,]),mean(fm[128,]),mean(fm[131,]),mean(fm[134,]),
                        mean(fm[137,]),mean(fm[140,]),mean(fm[143,]),mean(fm[146,]),0,mean(fm[151,]),mean(fm[153,]),mean(fm[155,])),
                    b=c(mean(fm[102,]),mean(fm[105,]),mean(fm[108,]),mean(fm[111,]),mean(fm[114,]),mean(fm[117,]),
                        mean(fm[120,]),mean(fm[123,]),mean(fm[126,]),mean(fm[129,]),mean(fm[132,]),mean(fm[135,]),
                        mean(fm[138,]),mean(fm[141,]),mean(fm[144,]),mean(fm[147,]),mean(fm[149,]),0,0,0),
                    g=c(mean(fm[103,]),mean(fm[106,]),mean(fm[109,]),mean(fm[112,]),mean(fm[115,]),mean(fm[118,]),
                        mean(fm[121,]),mean(fm[124,]),mean(fm[127,]),mean(fm[130,]),mean(fm[133,]),mean(fm[136,]),
                        mean(fm[139,]),mean(fm[142,]),mean(fm[145,]),mean(fm[148,]),mean(fm[150,]),mean(fm[152,]),mean(fm[154,]),mean(fm[156,])))
fbmwbsum <- fbsum01[with(fbsum01, order(-g)),]
for (i in 1 :20 )
{
  fbmwbsum$o[i] <- round(fbmwbsum$o[i],1)
  fbmwbsum$b[i] <- round(fbmwbsum$b[i],1)
  fbmwbsum$g[i] <- round(fbmwbsum$g[i],1)
}
rm(fbsum01)
#
fb_mean_regenboog <- c(mean(fm[1,]),
                    mean(fm[2,]),
                    mean(fm[3,]),
                    mean(fm[4,]),
                    mean(fm[5,]),
                    mean(fm[6,]),
                    mean(fm[7,]),
                    mean(fm[8,]),
                    mean(fm[9,]),
                    mean(fm[10,]))
#
fb_mean_regie <- c(mean(fm[11,]),
                mean(fm[12,]),
                mean(fm[13,]),
                mean(fm[14,]),
                mean(fm[15,]),
                mean(fm[16,]),
                mean(fm[17,]),
                mean(fm[18,]),
                mean(fm[19,]),
                mean(fm[20,]))
#
fb_mean_richting <- c(mean(fm[21,]),
                   mean(fm[22,]),
                   mean(fm[23,]),
                   mean(fm[24,]),
                   mean(fm[25,]),
                   mean(fm[26,]),
                   mean(fm[27,]),
                   mean(fm[28,]),
                   mean(fm[29,]),
                   mean(fm[30,]))
#
fb_mean_rust <- c(mean(fm[31,]),
               mean(fm[32,]),
               mean(fm[33,]),
               mean(fm[34,]),
               mean(fm[35,]),
               mean(fm[36,]),
               mean(fm[37,]),
               mean(fm[38,]),
               mean(fm[39,]),
               mean(fm[40,]))
#
fb_mean_ruimte <- c(mean(fm[41,]),
                 mean(fm[42,]),
                 mean(fm[43,]),
                 mean(fm[44,]),
                 mean(fm[45,]),
                 mean(fm[46,]),
                 mean(fm[47,]),
                 mean(fm[48,]),
                 mean(fm[49,]),
                 mean(fm[50,]))
#
fb_mean_rendement <- c(mean(fm[51,]),
                    mean(fm[52,]),
                    mean(fm[53,]),
                    mean(fm[54,]),
                    mean(fm[55,]),
                    mean(fm[56,]),
                    mean(fm[57,]),
                    mean(fm[58,]),
                    mean(fm[59,]),
                    mean(fm[60,]))
#
fb_mean_resultaat <- c(mean(fm[61,]),
                    mean(fm[62,]),
                    mean(fm[63,]),
                    mean(fm[64,]),
                    mean(fm[65,]),
                    mean(fm[66,]),
                    mean(fm[67,]),
                    mean(fm[68,]),
                    mean(fm[69,]),
                    mean(fm[70,]))
#
fb_mean_reflectie <- c(mean(fm[71,]),
                    mean(fm[72,]),
                    mean(fm[73,]),
                    mean(fm[74,]),
                    mean(fm[75,]),
                    mean(fm[76,]),
                    mean(fm[77,]),
                    mean(fm[78,]),
                    mean(fm[79,]),
                    mean(fm[80,]))
#
fb_mean_relaties <- c(mean(fm[81,]),
                   mean(fm[82,]),
                   mean(fm[83,]),
                   mean(fm[84,]),
                   mean(fm[85,]),
                   mean(fm[86,]),
                   mean(fm[87,]),
                   mean(fm[88,]),
                   mean(fm[89,]),
                   mean(fm[90,]))
#
fb_mean_ruggengraat <- c(mean(fm[91,]),
                      mean(fm[92,]),
                      mean(fm[93,]),
                      mean(fm[94,]),
                      mean(fm[95,]),
                      mean(fm[96,]),
                      mean(fm[97,]),
                      mean(fm[98,]),
                      mean(fm[99,]),
                      mean(fm[100,]))