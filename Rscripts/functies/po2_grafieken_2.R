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
f1x=c(100-f1results[101],100-f1results[104],100-f1results[107],100-f1results[110],100-f1results[113],100-f1results[116],
     100-f1results[119],100-f1results[122],100-f1results[125],100-f1results[128])
f1y=c(f1results[102],f1results[105],f1results[108],f1results[111],f1results[114],f1results[117],
     f1results[120],f1results[123],f1results[126],f1results[129])
#
f2x=c(100-f2results[101],100-f2results[104],100-f2results[107],100-f2results[110],100-f2results[113],100-f2results[116],
     100-f2results[119],100-f2results[122],100-f2results[125],100-f2results[128])
f2y=c(f2results[102],f2results[105],f2results[108],f2results[111],f2results[114],f2results[117],
     f2results[120],f2results[123],f2results[126],f2results[129])
#
#
y <- c(rrx,f1x,f2x)
x <- c(rry,f1y,f2y)
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
           col=c('green','green','green','green','green','green','green','green','green','green',
                 'blue','blue','blue','blue','blue','blue','blue','blue','blue','blue',
                 'orange','orange','orange','orange','orange','orange','orange','orange','orange','orange'
                 ))
#
legend(0,104, c(rvnaam,f1vnaam,f2vnaam),
       cex=2.5,  horiz=TRUE,
       text.col=c("green","blue","orange"))
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
f1x=c(100-f1results[131],100-f1results[140],100-f1results[134],100-f1results[137],100-f1results[143])
f2x=c(100-f2results[131],100-f2results[140],100-f2results[134],100-f2results[137],100-f2results[143])
#
rry=c(rresults[132],rresults[141],rresults[135],rresults[138],rresults[144])
f1y=c(f1results[132],f1results[141],f1results[135],f1results[138],f1results[144])
f2y=c(f2results[132],f2results[141],f2results[135],f2results[138],f2results[144])
#
y <- c(rrx,f1x,f2x)
x <- c(rry,f1y,f2y)
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
           col=c('green','green','green','green','green',
                 'blue','blue','blue','blue','blue',
                 'orange','orange','orange','orange','orange'
           ))
