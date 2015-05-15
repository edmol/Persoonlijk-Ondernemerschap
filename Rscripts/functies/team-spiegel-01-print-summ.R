teamprintsumm <- function(soort,rnum,steam,s1)
{
  filename <- paste(folder,"summ",rnum,".png",sep="")
  bg <- "white"
  if (soort=="o") 
  {
    txtcol <- "blue"
    summtekst <- 'Mate van ondernemendheid'
  }
  if (soort=='b')
  {
    txtcol <- "black"
    summtekst <- 'Mate van behoudendheid'
  }
  if (soort=='g')
  {
    txtcol <- "purple"
    summtekst <- 'Ontwikkelruimte'
  }
  if (soort=='v1')
  {
    txtcol <- "black"
    summtekst <- 'Mate van vitaal zijn'
  }
  if (soort=='v2')
  {
    txtcol <- "purple"
    summtekst <- 'Kans op uitval'
  }
  if (soort=='c1')
  {
    txtcol <- "blue"
    summtekst <- 'Mate van veranderbaarheid'
  }
  if (soort=='c2')
  {
    txtcol <- "purple"
    summtekst <- 'Ontwikkelruimte'
  }
  steam <- paste(as.character(steam)," %")
  sc1 <- paste(as.character(s1)," %")
  png(filename=filename, width=1000, height=19,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,4,4),1,26)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],"",adj = c(0,0),col=txtcol,cex=1.8)
  plot.new()
  text(usr[1],usr[3],summtekst,adj = c(0,0),col=txtcol,cex=1.8)
  plot.new()
  text(usr[1],usr[3],steam,adj = c(0,0),col=txtcol,cex=1.8)
  plot.new()
  text(usr[1],usr[3],sc1,adj = c(0,0),col=txtcol,cex=1.8)
  graphics.off() 
}
