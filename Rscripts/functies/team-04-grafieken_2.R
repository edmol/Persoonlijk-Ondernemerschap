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
#
f1x=c(100-t1results[101],100-t1results[104],100-t1results[107],100-t1results[110],100-t1results[113],100-t1results[116],
      100-t1results[119],100-t1results[122],100-t1results[125],100-t1results[128])
f1y=c(t1results[102],t1results[105],t1results[108],t1results[111],t1results[114],t1results[117],
      t1results[120],t1results[123],t1results[126],t1results[129])
#
f2x=c(100-t2results[101],100-t2results[104],100-t2results[107],100-t2results[110],100-t2results[113],100-t2results[116],
      100-t2results[119],100-t2results[122],100-t2results[125],100-t2results[128])
f2y=c(t2results[102],t2results[105],t2results[108],t2results[111],t2results[114],t2results[117],
      t2results[120],t2results[123],t2results[126],t2results[129])
#
f3x=c(100-t3results[101],100-t3results[104],100-t3results[107],100-t3results[110],100-t3results[113],100-t3results[116],
      100-t3results[119],100-t3results[122],100-t3results[125],100-t3results[128])
f3y=c(t3results[102],t3results[105],t3results[108],t3results[111],t3results[114],t3results[117],
      t3results[120],t3results[123],t3results[126],t3results[129])
#
f4x=c(100-t4results[101],100-t4results[104],100-t4results[107],100-t4results[110],100-t4results[113],100-t4results[116],
      100-t4results[119],100-t4results[122],100-t4results[125],100-t4results[128])
f4y=c(t4results[102],t4results[105],t4results[108],t4results[111],t4results[114],t4results[117],
      t4results[120],t4results[123],t4results[126],t4results[129])
#
y <- c(rrx,f1x,f2x,f3x,f4x)
x <- c(rry,f1y,f2y,f3y,f4y)
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
           col=c('green','green','green','green','green','green','green','green','green','green',
                 'red','red','red','red','red','red','red','red','red','red',
                 'blue','blue','blue','blue','blue','blue','blue','blue','blue','blue',
                 'gray','gray','gray','gray','gray','gray','gray','gray','gray','gray',
                 'black','black','black','black','black','black','black','black','black','black'
           ))
#
legend(0,104, c("team",t1naam,t2naam,t3naam,t4naam),
       cex=2.5,  horiz=TRUE,
       text.col=c("green","red","blue","gray","black"))
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
f1x=c(100-t1results[131],100-t1results[140],100-t1results[134],100-t1results[137],100-t1results[143])
f2x=c(100-t2results[131],100-t2results[140],100-t2results[134],100-t2results[137],100-t2results[143])
f3x=c(100-t3results[131],100-t3results[140],100-t3results[134],100-t3results[137],100-t3results[143])
f4x=c(100-t4results[131],100-t4results[140],100-t4results[134],100-t4results[137],100-t4results[143])
#
rry=c(team[132],team[141],team[135],team[138],team[144])
f1y=c(t1results[132],t1results[141],t1results[135],t1results[138],t1results[144])
f2y=c(t2results[132],t2results[141],t2results[135],t2results[138],t2results[144])
f3y=c(t3results[132],t3results[141],t3results[135],t3results[138],t3results[144])
f4y=c(t4results[132],t4results[141],t4results[135],t4results[138],t4results[144])
#
y <- c(rrx,f1x,f2x,f3x,f4x)
x <- c(rry,f1y,f2y,f3y,f4y)
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
           col=c('green','green','green','green','green',
                 'red','red','red','red','red',
                 'blue','blue','blue','blue','blue',
                 'gray','gray','gray','gray','gray',
                 'black','black','black','black','black'
           ))
