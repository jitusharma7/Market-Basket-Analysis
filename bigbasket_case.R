
setwd("D:/COLLEGE/GIM/Term2/PPA/Rprograms")

library(dplyr)
library(arules)
library(arulesViz)

big <- read.csv("bigbasket.csv")
summary(big)

bigg <- select(big,c("Order","Description"))
summary(bigg)

bigg_bas <- bigg %>%group_by(Order) %>% 
  summarize(Items = paste(Description,collapse = ","))
View(bigg_bas)
write.csv(bigg_bas$Items,"big.csv",quote = FALSE,row.names = FALSE)

big_basket <- read.transactions("big.csv",sep=',')

itemFrequencyPlot(big_basket,topN=150)

rules_big <- apriori(big_basket,parameter = 
                   list(supp = 0.02,conf = 0.0))

options(digits=2)
inspect(rules_big)
write(rules_big,file="big_basket_rules.csv",sep=",")

plot(rules_big,method="grouped")
plot(rules_big,method="graph",control=list(type="item"),
     interactive = T)

