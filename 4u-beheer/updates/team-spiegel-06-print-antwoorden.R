teamprintantwoorden <- function(vraagnummer,s1,s2,s3,s4,s5,s6,a1,a2,a3,a5,a5,a6,prefix)
{
  if (a1 == 1 ) {r1_lab <- 'n'}
  if (a1 == 2 ) {r1_lab <- 'i'}
  if (a1 == 3 ) {r1_lab <- 's'}
  if (a1 == 4 ) {r1_lab <- 'm'}
  if (a1 == 5 ) {r1_lab <- 'a'}
  if (a2 == 1 ) {r2_lab <- 'n'}
  if (a2 == 2 ) {r2_lab <- 'i'}
  if (a2 == 3 ) {r2_lab <- 's'}
  if (a2 == 4 ) {r2_lab <- 'm'}
  if (a2 == 5 ) {r2_lab <- 'a'}
  if (a3 == 1 ) {r3_lab <- 'n'}
  if (a3 == 2 ) {r3_lab <- 'i'}
  if (a3 == 3 ) {r3_lab <- 's'}
  if (a3 == 4 ) {r3_lab <- 'm'}
  if (a3 == 5 ) {r3_lab <- 'a'}
  if (a4 == 1 ) {r4_lab <- 'n'}
  if (a4 == 2 ) {r4_lab <- 'i'}
  if (a4 == 3 ) {r4_lab <- 's'}
  if (a4 == 4 ) {r4_lab <- 'm'}
  if (a4 == 5 ) {r4_lab <- 'a'}
  if (a5 == 1 ) {r5_lab <- 'n'}
  if (a5 == 2 ) {r5_lab <- 'i'}
  if (a5 == 3 ) {r5_lab <- 's'}
  if (a5 == 4 ) {r5_lab <- 'm'}
  if (a5 == 5 ) {r5_lab <- 'a'}
  if (a6 == 1 ) {r6_lab <- 'n'}
  if (a6 == 2 ) {r6_lab <- 'i'}
  if (a6 == 3 ) {r6_lab <- 's'}
  if (a6 == 4 ) {r6_lab <- 'm'}
  if (a6 == 5 ) {r6_lab <- 'a'}
  filename <- paste(folder,prefix,vraagnummer,".png",sep="")
  if (vraag_soort[vraagnummer]=="o") {barcol <- c("lightblue","white")} else {barcol <- c("orange","white")}
  if (vraag_soort[vraagnummer]=="o") {txtcol <- "blue"} else {txtcol <- "black"}
  if (vraag_soort[vraagnummer]=="o") {bg <- "lightgrey"} else {bg <- "white"}
  r1 <- cbind(c(s1,100-s1))
  r2 <- cbind(c(s2,100-s2))
  r3 <- cbind(c(s3,100-s3))
  r4 <- cbind(c(s4,100-s4))
  r5 <- cbind(c(s5,100-s5))
  r6 <- cbind(c(s6,100-s6))
  png(filename=filename, width=1000, height=30,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2,3,3,4,4,5,5,6,6,7,7),1,15)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],vraag_factor[vraagnummer],adj = c(0,-0.3),col=txtcol,cex=2)
  barplot(r1,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r1_lab),pos=4,cex=2)
  barplot(r2,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r2_lab),pos=4,cex=2)
  barplot(r3,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r3_lab),pos=4,cex=2)
  barplot(r4,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r4_lab),pos=4,cex=2)
  barplot(r5,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r5_lab),pos=4,cex=2)
  barplot(r6,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
   text(0,0.5,labels=c(r6_lab),pos=4,cex=2)
  graphics.off() 
}
