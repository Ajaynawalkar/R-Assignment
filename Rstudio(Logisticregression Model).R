library(dplyr)
summary(mtcars)
head(mtcars,10)
tail(mtcars,10)
#installing Catools for Logistic Regression
#installing ROCR for ROC curve to evaluate model
library(caTools)
library(ROCR)
#splitting dataset
split<- sample.split(mtcars, SplitRatio = 0.8)
split

train_reg<- subset(mtcars, split=="TRUE")
test_reg<- subset(mtcars, split=="FALSE")

#training model
logistic_model<- glm(vs~wt +disp,data=train_reg,family="binomial")
logistic_model

#summary
summary(logistic_model)

#predict test data based on model
predict_reg <- predict(logistic_model,
                       test_reg, type= 'response')
predict_reg

#changing probabilities
predict_reg<- ifelse(predict_reg >0.5,1,0)

#TESTING The Accuracy

#Evaluating model accuracy
#using confusion matrix
table(test_reg$vs, predict_reg)

missing_classerr <- mean(predict_reg != test_reg$vs)
print(paste('Accuracy=',1- missing_classerr))

# ROC-AUC Curve
ROCPred <- prediction(predict_reg, test_reg$vs)
print(ROCPred)
ROCPer <- performance(ROCPred, measure='tpr',x.measure = 'fpr')
print(ROCPer)

auc<- performance(ROCPred, measure="auc")
print(auc)
auc<- auc@y.values[[1]]
print(auc)

#PLOTTING the Graph

#plotting curve
plot(ROCPer)
plot(ROCPer, colorize = TRUE,
     print.cutoffs.at = seq(0.1, by=0.1),
     main = "ROC CURVE")
abline(a = 0, b=1)
#round off everything
auc <- round(auc, 4)
legend(0.6, 0.4, auc, title= 'AUC', cex = 1)
