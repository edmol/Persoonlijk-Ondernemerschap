meters <- function(resp,fb1,fb2,resp_score,fb1_score,fb2_score)
{
  team_score <- round((mean(c(resp_score,fb1_score,fb2_score))),1)
  gaugelabels <- c('Team',resp,fb1,fb2)
  gaugeneedles <- c(team_score,resp_score,fb1_score,fb2_score)
  gauge <- gvisGauge(data.frame(gaugelabels,gaugeneedles),options=list(min=0,max=100,greenFrom=51, greenTo=100,yellowFrom=0, yellowTo=50,width=600, height=200))
  return(gauge)
}