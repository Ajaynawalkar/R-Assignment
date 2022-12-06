library(tidyverse)
data("marketing",package='datarium')
head(marketing,4)
tail(marketing,4)
library(caTools)
# Model
model<- lm(sales~youtube + facebook + newspaper, data=marketing)
summary(model)
# Interpretation
summary(model)$coefficient
# As the newspaper variable is not significant, we can remove from model
model <- lm(sales~youtube+facebook,data=marketing)
summary(model)
# sales= 3.5 + 0.045*youtube + 0.187*facebook
confint(model)
