#
# summary dataframe voor teamlid 1
#
sum01 <- data.frame(t1prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                    factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                             "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                             "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                             "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                    o=c(t1results[101],t1results[104],t1results[107],t1results[110],t1results[113],t1results[116],
                        t1results[119],t1results[122],t1results[125],t1results[128],t1results[131],t1results[134],
                        t1results[137],t1results[140],t1results[143],t1results[146],0,t1results[151],t1results[153],t1results[155]),
                    b=c(t1results[102],t1results[105],t1results[108],t1results[111],t1results[114],t1results[117],
                        t1results[120],t1results[123],t1results[126],t1results[129],t1results[132],t1results[135],
                        t1results[138],t1results[141],t1results[144],t1results[147],t1results[149],0,0,0),
                    g=c(t1results[103],t1results[106],t1results[109],t1results[112],t1results[115],t1results[118],
                        t1results[121],t1results[124],t1results[127],t1results[130],t1results[133],t1results[136],
                        t1results[139],t1results[142],t1results[145],t1results[148],t1results[150],t1results[152],t1results[154],t1results[156]))
t1sum <- sum01[with(sum01, order(-g)),]
#
# summary dataframe voor teamlid 2
#
fb01 <- data.frame(t2prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   o=c(t2results[101],t2results[104],t2results[107],t2results[110],t2results[113],t2results[116],
                       t2results[119],t2results[122],t2results[125],t2results[128],t2results[131],t2results[134],
                       t2results[137],t2results[140],t2results[143],t2results[146],0,t2results[151],t2results[153],t2results[155]),
                   b=c(t2results[102],t2results[105],t2results[108],t2results[111],t2results[114],t2results[117],
                       t2results[120],t2results[123],t2results[126],t2results[129],t2results[132],t2results[135],
                       t2results[138],t2results[141],t2results[144],t2results[147],t2results[149],0,0,0),
                   g=c(t2results[103],t2results[106],t2results[109],t2results[112],t2results[115],t2results[118],
                       t2results[121],t2results[124],t2results[127],t2results[130],t2results[133],t2results[136],
                       t2results[139],t2results[142],t2results[145],t2results[148],t2results[150],t2results[152],t2results[154],t2results[156]))
t2sum <- fb01[with(fb01, order(-g)),]
#
# summary dataframe voor teamlid 3
#
fb03 <- data.frame(t3prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   o=c(t3results[101],t3results[104],t3results[107],t3results[110],t3results[113],t3results[116],
                       t3results[119],t3results[122],t3results[125],t3results[128],t3results[131],t3results[134],
                       t3results[137],t3results[140],t3results[143],t3results[146],0,t3results[151],t3results[153],t3results[155]),
                   b=c(t3results[102],t3results[105],t3results[108],t3results[111],t3results[114],t3results[117],
                       t3results[120],t3results[123],t3results[126],t3results[129],t3results[132],t3results[135],
                       t3results[138],t3results[141],t3results[144],t3results[147],t3results[149],0,0,0),
                   g=c(t3results[103],t3results[106],t3results[109],t3results[112],t3results[115],t3results[118],
                       t3results[121],t3results[124],t3results[127],t3results[130],t3results[133],t3results[136],
                       t3results[139],t3results[142],t3results[145],t3results[148],t3results[150],t3results[152],t3results[154],t3results[156]))
t3sum <- fb03[with(fb03, order(-g)),]
#
# summary dataframe voor teamlid 4
#
fb04 <- data.frame(t4prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   o=c(t4results[101],t4results[104],t4results[107],t4results[110],t4results[113],t4results[116],
                       t4results[119],t4results[122],t4results[125],t4results[128],t4results[131],t4results[134],
                       t4results[137],t4results[140],t4results[143],t4results[146],0,t4results[151],t4results[153],t4results[155]),
                   b=c(t4results[102],t4results[105],t4results[108],t4results[111],t4results[114],t4results[117],
                       t4results[120],t4results[123],t4results[126],t4results[129],t4results[132],t4results[135],
                       t4results[138],t4results[141],t4results[144],t4results[147],t4results[149],0,0,0),
                   g=c(t4results[103],t4results[106],t4results[109],t4results[112],t4results[115],t4results[118],
                       t4results[121],t4results[124],t4results[127],t4results[130],t4results[133],t4results[136],
                       t4results[139],t4results[142],t4results[145],t4results[148],t4results[150],t4results[152],t4results[154],t4results[156]))
