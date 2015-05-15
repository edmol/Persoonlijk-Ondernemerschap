#
#
# summary dataframe voor respondent
#
sum01 <- data.frame(prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                    factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                             "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                             "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                             "Gedrag","Uiting",
                             "Kritieke transformatiefactoren",
                             "Kritieke vitaliteitsfactoren",
                             "Kritieke veranderfactoren",
                             "Kritieke prestatiefactoren",
                             "Kritieke waarden factoren"),
                    o=c(rresults[101],rresults[104],rresults[107],rresults[110],rresults[113],rresults[116],
                        rresults[119],rresults[122],rresults[125],rresults[128],rresults[131],rresults[134],
                        rresults[137],rresults[140],rresults[143],rresults[146],0,rresults[151],rresults[153],rresults[155]),
                    b=c(rresults[102],rresults[105],rresults[108],rresults[111],rresults[114],rresults[117],
                        rresults[120],rresults[123],rresults[126],rresults[129],rresults[132],rresults[135],
                        rresults[138],rresults[141],rresults[144],rresults[147],rresults[149],0,0,0),
                    g=c(rresults[103],rresults[106],rresults[109],rresults[112],rresults[115],rresults[118],
                        rresults[121],rresults[124],rresults[127],rresults[130],rresults[133],rresults[136],
                        rresults[139],rresults[142],rresults[145],rresults[148],rresults[150],rresults[152],rresults[154],rresults[156]))
sum02 <- sum01[with(sum01, order(-g)),]

gr1 <- data.frame(grprio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                  factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                           "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                           "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                           "Gedrag","Uiting",
                           "Kritieke transformatiefactoren",
                           "Kritieke vitaliteitsfactoren",
                           "Kritieke veranderfactoren",
                           "Kritieke prestatiefactoren",
                           "Kritieke waarden factoren"),
                  r1=c(rresults[103],rresults[106],rresults[109],rresults[112],rresults[115],rresults[118],
                       rresults[121],rresults[124],rresults[127],rresults[130],rresults[133],rresults[136],
                       rresults[139],rresults[142],rresults[145],rresults[148],rresults[150],rresults[152],rresults[154],rresults[156]))
gr <- gr1[with(gr1, order(-r1)),]