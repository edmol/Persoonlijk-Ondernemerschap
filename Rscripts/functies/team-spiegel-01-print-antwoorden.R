teamprintantwoorden <- function(vraagnummer,team,s1,a1,prefix)
{
  if (a1 == 1 ) {r1_lab <- 'n'}
  if (a1 == 2 ) {r1_lab <- 'i'}
  if (a1 == 3 ) {r1_lab <- 's'}
  if (a1 == 4 ) {r1_lab <- 'm'}
  if (a1 == 5 ) {r1_lab <- 'a'}
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
  png(filename=filename, width=1000, height=19,bg=bg) 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,4,4),1,26)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],vraag_factor[vraagnummer],adj = c(0,0),col=factcol,cex=1.8)
  plot.new()
  text(usr[1],usr[3],vraag[vraagnummer],adj = c(0,0),col=txtcol,cex=1.8)
  barplot(r0,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  barplot(r1,horiz=TRUE,col=barcol,axes=FALSE,yaxt='n',ann=FALSE)
  text(0,0.5,labels=c(r1_lab),pos=4,cex=1.2)
  graphics.off() 
}
