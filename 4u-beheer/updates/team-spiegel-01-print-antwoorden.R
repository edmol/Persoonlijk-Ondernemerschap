teamprintantwoorden <- function(vraagnummer,a1,s1,prefix)
{
  if (a1 == 1 ) {r1_lab <- 'n'}
  if (a1 == 2 ) {r1_lab <- 'i'}
  if (a1 == 3 ) {r1_lab <- 's'}
  if (a1 == 4 ) {r1_lab <- 'm'}
  if (a1 == 5 ) {r1_lab <- 'a'}
  filename <- paste(folder,prefix,vraagnummer,".png",sep="")
  if (vraag_soort[vraagnummer]=="o") {barcol <- c("lightblue","white")} else {barcol <- c("orange","white")}
  if (vraag_soort[vraagnummer]=="o") {txtcol <- "blue"} else {txtcol <- "black"}
  if (vraag_soort[vraagnummer]=="o") {bg <- "lightgrey"} else {bg <- "white"}
  r1 <- cbind(c(s1,100-s1))
  png(filename=filename, width=1000, height=30,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2),1,5)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],vraag_factor[vraagnummer],adj = c(0,-0.3),col=txtcol,cex=2)
  barplot(r1,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r1_lab),pos=4,cex=2)
  graphics.off() 
}
