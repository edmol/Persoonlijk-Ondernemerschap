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
#
# summary dataframe voor feedbackgever 1
#
fb01 <- data.frame(fbprio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting",
                            "Kritieke transformatiefactoren",
                            "Kritieke vitaliteitsfactoren",
                            "Kritieke veranderfactoren",
                            "Kritieke prestatiefactoren",
                            "Kritieke waarden factoren"),
                   o=c(f1results[101],f1results[104],f1results[107],f1results[110],f1results[113],f1results[116],
                       f1results[119],f1results[122],f1results[125],f1results[128],f1results[131],f1results[134],
                       f1results[137],f1results[140],f1results[143],f1results[146],0,f1results[151],f1results[153],f1results[155]),
                   b=c(f1results[102],f1results[105],f1results[108],f1results[111],f1results[114],f1results[117],
                       f1results[120],f1results[123],f1results[126],f1results[129],f1results[132],f1results[135],
                       f1results[138],f1results[141],f1results[144],f1results[147],f1results[149],0,0,0),
                   g=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                       f1results[121],f1results[124],f1results[127],f1results[130],f1results[133],f1results[136],
                       f1results[139],f1results[142],f1results[145],f1results[148],f1results[150],f1results[152],f1results[154],f1results[156]))
fb02 <- fb01[with(fb01, order(-g)),]
#
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
                       rresults[139],rresults[142],rresults[145],rresults[148],rresults[150],rresults[152],rresults[154],rresults[156]),
                  f1=c(f1results[103],f1results[106],f1results[109],f1results[112],f1results[115],f1results[118],
                       f1results[121],f1results[124],f1results[127],f1results[130],f1results[133],f1results[136],
                       f1results[139],f1results[142],f1results[145],f1results[148],f1results[150],f1results[152],f1results[154],f1results[156]))
gr <- gr1[with(gr1, order(-r1)),]