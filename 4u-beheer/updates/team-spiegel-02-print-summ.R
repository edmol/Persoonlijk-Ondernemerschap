teamprintsumm <- function(soort,rnum,s1,s2)
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
  png(filename=filename, width=1000, height=30,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2,3,3),1,7)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],summtekst,adj = c(0,0),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc1,adj = c(0,0),col=txtcol,cex=2)
  plot.new()
  text(usr[1],usr[3],sc2,adj = c(0,0),col=txtcol,cex=2)
  graphics.off() 
}
