# Nu grafieken in de mwb_folder zetten
#
mwb_main <- paste(organisatie,'- Medewerker Betrokkenheids Onderzoek - ', format(Sys.time(),'%d %B 20%y'))
setwd(mwb_folder)
#
# GRAFIEK 001 - BOXPLOT - Regenboog zien
#
img[1] <- paste(mwb_folder,"boxplot-regenboog.png",sep="")
png(filename=img[1])
mwb_main <- paste(organisatie,'- Regenboog zien - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Regenboog zien - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[1,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("open staan",
            "afsluiten",
            "verlangen",
            "verwachten",
            "missie leidend",
            "operatie leidend",
            "waarden bepalen",
            "ongerust blijven",
            "intenties uitspreken",
            "afwachten")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 002 - BOXPLOT - Regie voeren
#
img[2] <- paste(mwb_folder,"boxplot-regievoeren.png",sep="")
png(filename=img[2])
mwb_main <- paste(organisatie,'- Regie voeren - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Regie voeren - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[11,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("bereid zijn om",
            "beperktheid",
            "vertrouwen",
            "wantrouwen",
            "leiderschap tonen",
            "vaag blijven",
            "dialoog aangaan",
            "angst denken en doen",
            "perspectief zien",
            "(ver)oordelen")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 003 - BOXPLOT - Richting bepalen
#
img[3] <- paste(mwb_folder,"boxplot-richtingbepalen.png",sep="")
png(filename=img[3])
mwb_main <- paste(organisatie,'- Richting bepalen - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Richting bepalen - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[21,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("duidelijk zijn",
            "verwarring zaaien",
            "verwondering",
            "frustratie",
            "aanleiding benoemen",
            "afgeleid zijn",
            "keuzes maken",
            "blijven vragen",
            "ambities delen",
            "terughoudend zijn")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 004 - BOXPLOT - Rust geven
#
img[4] <- paste(mwb_folder,"boxplot-rustgeven.png",sep="")
png(filename=img[4])
mwb_main <- paste(organisatie,'- Rust geven - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Rust geven - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[31,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("accepteren",
            "ontkennen",
            "verademing",
            "teleurstelling",
            "focus aanbrengen",
            "verdeeld zijn",
            "grenzen aangeven",
            "pijn vermijden",
            "prioriteiten stellen",
            "uitsloven")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 005 - BOXPLOT - Ruimte creëren
#
img[5] <- paste(mwb_folder,"boxplot-ruimte.png",sep="")
png(filename=img[5])
mwb_main <- paste(organisatie,'- Ruimte creeren - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Ruimte creeren - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[41,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("loslaten",
            "vasthouden",
            "veiligheid",
            "onzekerheid",
            "commitment geven",
            "onduidelijk blijven",
            "initiatieven nemen",
            "wegkijken",
            "mogelijkheden onderzoeken",
            "bedreigingen zien")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 006 - BOXPLOT - Rendement vaststellen
#
img[6] <- paste(mwb_folder,"boxplot-rendement.png",sep="")
png(filename=img[6])
mwb_main <- paste(organisatie,'- Rendement vaststellen - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Rendement vaststellen - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[51,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("analyseren",
            "veronderstellen",
            "verantwoordelijkheid",
            "miskenning",
            "kwaliteit leveren",
            "brandjes blussen",
            "doelen stellen",
            "meelopen",
            "strategie bepalen",
            "overleven")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 007 - BOXPLOT - Resultaten boeken
#
img[7] <- paste(mwb_folder,"boxplot-resultaten.png",sep="")
png(filename=img[7])
mwb_main <- paste(organisatie,'- Resultaten boeken - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Resultaten boeken - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[61,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("capaciteiten benutten",
            "onmacht",
            "vermogen",
            "gelatenheid",
            "communicatie",
            "rumour",
            "handelen",
            "weerstand bieden",
            "prestaties leveren",
            "aversie tonen")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 008 - BOXPLOT - Reflectie geven
