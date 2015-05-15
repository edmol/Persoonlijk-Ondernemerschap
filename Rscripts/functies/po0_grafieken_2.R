require(plotrix)
require(maptools)
require(Hmisc)
#
# Nieuwe grafische routine met x-as behoudendheid en y-as ondernemendheid
#
########################################################################
# GRAFIEK 1 : Ondernemendheid en behoudendheid ten opzichte van de feedbackgevers
########################################################################
#
rrx=c(100-rresults[101],100-rresults[104],100-rresults[107],100-rresults[110],100-rresults[113],100-rresults[116],
     100-rresults[119],100-rresults[122],100-rresults[125],100-rresults[128])
rry=c(rresults[102],rresults[105],rresults[108],rresults[111],rresults[114],rresults[117],
     rresults[120],rresults[123],rresults[126],rresults[129])
#
#
y <- c(rrx)
x <- c(rry)
#
puntlab=c("regenboog","regie","richting","rust","ruimte","rendement","resultaten","reflectie","relaties","ruggengraat")
#
png(filename=img[187],width=2339,height=1654)
#
# basic plot
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#
g_range <- range(0,100,100)
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="Behoudendheid(%)",ylab="% Ondernemdheid(%)",main="Ontwikkelruimte PO stappen")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green','green','green','green','green','green'
                 ))
#
legend(0,104, c(rvnaam),
       cex=2.5,  horiz=TRUE,
       text.col=c("green"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()
#
########################################################################
# GRAFIEK II : Kritieke succesfactoren ten opzichte van de feedbackgevers
########################################################################
#
rrx=c(100-rresults[131],100-rresults[140],100-rresults[134],100-rresults[137],100-rresults[143])
#
rry=c(rresults[132],rresults[141],rresults[135],rresults[138],rresults[144])
#
y <- c(rrx)
x <- c(rry)
#
puntlab=c("Houding","Gedrag","Gevoel","Beeld","Uiting")
#
png(filename=img[188],width=2339,height=1654)
#
# basic plot
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#
g_range <- range(0,100,100)
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="Behoudendheid(%)",ylab="% Ondernemdheid(%)",main="Ontwikkelruimte kritieke succesfactoren")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green'
           ))
#
legend(0,104, c(rvnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()
#
########################################################################
# GRAFIEK III : Ontwikkelruimte op de PO dimensies
########################################################################
#
rrx=c(mean(c(100-rresults[101],100-rresults[104],100-rresults[107])),
     mean(c(100-rresults[110],100-rresults[113])),
     mean(c(100-rresults[116],100-rresults[119])),
     mean(c(100-rresults[122],100-rresults[125],100-rresults[128])))
#
rry=c(mean(c(rresults[102],rresults[105],rresults[108])),
     mean(c(rresults[111],rresults[114])),
     mean(c(rresults[117],rresults[120])),
     mean(c(rresults[123],rresults[126],rresults[129])))
#
y <- c(rrx)
x <- c(rry)
#
puntlab=c("Leiderschap","Zeggenschap","Vakmanschap","Beterschap")
#
png(filename=img[189],width=2339,height=1654)
#
# basic plot
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#
g_range <- range(0,100,100)
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="Behoudendheid(%)",ylab="% Ondernemdheid(%)",main="Ontwikkelruimte op de PO dimensies")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green'
           ))
#
legend(0,104, c(rvnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()
#
########################################################################
# GRAFIEK IV : Ontwikkelruimte op de kritieke factoren (specials)
########################################################################
#
rrx=c(0,100-rresults[151],100-rresults[146],100-rresults[153],rresults[156])
#
rry=c(rresults[150],0,rresults[147],0,0)
#
y <- c(rrx)
x <- c(rry)
#
puntlab=c("Vitaliteit","Verandercapaciteit","Transformatie","Prestatie","Waarden")
#
png(filename=img[190],width=2339,height=1654)
#
# basic plot
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#
g_range <- range(0,100,100)
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="Behoudendheid(%)",ylab="% Ondernemdheid(%)",main="Ontwikkelruimte kritieke factoren (specials)")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green'
           ))
