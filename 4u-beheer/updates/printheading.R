printheading <- function(dimensie,stap,respondent,feedback1,feedback2,filename)
{
  png(filename=paste(folder,filename,sep=""), width=1000, height=40,bg="lightblue") 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,4,4,5,5),1,20)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],dimensie,adj = c(0,-0.3),col="blue",cex=2)
  plot.new()
  text(usr[1],usr[3],stap,adj = c(0,-0.3),col="black",cex=2)
  plot.new()
  text(usr[1],usr[3],respondent,adj = c(0,-0.3),col="red",cex=2)
  plot.new()
  text(usr[1],usr[3],feedback1,adj = c(0,-0.3),col="black",cex=2)
  plot.new()
  text(usr[1],usr[3],feedback2,adj = c(0,-0.3),col="black",cex=2)
  graphics.off()
}