#
img[8] <- paste(mwb_folder,"boxplot-reflectie.png",sep="")
png(filename=img[8])
mwb_main <- paste(organisatie,'- Reflectie geven - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Reflectie geven - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[71,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("open zijn",
            "gesloten zijn",
            "voldoening",
            "ontevredenheid",
            "passend belonen",
            "bestraffen",
            "spiegelen",
            "vinger wijzen",
            "bewust worden",
            "onbewust blijven")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 009 - BOXPLOT - Relaties onderhouden
#
img[9] <- paste(mwb_folder,"boxplot-relaties.png",sep="")
png(filename=img[9])
mwb_main <- paste(organisatie,'- Relaties onderhouden - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Relaties onderhouden - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[81,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("respect hebben",
            "onwetend zijn",
            "verbinding",
            "eenzaamheid",
            "begrijpen en afstemmen",
            "ieder voor zich",
            "waardering geven",
            "schuld geven",
            "samenwerken",
            "ontwijken")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0010 - BOXPLOT - Ruggengraat tonen
#
img[10] <- paste(mwb_folder,"boxplot-ruggengraat.png",sep="")
png(filename=img[10])
mwb_main <- paste(organisatie,'- Ruggengraat tonen - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Ruggengraat tonen - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[91,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("discipline hebben",
            "terugvallen",
            "volledig betrokken",
            "onverschilligheid",
            "voorbeeld gedrag",
            "voorbeeld gedrag",
            "zelf bewegen",
            "mee bewegen",
            "onafhankelijk",
            "afhankelijk")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0011 - BOXPLOT - Gevoel -
