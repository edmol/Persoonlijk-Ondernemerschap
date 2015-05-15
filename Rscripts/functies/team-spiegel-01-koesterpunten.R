#
#
# Nu koesterpunten en ontwikkelpunten voor het team berekenen met gebruik van team matrix.
#
#
# Initialiseer matrices voor koester en ontwikkel punten en verschillen analyse
#
ko_img <- matrix(1:51,ncol=1)
kb_img <- matrix(1:51,ncol=1)
oo_img <- matrix(1:51,ncol=1)
ob_img <- matrix(1:51,ncol=1)
#
#
# Maximaal aantal is gelijk aan 50 en de 51e bevat de heading
#
blanco_img <- paste(default_images,"blanco.png",sep="")
for (i in 1 : 51 )
{
  ko_img[i] <- blanco_img
  kb_img[i] <- blanco_img
  oo_img[i] <- blanco_img
  ob_img[i] <- blanco_img
}
#
# Nu de images voor de 4 pagina's klaarzetten ( maximaal 50 per pagina ).
#
# eerts tellers initialiseren voor plaats bepaling
#
tko <- 1
tkb <- 1
too <- 1
tob <- 1
#
for (i in 1 : 100)
{
  if (team[i] >=80 & vraag_soort[i]=="o")
  {
    ko_img[tko] <- img[i]
    tko <- tko + 1
  }
  if (team[i] >=80 & vraag_soort[i]=="b")
  {
    kb_img[tkb] <- img[i]
    tkb <- tkb + 1
  }
  if (team[i] <= 40 & vraag_soort[i]=="o")  
  {
    oo_img[too] <- img[i]
    too <- too + 1
  }
  if (team[i] <= 60 & vraag_soort[i]=="b")
  {
    ob_img[tob] <- img[i]
    tob <- tob + 1
  }
}
teamprintheading("Koesterpunten","Mate van ondernemendheid van het team","TEAM",t1naam,"ko.png")
teamprintheading("Koesterpunten","Mate van betrokkenheid van het team","TEAM",t1naam,"kb.png")
teamprintheading("Ontwikkelpunten","Mate van ondernemendheid van het team","TEAM",t1naam,"oo.png")
teamprintheading("Ontwikkelpunten","Mate van betrokkenheid van het team","TEAM",t1naam,"ob.png")
#
ko_img[51] <- paste(folder,'ko.png',sep="")
kb_img[51] <- paste(folder,'kb.png',sep="")
oo_img[51] <- paste(folder,'oo.png',sep="")
ob_img[51] <- paste(folder,'ob.png',sep="")
