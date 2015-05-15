teamprintheading <- function(dimensie,n1,n2,n3,n4,n5,n6,filename)
{
  png(filename=paste(folder,filename,sep=""), width=1000, height=40,bg="lightblue") 
  par(mar=c(0.1,0.1,0,0.1),
      oma=c(0.1,0.1,0,0.1),
      layout(matrix(c(1,1,1,2,2,3,3,4,4,5,5,6,6,7,7),1,15)))
  usr <- par("usr")
  plot.new()
  text(usr[1],usr[3],dimensie,adj = c(0,-0.3),col="blue",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n1,adj = c(0,-0.3),col="black",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n2,adj = c(0,-0.3),col="black",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n3,adj = c(0,-0.3),col="black",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n4,adj = c(0,-0.3),col="black",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n5,adj = c(0,-0.3),col="black",cex=2.5)
  plot.new()
  text(usr[1],usr[3],n6,adj = c(0,-0.3),col="black",cex=2.5)
  graphics.off()
}