#
legend(0,104, c(rvnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()
#
########################################################################
# GRAFIEK V : Ontwikkelruimte op de hoogste 3 en laagste 3
########################################################################
#
# sum02 is het dataframe van de respondent gesorteerd op groeipotentieel
# 
top_3 <- c(sum02$prio[1],sum02$prio[2],sum02$prio[3],sum02$prio[18],sum02$prio[19],sum02$prio[20])
#
rrx <- c(0,0,0,0,0,0)
#
rry <- c(0,0,0,0,0,0)
#
puntlab <- c(" "," "," "," "," "," ")

for(i in 1 : 6)
{
  if(top_3[i] == 1)
  {
    puntlab[i] <- "Regenboog"
    #
    rrx[i] <- 100-rresults[101]
    #
    rry[i] <- rresults[102]
    #
  }
  #
  if(top_3[i] == 2)
  {
    puntlab[i] <- "Regie"
    #
    rrx[i] <- 100-rresults[104]
    #
    rry[i] <- rresults[105]
    #
  }
  #
  if(top_3[i] == 3)
  {
    puntlab[i] <- "Richting"
    #
    rrx[i] <- 100-rresults[107]
    #
    rry[i] <- rresults[108]
    #
  }
  #
  if(top_3[i] == 4)
  {
    puntlab[i] <- "Rust"
    #
    rrx[i] <- 100-rresults[110]
    #
    rry[i] <- rresults[111]
    #
  }
  #
  if(top_3[i] == 5)
  {
    puntlab[i] <- "Ruimte"
    #
    rrx[i] <- 100-rresults[113]
    #
    rry[i] <- rresults[114]
    #
  }
  #
  if(top_3[i] == 6)
  {
    puntlab[i] <- "Rendement"
    #
    rrx[i] <- 100-rresults[116]
    #
    rry[i] <- rresults[117]
    #
  }
  #
  if(top_3[i] == 7)
  {
    puntlab[i] <- "Resultaten"
    #
    rrx[i] <- 100-rresults[119]
    #
    rry[i] <- rresults[120]
    #
  }
  #
  if(top_3[i] == 8)
  {
    puntlab[i] <- "Reflectie"
    #
    rrx[i] <- 100-rresults[122]
    #
    rry[i] <- rresults[123]
    #
  }
  #
  if(top_3[i] == 9)
  {
    puntlab[i] <- "Relaties"
    #
    rrx[i] <- 100-rresults[125]
    #
    rry[i] <- rresults[126]
    #
  }
  #
  if(top_3[i] == 10)
  {
    puntlab[i] <- "Ruggengraat"
    #
    rrx[i] <- 100-rresults[128]
    #
    rry[i] <- rresults[129]
    #
  }
  #
  if(top_3[i] == 11)
  {
    puntlab[i] <- "Houding"
    #
    rrx[i] <- 100-rresults[131]
    #
    rry[i] <- rresults[132]
    #
  }
  #
  if(top_3[i] == 12)
  {
    puntlab[i] <- "Gevoel"
    #
    rrx[i] <- 100-rresults[134]
    #
    rry[i] <- rresults[135]
    #
  }
  #
  if(top_3[i] == 13)
  {
    puntlab[i] <- "Beeld"
    #
    rrx[i] <- 100-rresults[137]
    #
    rry[i] <- rresults[138]
    #
  }
  #
  if(top_3[i] == 14)
  {
    puntlab[i] <- "Gedrag"
    #
    rrx[i] <- 100-rresults[140]
    #
    rry[i] <- rresults[141]
    #
  }
  #
  if(top_3[i] == 15)
  {
    puntlab[i] <- "Uiting"
    #
    rrx[i] <- 100-rresults[143]
    #
    rry[i] <- rresults[144]
    #
  }
  #
  if(top_3[i] == 16)
  {
    puntlab[i] <- "Transformatie"
    #
    rrx[i] <- 100-rresults[146]
    #
    rry[i] <- rresults[147]
    #
  }
  #
  if(top_3[i] == 17)
  {
    puntlab[i] <- "Vitaliteit"
    #
    rrx[i] <- 0
    #
    rry[i] <- rresults[150]
    #
  }
  #
  if(top_3[i] == 18)
  {
    puntlab[i] <- "Veranderen"
    #
    rrx[i] <- 100-rresults[151]
    #
    rry[i] <- 0
    #
  }
  #
  if(top_3[i] == 19)
  {
    puntlab[i] <- "Prestatie"
    #
    rrx[i] <- 100-rresults[153]
    #
    rry[i] <- 0
    #
  }
  #
  if(top_3[i] == 20)
  {
    puntlab[i] <- "Waarden"
    #
    rry[i] <- 0
    #
    rrx[i] <- 100-rresults[155]
    #
  }
  #
}
#
y <- c(rrx)
x <- c(rry)
#
png(filename=img[191],width=2339,height=1654)
#
# basic plot
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#
g_range <- range(0,100,100)
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="Behoudendheid(%)",ylab="% Ondernemdheid(%)",main="Ontwikkelruimte hoogste en laagste 3 factoren")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green','green'
           ))
#
legend(0,104, c(rvnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()