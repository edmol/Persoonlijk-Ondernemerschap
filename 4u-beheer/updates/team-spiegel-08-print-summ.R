teamprintsumm <- function(soort,rnum,s1,s2,s3,s4,s5,s6,s7,s8)
{
  filename <- paste(folder,"summ",rnum,".png",sep="")
  bg <- "white"
  if (soort=="o") 
  {
    txtcol <- "blue"
    summtekst <- 'Ondernemendheid'
  }
  if (soort=='b')
  {
    txtcol <- "orange"
    summtekst <- 'Betrokkenheid'
  }
  if (soort=='g')
  {
    txtcol <- c(139)
    summtekst <- 'Groeipotentieel'
  }
  if (soort=='v1')
  {
  txtcol <- "orange"
  summtekst <- 'Vitaliteit'
  }
  if (soort=='v2')
  {
  txtcol <- "black"
  summtekst <- 'Uitvalkans'
  }
  if (soort=='c1')
  {
  txtcol <- "blue"
  summtekst <- 'Veranderbaarheid'
  }
  if (soort=='c2')
  {
  txtcol <- "black"
  summtekst <- 'Groeipotentieel'
  }
  sc1 <- paste(as.character(s1)," %")
  sc2 <- paste(as.character(s2)," %")
  sc3 <- paste(as.character(s3)," %")
  sc4 <- paste(as.character(s4)," %")
  sc5 <- paste(as.character(s5)," %")
  sc6 <- paste(as.character(s6)," %")
  sc7 <- paste(as.character(s7)," %")
  sc8 <- paste(as.character(s8)," %")
  png(filename=filename, width=1000, height=30,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9),1,19)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],summtekst,adj = c(0,0),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc1,adj = c(0,0),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc2,adj = c(0,0),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc3,adj = c(0,-0.3),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc4,adj = c(0,-0.3),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc5,adj = c(0,-0.3),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc6,adj = c(0,-0.3),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc7,adj = c(0,-0.3),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc8,adj = c(0,-0.3),col=txtcol,cex=2)
  graphics.off() 
}
