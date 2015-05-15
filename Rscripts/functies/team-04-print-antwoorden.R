teamprintantwoorden <- function(vraagnummer,team,s1,s2,s3,s4,a1,a2,a3,a4,prefix)
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
  filename <- paste(folder,prefix,vraagnummer,".png",sep="")
  if (vraag_soort[vraagnummer]=="o") {barcol <- c("lightblue","white")} else {barcol <- c("orange","white")}
  if (vraag_soort[vraagnummer]=="o") {txtcol <- c("blue")} else {txtcol <- c("black")}
  if (vraag_soort[vraagnummer]=="o") {bg <- c("white")} else {bg <- c("white")}
  #
  if (!is.na(vraag_houding[vraagnummer])) {factcol <- c("salmon4")}
  if (!is.na(vraag_gedrag[vraagnummer])) {factcol<- c("sienna3")}
  if (!is.na(vraag_gevoel[vraagnummer])) {factcol<- c("firebrick3")}
  if (!is.na(vraag_kenmerk[vraagnummer])) {factcol<- c("deepskyblue3")}
  if (!is.na(vraag_effect[vraagnummer])) {factcol<- c("blue4")}
  #
  r0 <- cbind(c(team,100-team))
  r1 <- cbind(c(s1,100-s1))
  r2 <- cbind(c(s2,100-s2))
  r3 <- cbind(c(s3,100-s3))
  r4 <- cbind(c(s4,100-s4))
  png(filename=filename, width=1000, height=22,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,4,4,5,5,6,6,7,7),1,32)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],vraag_factor[vraagnummer],adj = c(0,-0.3),col=factcol,cex=1.9)
  plot.new()
  text(usr[1],usr[3],vraag[vraagnummer],adj = c(0,0),col=txtcol,cex=1.9)
  barplot(r0,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  barplot(r1,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r1_lab),pos=4,cex=1.2)
  barplot(r2,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r2_lab),pos=4,cex=1.2)
  barplot(r3,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r3_lab),pos=4,cex=1.2)
  barplot(r4,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r4_lab),pos=4,cex=1.2)
  graphics.off() 
}