#
legend(0,104, c(rvnaam,f1vnaam,f2vnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","blue","orange"))
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
f1x=c(mean(c(100-f1results[101],100-f1results[104],100-f1results[107])),
      mean(c(100-f1results[110],100-f1results[113])),
      mean(c(100-f1results[116],100-f1results[119])),
      mean(c(100-f1results[122],100-f1results[125],100-f1results[128])))
f2x=c(mean(c(100-f2results[101],100-f2results[104],100-f2results[107])),
      mean(c(100-f2results[110],100-f2results[113])),
      mean(c(100-f2results[116],100-f2results[119])),
      mean(c(100-f2results[122],100-f2results[125],100-f2results[128])))
#
rry=c(mean(c(rresults[102],rresults[105],rresults[108])),
     mean(c(rresults[111],rresults[114])),
     mean(c(rresults[117],rresults[120])),
     mean(c(rresults[123],rresults[126],rresults[129])))
f1y=c(mean(c(f1results[102],f1results[105],f1results[108])),
      mean(c(f1results[111],f1results[114])),
      mean(c(f1results[117],f1results[120])),
      mean(c(f1results[123],f1results[126],f1results[129])))
f2y=c(mean(c(f2results[102],f2results[105],f2results[108])),
      mean(c(f2results[111],f2results[114])),
      mean(c(f2results[117],f2results[120])),
      mean(c(f2results[123],f2results[126],f2results[129])))
#
y <- c(rrx,f1x,f2x)
x <- c(rry,f1y,f2y)
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
           col=c('green','green','green','green',
                 'blue','blue','blue','blue',
                 'orange','orange','orange','orange'
           ))
#
legend(0,104, c(rvnaam,f1vnaam,f2vnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","blue","orange"))
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
f1x=c(0,100-f1results[151],100-f1results[146],100-f1results[153],f1results[156])
f2x=c(0,100-f2results[151],100-f2results[146],100-f2results[153],f2results[156])
#
rry=c(rresults[150],0,rresults[147],0,0)
f1y=c(f1results[150],0,f1results[147],0,0)
f2y=c(f2results[150],0,f2results[147],0,0)
#
y <- c(rrx,f1x,f2x)
x <- c(rry,f1y,f2y)
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
           col=c('green','green','green','green','green',
                 'blue','blue','blue','blue','blue',
                 'orange','orange','orange','orange','orange'
           ))
#
legend(0,104, c(rvnaam,f1vnaam,f2vnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","blue","orange"))
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
f1x <- c(0,0,0,0,0,0)
f2x <- c(0,0,0,0,0,0)
#
rry <- c(0,0,0,0,0,0)
f1y <- c(0,0,0,0,0,0)
f2y <- c(0,0,0,0,0,0)
#
puntlab <- c(" "," "," "," "," "," ")

for(i in 1 : 6)
{
  if(top_3[i] == 1)
  {
    puntlab[i] <- "Regenboog"
    #
    rrx[i] <- 100-rresults[101]
    f1x[i] <- 100-f1results[101]
    f2x[i] <- 100-f2results[101]
    #
    rry[i] <- rresults[102]
    f1y[i] <- f1results[102]
    f2y[i] <- f2results[102] 
    #
  }
  #
  if(top_3[i] == 2)
  {
    puntlab[i] <- "Regie"
    #
    rrx[i] <- 100-rresults[104]
    f1x[i] <- 100-f1results[104]
    f2x[i] <- 100-f2results[104]
    #
    rry[i] <- rresults[105]
    f1y[i] <- f1results[105]
    f2y[i] <- f2results[105] 
    #
  }
  #
  if(top_3[i] == 3)
  {
    puntlab[i] <- "Richting"
    #
    rrx[i] <- 100-rresults[107]
    f1x[i] <- 100-f1results[107]
    f2x[i] <- 100-f2results[107]
    #
    rry[i] <- rresults[108]
    f1y[i] <- f1results[108]
    f2y[i] <- f2results[108] 
    #
  }
  #
  if(top_3[i] == 4)
  {
    puntlab[i] <- "Rust"
    #
    rrx[i] <- 100-rresults[110]
    f1x[i] <- 100-f1results[110]
    f2x[i] <- 100-f2results[110]
    #
    rry[i] <- rresults[111]
    f1y[i] <- f1results[111]
    f2y[i] <- f2results[111] 
    #
  }
  #
  if(top_3[i] == 5)
  {
    puntlab[i] <- "Ruimte"
    #
    rrx[i] <- 100-rresults[113]
    f1x[i] <- 100-f1results[113]
    f2x[i] <- 100-f2results[113]
    #
    rry[i] <- rresults[114]
    f1y[i] <- f1results[114]
    f2y[i] <- f2results[114] 
    #
  }
  #
  if(top_3[i] == 6)
  {
    puntlab[i] <- "Rendement"
    #
    rrx[i] <- 100-rresults[116]
    f1x[i] <- 100-f1results[116]
    f2x[i] <- 100-f2results[116]
    #
    rry[i] <- rresults[117]
    f1y[i] <- f1results[117]
    f2y[i] <- f2results[117] 
    #
  }
  #
  if(top_3[i] == 7)
  {
    puntlab[i] <- "Resultaten"
    #
    rrx[i] <- 100-rresults[119]
    f1x[i] <- 100-f1results[119]
    f2x[i] <- 100-f2results[119]
    #
    rry[i] <- rresults[120]
    f1y[i] <- f1results[120]
    f2y[i] <- f2results[120] 
    #
  }
  #
  if(top_3[i] == 8)
  {
    puntlab[i] <- "Reflectie"
    #
    rrx[i] <- 100-rresults[122]
    f1x[i] <- 100-f1results[122]
    f2x[i] <- 100-f2results[122]
    #
    rry[i] <- rresults[123]
    f1y[i] <- f1results[123]
    f2y[i] <- f2results[123]  
    #
  }
  #
  if(top_3[i] == 9)
  {
    puntlab[i] <- "Relaties"
    #
    rrx[i] <- 100-rresults[125]
    f1x[i] <- 100-f1results[125]
    f2x[i] <- 100-f2results[125]
    #
    rry[i] <- rresults[126]
    f1y[i] <- f1results[126]
    f2y[i] <- f2results[126] 
    #
  }
  #
  if(top_3[i] == 10)
  {
    puntlab[i] <- "Ruggengraat"
    #
    rrx[i] <- 100-rresults[128]
    f1x[i] <- 100-f1results[128]
    f2x[i] <- 100-f2results[128]
    #
    rry[i] <- rresults[129]
    f1y[i] <- f1results[129]
    f2y[i] <- f2results[129] 
    #
  }
  #
  if(top_3[i] == 11)
  {
    puntlab[i] <- "Houding"
    #
    rrx[i] <- 100-rresults[131]
    f1x[i] <- 100-f1results[131]
    f2x[i] <- 100-f2results[131]
    #
    rry[i] <- rresults[132]
    f1y[i] <- f1results[132]
    f2y[i] <- f2results[132] 
    #
  }
  #
  if(top_3[i] == 12)
  {
    puntlab[i] <- "Gevoel"
    #
    rrx[i] <- 100-rresults[134]
    f1x[i] <- 100-f1results[134]
    f2x[i] <- 100-f2results[134]
    #
    rry[i] <- rresults[135]
    f1y[i] <- f1results[135]
    f2y[i] <- f2results[135] 
    #
  }
  #
  if(top_3[i] == 13)
  {
    puntlab[i] <- "Beeld"
    #
    rrx[i] <- 100-rresults[137]
    f1x[i] <- 100-f1results[137]
    f2x[i] <- 100-f2results[137]
    #
    rry[i] <- rresults[138]
    f1y[i] <- f1results[138]
    f2y[i] <- f2results[138] 
    #
  }
  #
  if(top_3[i] == 14)
  {
    puntlab[i] <- "Gedrag"
    #
    rrx[i] <- 100-rresults[140]
    f1x[i] <- 100-f1results[140]
    f2x[i] <- 100-f2results[140]
    #
    rry[i] <- rresults[141]
    f1y[i] <- f1results[141]
    f2y[i] <- f2results[141] 
    #
  }
  #
  if(top_3[i] == 15)
  {
    puntlab[i] <- "Uiting"
    #
    rrx[i] <- 100-rresults[143]
    f1x[i] <- 100-f1results[143]
    f2x[i] <- 100-f2results[143]
    #
    rry[i] <- rresults[144]
    f1y[i] <- f1results[144]
    f2y[i] <- f2results[144] 
    #
  }
  #
  if(top_3[i] == 16)
  {
    puntlab[i] <- "Transformatie"
    #
    rrx[i] <- 100-rresults[146]
    f1x[i] <- 100-f1results[146]
    f2x[i] <- 100-f2results[146]
    #
    rry[i] <- rresults[147]
    f1y[i] <- f1results[147]
    f2y[i] <- f2results[147] 
    #
  }
  #
  if(top_3[i] == 17)
  {
    puntlab[i] <- "Vitaliteit"
    #
    rrx[i] <- 0
    f1x[i] <- 0
    f2x[i] <- 0
    #
    rry[i] <- rresults[150]
    f1y[i] <- f1results[150]
    f2y[i] <- f2results[150] 
    #
  }
  #
  if(top_3[i] == 18)
  {
    puntlab[i] <- "Veranderen"
    #
    rrx[i] <- 100-rresults[151]
    f1x[i] <- 100-f1results[151]
    f2x[i] <- 100-f2results[151]
    #
    rry[i] <- 0
    f1y[i] <- 0
    f2y[i] <- 0 
    #
  }
  #
  if(top_3[i] == 19)
  {
    puntlab[i] <- "Prestatie"
    #
    rrx[i] <- 100-rresults[153]
    f1x[i] <- 100-f1results[153]
    f2x[i] <- 100-f2results[153]
    #
    rry[i] <- 0
    f1y[i] <- 0
    f2y[i] <- 0 
    #
  }
  #
  if(top_3[i] == 20)
  {
    puntlab[i] <- "Waarden"
    #
    rry[i] <- 0
    f1y[i] <- 0
    f2y[i] <- 0
    #
    rrx[i] <- 100-rresults[155]
    f1x[i] <- 100-f1results[155]
    f2x[i] <- 100-f2results[155] 
    #
  }
  #
}
#
y <- c(rrx,f1x,f2x)
x <- c(rry,f1y,f2y)
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
           col=c('green','green','green','green','green','green',
                 'blue','blue','blue','blue','blue','blue',
                 'orange','orange','orange','orange','orange','orange'
           ))
#
legend(0,104, c(rvnaam,f1vnaam,f2vnaam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","blue","orange"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()