t4sum <- fb04[with(fb04, order(-g)),]
#
# summary dataframe voor teamlid 5
#
fb05 <- data.frame(t5prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   o=c(t5results[101],t5results[104],t5results[107],t5results[110],t5results[113],t5results[116],
                       t5results[119],t5results[122],t5results[125],t5results[128],t5results[131],t5results[134],
                       t5results[137],t5results[140],t5results[143],t5results[146],0,t5results[151],t5results[153],t5results[155]),
                   b=c(t5results[102],t5results[105],t5results[108],t5results[111],t5results[114],t5results[117],
                       t5results[120],t5results[123],t5results[126],t5results[129],t5results[132],t5results[135],
                       t5results[138],t5results[141],t5results[144],t5results[147],t5results[149],0,0,0),
                   g=c(t5results[103],t5results[106],t5results[109],t5results[112],t5results[115],t5results[118],
                       t5results[121],t5results[124],t5results[127],t5results[130],t5results[133],t5results[136],
                       t5results[139],t5results[142],t5results[145],t5results[148],t5results[150],t5results[152],t5results[154],t5results[156]))
t5sum <- fb05[with(fb05, order(-g)),]
#
# summary dataframe voor het hele team
#
fb09 <- data.frame(prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                   factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                            "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                            "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                            "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                   o=c(team[101],team[104],team[107],team[110],team[113],team[116],
                       team[119],team[122],team[125],team[128],team[131],team[134],
                       team[137],team[140],team[143],team[146],0,team[151],team[153],team[155]),
                   b=c(team[102],team[105],team[108],team[111],team[114],team[117],
                       team[120],team[123],team[126],team[129],team[132],team[135],
                       team[138],team[141],team[144],team[147],team[149],0,0,0),
                   g=c(team[103],team[106],team[109],team[112],team[115],team[118],
                       team[121],team[124],team[127],team[130],team[133],team[136],
                       team[139],team[142],team[145],team[148],team[150],team[152],team[154],team[156]))
t9sum <- fb09[with(fb09, order(-g)),]
#
# summary voor alle ontwikkelruimtes 
#
t1 <- data.frame(t1prio=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                 factor=c("Regenboog zien","Regie voeren","Richting vaststellen","Rust geven",
                          "Ruimte creeren","Rendement vaststellen","Resultaat boeken","Reflectie vragen/geven",
                          "Relaties houden","Ruggengraat tonen","Houding","Gevoel","Beeld",
                          "Gedrag","Uiting","Transformatie","Vitaliteit","Veranderen","Presteren","Waarden"),
                 team=c(team[103],team[106],team[109],team[112],team[115],team[118],
                        team[121],team[124],team[127],team[130],team[133],team[136],
                        team[139],team[142],team[145],team[148],team[150],team[152],team[154],team[156]),
                 t1=c(t1results[103],t1results[106],t1results[109],t1results[112],t1results[115],t1results[118],
                      t1results[121],t1results[124],t1results[127],t1results[130],t1results[133],t1results[136],
                      t1results[139],t1results[142],t1results[145],t1results[148],t1results[150],t1results[152],t1results[154],t1results[156]),
                 t2=c(t2results[103],t2results[106],t2results[109],t2results[112],t2results[115],t2results[118],
                      t2results[121],t2results[124],t2results[127],t2results[130],t2results[133],t2results[136],
                      t2results[139],t2results[142],t2results[145],t2results[148],t2results[150],t2results[152],t2results[154],t2results[156]),
                 t3=c(t3results[103],t3results[106],t3results[109],t3results[112],t3results[115],t3results[118],
                      t3results[121],t3results[124],t3results[127],t3results[130],t3results[133],t3results[136],
                      t3results[139],t3results[142],t3results[145],t3results[148],t3results[150],t3results[152],t3results[154],t3results[156]),
                 t4=c(t4results[103],t4results[106],t4results[109],t4results[112],t4results[115],t4results[118],
                      t4results[121],t4results[124],t4results[127],t4results[130],t4results[133],t4results[136],
                      t4results[139],t4results[142],t4results[145],t4results[148],t4results[150],t4results[152],t4results[154],t4results[156]),
                 t5=c(t5results[103],t5results[106],t5results[109],t5results[112],t5results[115],t5results[118],
                      t5results[121],t5results[124],t5results[127],t5results[130],t5results[133],t5results[136],
                      t5results[139],t5results[142],t5results[145],t5results[148],t5results[150],t5results[152],t5results[154],t5results[156]))
tg <- t1[with(t1, order(-team)),]