#
legend(0,104, c("team",t1naam,t2naam,t3naam,t4naam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","red","blue","gray","black"))
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
f1x=c(mean(c(100-t1results[101],100-t1results[104],100-t1results[107])),
      mean(c(100-t1results[110],100-t1results[113])),
      mean(c(100-t1results[116],100-t1results[119])),
      mean(c(100-t1results[122],100-t1results[125],100-t1results[128])))
f2x=c(mean(c(100-t2results[101],100-t2results[104],100-t2results[107])),
      mean(c(100-t2results[110],100-t2results[113])),
      mean(c(100-t2results[116],100-t2results[119])),
      mean(c(100-t2results[122],100-t2results[125],100-t2results[128])))
f3x=c(mean(c(100-t3results[101],100-t3results[104],100-t3results[107])),
      mean(c(100-t3results[110],100-t3results[113])),
      mean(c(100-t3results[116],100-t3results[119])),
      mean(c(100-t3results[122],100-t3results[125],100-t3results[128])))
f4x=c(mean(c(100-t4results[101],100-t4results[104],100-t4results[107])),
      mean(c(100-t4results[110],100-t4results[113])),
      mean(c(100-t4results[116],100-t4results[119])),
      mean(c(100-t4results[122],100-t4results[125],100-t4results[128])))
#
rry=c(mean(c(team[102],team[105],team[108])),
      mean(c(team[111],team[114])),
      mean(c(team[117],team[120])),
      mean(c(team[123],team[126],team[129])))
f1y=c(mean(c(t1results[102],t1results[105],t1results[108])),
      mean(c(t1results[111],t1results[114])),
      mean(c(t1results[117],t1results[120])),
      mean(c(t1results[123],t1results[126],t1results[129])))
f2y=c(mean(c(t2results[102],t2results[105],t2results[108])),
      mean(c(t2results[111],t2results[114])),
      mean(c(t2results[117],t2results[120])),
      mean(c(t2results[123],t2results[126],t2results[129])))
f3y=c(mean(c(t3results[102],t3results[105],t3results[108])),
      mean(c(t3results[111],t3results[114])),
      mean(c(t3results[117],t3results[120])),
      mean(c(t3results[123],t3results[126],t3results[129])))
f4y=c(mean(c(t4results[102],t4results[105],t4results[108])),
      mean(c(t4results[111],t4results[114])),
      mean(c(t4results[117],t4results[120])),
      mean(c(t4results[123],t4results[126],t4results[129])))
#
y <- c(rrx,f1x,f2x,f3x,f4x)
x <- c(rry,f1y,f2y,f3y,f4y)
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
           col=c('green','green','green','green',
                 'red','red','red','red',
                 'blue','blue','blue','blue',
                 'gray','gray','gray','gray',
                 'black','black','black','black'
           ))
#
legend(0,104, c("team",t1naam,t2naam,t3naam,t4naam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","red","blue","gray","black","yellow"))
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
f1x=c(0,100-t1results[151],100-t1results[146],100-t1results[153],t1results[156])
f2x=c(0,100-t2results[151],100-t2results[146],100-t2results[153],t2results[156])
f3x=c(0,100-t3results[151],100-t3results[146],100-t3results[153],t3results[156])
f4x=c(0,100-t4results[151],100-t4results[146],100-t4results[153],t4results[156])
#
rry=c(team[150],0,team[147],0,0)
f1y=c(t1results[150],0,t1results[147],0,0)
f2y=c(t2results[150],0,t2results[147],0,0)
f3y=c(t3results[150],0,t3results[147],0,0)
f4y=c(t4results[150],0,t4results[147],0,0)
#
y <- c(rrx,f1x,f2x,f3x,f4x)
x <- c(rry,f1y,f2y,f3y,f4y)
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
           col=c('green','green','green','green','green',
                 'red','red','red','red','red',
                 'blue','blue','blue','blue','blue',
                 'gray','gray','gray','gray','gray',
                 'black','black','black','black','black'
           ))
#
legend(0,104, c("team",t1naam,t2naam,t3naam,t4naam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","red","blue","gray","black"))
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
f1x <- c(0,0,0,0,0,0)
f2x <- c(0,0,0,0,0,0)
f3x <- c(0,0,0,0,0,0)
f4x <- c(0,0,0,0,0,0)
#
rry <- c(0,0,0,0,0,0)
f1y <- c(0,0,0,0,0,0)
f2y <- c(0,0,0,0,0,0)
f3y <- c(0,0,0,0,0,0)
f4y <- c(0,0,0,0,0,0)
#
puntlab <- c(" "," "," "," "," "," ")

for(i in 1 : 6)
{
  if(top_3[i] == 1)
  {
    puntlab[i] <- "Regenboog"
    #
    rrx[i] <- 100-team[101]
    f1x[i] <- 100-t1results[101]
    f2x[i] <- 100-t2results[101]
    f3x[i] <- 100-t3results[101]
    f4x[i] <- 100-t4results[101]
    #
    rry[i] <- team[102]
    f1y[i] <- t1results[102]
    f2y[i] <- t2results[102] 
    f3y[i] <- t3results[102] 
    f4y[i] <- t4results[102]
  }
  #
  if(top_3[i] == 2)
  {
    puntlab[i] <- "Regie"
    #
    rrx[i] <- 100-team[104]
    f1x[i] <- 100-t1results[104]
    f2x[i] <- 100-t2results[104]
    f3x[i] <- 100-t3results[104]
    f4x[i] <- 100-t4results[104]
    #
    rry[i] <- team[105]
    f1y[i] <- t1results[105]
    f2y[i] <- t2results[105] 
    f3y[i] <- t3results[105] 
    f4y[i] <- t4results[105]
    #
  }
  #
  if(top_3[i] == 3)
  {
    puntlab[i] <- "Richting"
    #
    rrx[i] <- 100-team[107]
    f1x[i] <- 100-t1results[107]
    f2x[i] <- 100-t2results[107]
    f3x[i] <- 100-t3results[107]
    f4x[i] <- 100-t4results[107]
    #
    rry[i] <- team[108]
    f1y[i] <- t1results[108]
    f2y[i] <- t2results[108] 
    f3y[i] <- t3results[108] 
    f4y[i] <- t4results[108]
    #
  }
  #
  if(top_3[i] == 4)
  {
    puntlab[i] <- "Rust"
    #
    rrx[i] <- 100-team[110]
    f1x[i] <- 100-t1results[110]
    f2x[i] <- 100-t2results[110]
    f3x[i] <- 100-t3results[110]
    f4x[i] <- 100-t4results[110]
    #
    rry[i] <- team[111]
    f1y[i] <- t1results[111]
    f2y[i] <- t2results[111] 
    f3y[i] <- t3results[111] 
    f4y[i] <- t4results[111]
    #
  }
  #
  if(top_3[i] == 5)
  {
    puntlab[i] <- "Ruimte"
    #
    rrx[i] <- 100-team[113]
    f1x[i] <- 100-t1results[113]
    f2x[i] <- 100-t2results[113]
    f3x[i] <- 100-t3results[113]
    f4x[i] <- 100-t4results[113]
    #
    rry[i] <- team[114]
    f1y[i] <- t1results[114]
    f2y[i] <- t2results[114] 
    f3y[i] <- t3results[114] 
    f4y[i] <- t4results[114]
    #
  }
  #
  if(top_3[i] == 6)
  {
    puntlab[i] <- "Rendement"
    #
    rrx[i] <- 100-team[116]
    f1x[i] <- 100-t1results[116]
    f2x[i] <- 100-t2results[116]
    f3x[i] <- 100-t3results[116]
    f4x[i] <- 100-t4results[116]
    #
    rry[i] <- team[117]
    f1y[i] <- t1results[117]
    f2y[i] <- t2results[117] 
    f3y[i] <- t3results[117] 
    f4y[i] <- t4results[117]
    #
  }
  #
  if(top_3[i] == 7)
  {
    puntlab[i] <- "Resultaten"
    #
    rrx[i] <- 100-team[119]
    f1x[i] <- 100-t1results[119]
    f2x[i] <- 100-t2results[119]
    f3x[i] <- 100-t3results[119]
    f4x[i] <- 100-t4results[119]
    #
    rry[i] <- team[120]
    f1y[i] <- t1results[120]
    f2y[i] <- t2results[120] 
    f3y[i] <- t3results[120] 
    f4y[i] <- t4results[120]
    #
  }
  #
  if(top_3[i] == 8)
  {
    puntlab[i] <- "Reflectie"
    #
    rrx[i] <- 100-team[122]
    f1x[i] <- 100-t1results[122]
    f2x[i] <- 100-t2results[122]
    f3x[i] <- 100-t3results[122]
    f4x[i] <- 100-t4results[122]
    #
    rry[i] <- team[123]
    f1y[i] <- t1results[123]
    f2y[i] <- t2results[123] 
    f3y[i] <- t3results[123] 
    f4y[i] <- t4results[123]
    #
  }
  #
  if(top_3[i] == 9)
  {
    puntlab[i] <- "Relaties"
    #
    rrx[i] <- 100-team[125]
    f1x[i] <- 100-t1results[125]
    f2x[i] <- 100-t2results[125]
    f3x[i] <- 100-t3results[125]
    f4x[i] <- 100-t4results[125]
    #
    rry[i] <- team[126]
    f1y[i] <- t1results[126]
    f2y[i] <- t2results[126] 
    f3y[i] <- t3results[126] 
    f4y[i] <- t4results[126]
    #
  }
  #
  if(top_3[i] == 10)
  {
    puntlab[i] <- "Ruggengraat"
    #
    rrx[i] <- 100-team[128]
    f1x[i] <- 100-t1results[128]
    f2x[i] <- 100-t2results[128]
    f3x[i] <- 100-t3results[128]
    f4x[i] <- 100-t4results[128]
    #
    rry[i] <- team[129]
    f1y[i] <- t1results[129]
    f2y[i] <- t2results[129] 
    f3y[i] <- t3results[129] 
    f4y[i] <- t4results[129]
    #
  }
  #
  if(top_3[i] == 11)
  {
    puntlab[i] <- "Houding"
    #
    rrx[i] <- 100-team[131]
    f1x[i] <- 100-t1results[131]
    f2x[i] <- 100-t2results[131]
    f3x[i] <- 100-t3results[131]
    f4x[i] <- 100-t4results[131]
    #
    rry[i] <- team[132]
    f1y[i] <- t1results[132]
    f2y[i] <- t2results[132] 
    f3y[i] <- t3results[132] 
    f4y[i] <- t4results[132]
    #
  }
  #
  if(top_3[i] == 12)
  {
    puntlab[i] <- "Gevoel"
    #
    rrx[i] <- 100-team[134]
    f1x[i] <- 100-t1results[134]
    f2x[i] <- 100-t2results[134]
    f3x[i] <- 100-t3results[134]
    f4x[i] <- 100-t4results[134]
    #
    rry[i] <- team[135]
    f1y[i] <- t1results[135]
    f2y[i] <- t2results[135] 
    f3y[i] <- t3results[135] 
    f4y[i] <- t4results[135]
    #
  }
  #
  if(top_3[i] == 13)
  {
    puntlab[i] <- "Beeld"
    #
    rrx[i] <- 100-team[137]
    f1x[i] <- 100-t1results[137]
    f2x[i] <- 100-t2results[137]
    f3x[i] <- 100-t3results[137]
    f4x[i] <- 100-t4results[137]
    #
    rry[i] <- team[138]
    f1y[i] <- t1results[138]
    f2y[i] <- t2results[138] 
    f3y[i] <- t3results[138] 
    f4y[i] <- t4results[138]
    #
  }
  #
  if(top_3[i] == 14)
  {
    puntlab[i] <- "Gedrag"
    #
    rrx[i] <- 100-team[140]
    f1x[i] <- 100-t1results[140]
    f2x[i] <- 100-t2results[140]
    f3x[i] <- 100-t3results[140]
    f4x[i] <- 100-t4results[140]
    #
    rry[i] <- team[141]
    f1y[i] <- t1results[141]
    f2y[i] <- t2results[141] 
    f3y[i] <- t3results[141] 
    f4y[i] <- t4results[141]
    #
  }
  #
  if(top_3[i] == 15)
  {
    puntlab[i] <- "Uiting"
    #
    rrx[i] <- 100-team[143]
    f1x[i] <- 100-t1results[143]
    f2x[i] <- 100-t2results[143]
    f3x[i] <- 100-t3results[143]
    f4x[i] <- 100-t4results[143]
    #
    rry[i] <- team[144]
    f1y[i] <- t1results[144]
    f2y[i] <- t2results[144] 
    f3y[i] <- t3results[144] 
    f4y[i] <- t4results[144]
    #
  }
  #
  if(top_3[i] == 16)
  {
    puntlab[i] <- "Transformatie"
    #
    rrx[i] <- 100-team[146]
    f1x[i] <- 100-t1results[146]
    f2x[i] <- 100-t2results[146]
    f3x[i] <- 100-t3results[146]
    f4x[i] <- 100-t4results[146]
    #
    rry[i] <- team[147]
    f1y[i] <- t1results[147]
    f2y[i] <- t2results[147] 
    f3y[i] <- t3results[147] 
    f4y[i] <- t4results[147]
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
    f3x[i] <- 0
    f4x[i] <- 0
    #
    rry[i] <- team[150]
    f1y[i] <- t1results[150]
    f2y[i] <- t2results[150] 
    f3y[i] <- t3results[150] 
    f4y[i] <- t4results[150]
    #
  }
  #
  if(top_3[i] == 18)
  {
    puntlab[i] <- "Veranderen"
    #
    rrx[i] <- 100-team[151]
    f1x[i] <- 100-t1results[151]
    f2x[i] <- 100-t2results[151]
    f3x[i] <- 100-t3results[151]
    f4x[i] <- 100-t4results[151]
    #
    rry[i] <- 0
    f1y[i] <- 0
    f2y[i] <- 0 
    f3y[i] <- 0 
    f4y[i] <- 0
    #
  }
  #
  if(top_3[i] == 19)
  {
    puntlab[i] <- "Prestatie"
    #
    rrx[i] <- 100-team[153]
    f1x[i] <- 100-t1results[153]
    f2x[i] <- 100-t2results[153]
    f3x[i] <- 100-t3results[153]
    f4x[i] <- 100-t4results[153]
    #
    rry[i] <- 0
    f1y[i] <- 0
    f2y[i] <- 0 
    f3y[i] <- 0 
    f4y[i] <- 0
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
    f3y[i] <- 0
    f4y[i] <- 0
    #
    rrx[i] <- 100-team[155]
    f1x[i] <- 100-t1results[155]
    f2x[i] <- 100-t2results[155] 
    f3x[i] <- 100-t3results[155] 
    f4x[i] <- 100-t4results[155]
    #
  }
  #
}
#
y <- c(rrx,f1x,f2x,f3x,f4x)
x <- c(rry,f1y,f2y,f3y,f4y)
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
           col=c('green','green','green','green','green','green',
                 'red','red','red','red','red','red',
                 'blue','blue','blue','blue','blue','blue',
                 'gray','gray','gray','gray','gray','gray',
                 'black','black','black','black','black','black'
           ))
#
legend(0,104, c("team",t1naam,t2naam,t3naam,t4naam),
       cex=2.5, horiz=TRUE,
       text.col=c("green","red","blue","gray","black"))
#
#abline(h = y[1], col = "blue")
# abline(v = x[1], col = "orange")
rect(0, 0, 40, 40, density = 1, col ='green')
rect(0,40,40,99, density = 1 , col = 'blue')
rect(40,0,100,40, density = 1 , col = 'orange')
rect(40,40,100,99, density = 1 , col = 'red')
box()
dev.off()