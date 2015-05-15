require(RMySQL)
driver <- MySQL(max.con=100, force.reload = TRUE)
con_arcovida<- dbConnect(MySQL(), user="root", password="mvhcmdhjh82",dbname="arcovida-nl", host="localhost")
#
new_tokens_db <- "lime_tokens_484944"
#
dir_records = dbGetQuery(con_arcovida,statement=paste('select attribute_6 from ',new_tokens_db,' where attribute_1="r"',sep=""))
#
count <- nrow(dir_records)
for( i in 1 : count)
{
mainDir <- '/var/www/4u-change.com/web/wp-content/gallery/porapporten'
#
subDir <- substr(dir_records[i,1], nchar(mainDir)+2,nchar(dir_records[i,1])-1)
print(subDir)

#setwd(mainDir)
if (file.exists(subDir)){
  setwd(mainDir)
} else {
#  dir.create(file.path(mainDir, subDir))
}
}