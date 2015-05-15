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
rrx=c(100-team[101],100-team[104],100-team[107],100-team[110],100-team[113],100-team[116],
      100-team[119],100-team[122],100-team[125],100-team[128])
rry=c(team[102],team[105],team[108],team[111],team[114],team[117],
      team[120],team[123],team[126],team[129])
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
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="% Behoudendheid",ylab="% Ondernemdheid",main="Ontwikkelruimte PO stappen")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green','green','green','green','green','green'
           ))
#
legend(0,104, c(t1naam),
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
rrx=c(100-team[131],100-team[140],100-team[134],100-team[137],100-team[143])
#
rry=c(team[132],team[141],team[135],team[138],team[144])
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
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="% Behoudendheid",ylab="% Ondernemdheid",main="Ontwikkelruimte kritieke succesfactoren")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green'
           ))
#
legend(0,104, c(t1naam),
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
rrx=c(mean(c(100-team[101],100-team[104],100-team[107])),
      mean(c(100-team[110],100-team[113])),
      mean(c(100-team[116],100-team[119])),
      mean(c(100-team[122],100-team[125],100-team[128])))
#
rry=c(mean(c(team[102],team[105],team[108])),
      mean(c(team[111],team[114])),
      mean(c(team[117],team[120])),
      mean(c(team[123],team[126],team[129])))
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
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="% Behoudendheid",ylab="% Ondernemdheid",main="Ontwikkelruimte op de PO dimensies")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green'
           ))
#
legend(0,104, c(t1naam),
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
rrx=c(0,100-team[151],100-team[146],100-team[153],team[156])
#
rry=c(team[150],0,team[147],0,0)
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
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="% Behoudendheid",ylab="% Ondernemdheid",main="Ontwikkelruimte kritieke factoren (specials)")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green'
           ))
#
legend(0,104, c(t1naam),
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
top_3 <- c(t9sum$prio[1],t9sum$prio[2],t9sum$prio[3],t9sum$prio[18],t9sum$prio[19],t9sum$prio[20])
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
    rrx[i] <- 100-team[101]
    #
    rry[i] <- team[102]
  }
  #
  if(top_3[i] == 2)
  {
    puntlab[i] <- "Regie"
    #
    rrx[i] <- 100-team[104]
    #
    rry[i] <- team[105]
    #
  }
  #
  if(top_3[i] == 3)
  {
    puntlab[i] <- "Richting"
    #
    rrx[i] <- 100-team[107]
    #
    rry[i] <- team[108]
    #
  }
  #
  if(top_3[i] == 4)
  {
    puntlab[i] <- "Rust"
    #
    rrx[i] <- 100-team[110]
    #
    rry[i] <- team[111]
    #
  }
  #
  if(top_3[i] == 5)
  {
    puntlab[i] <- "Ruimte"
    #
    rrx[i] <- 100-team[113]
    #
    rry[i] <- team[114]
    #
  }
  #
  if(top_3[i] == 6)
  {
    puntlab[i] <- "Rendement"
    #
    rrx[i] <- 100-team[116]
    #
    rry[i] <- team[117]
    #
  }
  #
  if(top_3[i] == 7)
  {
    puntlab[i] <- "Resultaten"
    #
    rrx[i] <- 100-team[119]
    #
    rry[i] <- team[120]
    #
  }
  #
  if(top_3[i] == 8)
  {
    puntlab[i] <- "Reflectie"
    #
    rrx[i] <- 100-team[122]
    #
    rry[i] <- team[123]
    #
  }
  #
  if(top_3[i] == 9)
  {
    puntlab[i] <- "Relaties"
    #
    rrx[i] <- 100-team[125]
    #
    rry[i] <- team[126]
    #
  }
  #
  if(top_3[i] == 10)
  {
    puntlab[i] <- "Ruggengraat"
    #
    rrx[i] <- 100-team[128]
    #
    rry[i] <- team[129]
    #
  }
  #
  if(top_3[i] == 11)
  {
    puntlab[i] <- "Houding"
    #
    rrx[i] <- 100-team[131]
    #
    rry[i] <- team[132]
    #
  }
  #
  if(top_3[i] == 12)
  {
    puntlab[i] <- "Gevoel"
    #
    rrx[i] <- 100-team[134]
    #
    rry[i] <- team[135]
    #
  }
  #
  if(top_3[i] == 13)
  {
    puntlab[i] <- "Beeld"
    #
    rrx[i] <- 100-team[137]
    #
    rry[i] <- team[138]
    #
  }
  #
  if(top_3[i] == 14)
  {
    puntlab[i] <- "Gedrag"
    #
    rrx[i] <- 100-team[140]
    #
    rry[i] <- team[141]
    #
  }
  #
  if(top_3[i] == 15)
  {
    puntlab[i] <- "Uiting"
    #
    rrx[i] <- 100-team[143]
    #
    rry[i] <- team[144]
    #
  }
  #
  if(top_3[i] == 16)
  {
    puntlab[i] <- "Transformatie"
    #
    rrx[i] <- 100-team[146]
    #
    rry[i] <- team[147]
    #
  }
  #
  if(top_3[i] == 17)
  {
    puntlab[i] <- "Vitaliteit"
    #
    rrx[i] <- 0
       #
    rry[i] <- team[150]
    #
  }
  #
  if(top_3[i] == 18)
  {
    puntlab[i] <- "Veranderen"
    #
    rrx[i] <- 100-team[151]
    #
    rry[i] <- 0
    #
  }
  #
  if(top_3[i] == 19)
  {
    puntlab[i] <- "Prestatie"
    #
    rrx[i] <- 100-team[153]
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
    rrx[i] <- 100-team[155] 
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
plot(x, y, xlim=c(0,100),ylim=c(0,100),cex.lab=1.5,cex.main=2.5,xlab="% Behoudendheid",ylab="% Ondernemdheid",main="Ontwikkelruimte hoogste en laagste 3 factoren")
axis(1,at=c(0,10,20,30,40,50,60,70,80,90,100))
axis(2,at=c(0,10,20,30,40,50,60,70,80,90,100))
minor.tick(nx=10,ny=10,tick.ratio=0.5)
pointLabel(x, y, labels = paste("  ", puntlab, "  ", sep=""), cex=2.5,
           col=c('green','green','green','green','green','green'
           ))
#
legend(0,104, c(t1naam),
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