#
img[11] <- paste(mwb_folder,"boxplot-gevoel.png",sep="")
png(filename=img[11])
mwb_main <- paste(organisatie,'- Gevoel -', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Gevoel - Score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[3,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c("verlangen",
            "verwachting",
            "vertrouwen",
            "wantrouwen",
            "verwondering",
            "frustratie",
            "verademing",
            "teleurstelling",
            "veiligheid",
            "onzekerheid",
            "verantwoordelijkheid",
            "miskenning",
            "kwaliteit leveren",
            "gelatenheid",
            "voldoening",
            "ontevredenheid",
            "verbinding",
            "eenzaamheid",
            "volledig betrokken",
            "onverschilligheid")
text(1:20, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0012 - BOXPLOT - Houding -
#
img[12] <- paste(mwb_folder,"boxplot-houding.png",sep="")
png(filename=img[12])
mwb_main <- paste(organisatie,'- Houding -', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Houding - Score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[1,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c("open staan",
            "afsluiten",
            "bereid zijn om",
            "beperktheid",
            "duidelijk zijn",
            "verwarring zaaien",
            "accepteren",
            "ontkennen",
            "loslaten",
            "vasthouden",
            "analyseren",
            "veronderstellen",
            "capaciteiten benutten",
            "onmacht",
            "open zijn",
            "gesloten zijn",
            "respect hebben",
            "onwetend zijn",
            "discipline hebben",
            "terugvallen")
text(1:20, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0013 - BOXPLOT - Organisatie Kenmerk -
#
img[13] <- paste(mwb_folder,"boxplot-organisatie.png",sep="")
png(filename=img[13])
mwb_main <- paste(organisatie,'- Organisatie kenmerk -', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Organisatie Kenmerk - Score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[5,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c("missie leidend",
            "operatie leidend",
            "leiderschap tonen",
            "vaag blijven",
            "aanleiding benoemen",
            "afgeleid zijn",
            "focus aanbrengen",
            "verdeeld zijn",
            "commitment geven",
            "onduidelijk blijven",
            "kwaliteit leveren",
            "brandjes blussen",
            "communicatie",
            "rumour",
            "passend belonen",
            "bestraffen",
            "begrijpen en afstemmen",
            "ieder voor zich",
            "voorbeeld gedrag",
            "voorbeeld gedrag")
text(1:20, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0014 - BOXPLOT - Gedrag -
#
img[14] <- paste(mwb_folder,"boxplot-gedrag.png",sep="")
png(filename=img[14])
mwb_main <- paste(organisatie,'- Gedrag -', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Gedrag - Score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[7,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c("waarden bepalen",
            "ongerust blijven",
            "dialoog aangaan",
            "angst denken en doen",
            "keuzes maken",
            "blijven vragen",
            "grenzen aangeven",
            "pijn vermijden",
            "initiatieven nemen",
            "wegkijken",
            "doelen stellen",
            "meelopen",
            "handelen",
            "weerstand bieden",
            "spiegelen",
            "vinger wijzen",
            "waardering geven",
            "schuld geven",
            "zelf bewegen",
            "mee bewegen")
text(1:20, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# GRAFIEK 0015 - BOXPLOT - EFFECTEN -
#
img[15] <- paste(mwb_folder,"boxplot-effecten.png",sep="")
png(filename=img[15])
mwb_main <- paste(organisatie,'- Effecten -', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Effecten - Score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[9,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1, at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:20,labels = FALSE)
labels <- c("intenties uitspreken",
            "afwachten",
            "perspectief zien",
            "(ver)oordelen",
            "ambities delen",
            "terughoudend zijn",
            "prioriteiten stellen",
            "uitsloven",
            "mogenlijkheden onderzoeken",
            "bedreigingen zien",
            "strategie bepalen",
            "overleven",
            "prestaties leveren",
            "aversie tonen",
            "bewust worden",
            "onbewust blijven",
            "samenwerken",
            "ontwijken",
            "onafhankelijk",
            "afhankelijk")
text(1:20, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 16: Vitaliteit
#
img[16] <- paste(mwb_folder,"boxplot-vitaliteit.png",sep="")
png(filename=img[16])
mwb_main <- paste(organisatie,'- Vitaliteit - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Vitaliteit - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[18,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("angst denken en doen",
            "pijn vermijden",
            "uitsloven",
            "wegkijken",
            "bedreigingen zien",
            "meelopen",
            "onmacht",
            "bestraffen",
            "ontwijken",
            "terugvallen")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'orange')
dev.off()
#
# Grafiek 17: Duurzame verandering
#
img[17] <- paste(mwb_folder,"boxplot-verandering.png",sep="")
png(filename=img[17])
mwb_main <- paste(organisatie,'- Duurzame verandering - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Duurzame verandering - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[5,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("missie leidend",
            "bereid zijn om",
            "leiderschap tonen",
            "dialoog aangaan",
            "duidelijk zijn",
            "aanleiding benoemen",
            "keuzes maken",
            "focus aanbrengen",
            "commitment geven",
            "doelen stellen")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 18: Omgevingsbewust 
#
img[18] <- paste(mwb_folder,"boxplot-omgeving.png",sep="")
png(filename=img[18])
mwb_main <- paste(organisatie,'- Omgevingsbewust - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Omgevingsbewust - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[1,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("open staan",
            "verwachting",
            "wantrouwen",
            "perspectief zien",
            "(ver)oordelen",
            "loslaten",
            "veiligheid",
            "vermogen",
            "vinger wijzen",
            "onverschilligheid")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue","orange","orange","blue","orange","blue","blue","blue","orange","orange"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 19: Resultaatgericht 
#
img[19] <- paste(mwb_folder,"boxplot-resultaat.png",sep="")
png(filename=img[19])
mwb_main <- paste(organisatie,'- Resultaatgericht - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Resultaatgericht - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[39,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("prioriteiten stellen",
            "initiatieven nemen",
            "kwaliteit leveren",
            "strategie bepalen",
            "capaciteiten benutten",
            "communicatie",
            "prestaties leveren",
            "voldoening",
            "waardering geven",
            "samenwerken")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 20 : Bewegen  
#
img[20] <- paste(mwb_folder,"boxplot-bewegen.png",sep="")
png(filename=img[20])
mwb_main <- paste(organisatie,'- Bewegen - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Bewegen - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[3,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
labels <- c("verlangen",
            "waarden bepalen",
            "intensies uitspreken",
            "vertrouwen",
            "verwondering",
            "verantwoordelijkheid",
            "bewust worden",
            "respect hebben",
            "zelf bewegen",
            "onafhankelijk")
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 21 : Mate van ondernemendheid in de organisatie
#
img[21] <- paste(mwb_folder,"boxplot-ondernemendheid.png",sep="")
png(filename=img[21])
mwb_main <- paste(organisatie,'- Mate van ondernemendheid - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Mate van ondernemendheid - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[101,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
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
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="Stappen",col.lab="black")
box(lty = '1373', col = 'blue')
dev.off()
#
# Grafiek 22 : Mate van betrokkenheid in de organisatie
#
img[22] <- paste(mwb_folder,"boxplot-betrokkenheid.png",sep="")
png(filename=img[22])
mwb_main <- paste(organisatie,'- Mate van betrokkenheid - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Mate van betrokkenheid - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[102,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:100)
title(ylab=ytitel)
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
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'orange')
dev.off()
#
# Grafiek 23 : Ontwikkelpotentieel in de organisatie
#
img[23] <- paste(mwb_folder,"boxplot-totaalontwikkel.png",sep="")
png(filename=img[23])
mwb_main <- paste(organisatie,'- Ontwikkelpotentieel - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Ontwikkelpotentieel - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[103,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(ylab=ytitel)
axis(1, las=1, at=1*0:10,labels = FALSE)
text(1:10, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 24 : Ontwikkelpotentieel Gevoel, Houding, Organisatie, gedrag en EFFECT
#
img[24] <- paste(mwb_folder,"boxplot-5vertikaal.png",sep="")
png(filename=img[24])
mwb_main <- paste(organisatie,'- Ontwikkelpotentieel 2 - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Ontwikkelpotentieel 2 - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[133,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(ylab=ytitel)
axis(1, las=1, at=1*0:5,labels = FALSE)
text(1:5, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 25 : Ontwikkelpotentieel op Leiderschap, Zeggenschap, Vakmanschap en Beterschap
#
img[25] <- paste(mwb_folder,"boxplot-dimensies.png",sep="")
png(filename=img[25])
mwb_main <- paste(organisatie,'- Dimensies - ', format(Sys.time(),'%d %B 20%y'))
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
means<- c(mean(c(mean(c(pm[103,],pm[106,],pm[109,])))),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=4*0:y_range[2])
title(ylab=ytitel)
axis(1, las=1, at=1*0:4,labels = FALSE)
text(1:4, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Grafiek 26 : Ontwikkelpotentieel kritieke factoren
#
img[26] <- paste(mwb_folder,"boxplot-kritiek.png",sep="")
png(filename=img[26])
mwb_main <- paste(organisatie,'- Ontwikkel potentieel - Kritieke factoren - ', format(Sys.time(),'%d %B 20%y'))
ytitel <- paste('Kritieke factoren - score in % - ',verwerken, ' respondenten')
means <- c(mean(pm[150,]),
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
        main=mwb_main)
points(means,col="red",pch=19)
axis(2, las=1,at=5*0:y_range[2])
title(ylab=ytitel)
axis(1, las=1, at=1*0:5,labels = FALSE)
text(1:5, par("usr")[3] - 2, srt = 45, adj = 1,
     labels = labels, col=c("blue"), xpd = TRUE, cex=0.8)
title(xlab="",col.lab="black")
box(lty = '1373', col = 'green')
dev.off()
#
# Data voor totale summary
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
