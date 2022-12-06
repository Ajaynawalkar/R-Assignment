#Matrices
#A matrix is a two dimensional data set with columns and rows.
#A column is a vertical representation of data, while a row is a horizontal representation of data.
#A matrix can be created with the matrix() function. Specify the nrow and ncol parameters to get the amount of rows and columns:
thismatrix <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
thismatrix
thismatrix <- matrix(c('apple','banana','cherry','orange'),nrow=2 ,ncol=2)
thismatrix
thismatrix[1,2]
thismatrix[2,]
thismatrix[,2]
thismatrix[c(1,2),]
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
newmartrix<- cbind(thismatrix, c('strawbeery','blueberry','raspberry'))
newmartrix
thismatrix <- matrix(c('apple','banana','cherry','orange'),nrow=2,ncol=2)
thismatrix
m2 <- matrix(c('banana','orange','apple','cherry'),nrow=2,ncol=2)
m2
m3 <- matrix(c('apple','grapes','jolly','hooly','banana','raspary','blackberry','lollypop','valpepper'),nrow=3, ncol=3)
m3
'grapes' %in% m3
dim(m3)
length(m3)
for (rows in 1:nrow(m3)) {for (columns in 1:ncol(m3)){print(m3[rows,columns])}}
m4 <- matrix(c('apple','grapes','jolly','hooly','banana','raspary','blackberry','lollypop','valpepper'),nrow=3, ncol=3)
m5 <- matrix(c('VW','KIWI','Maruti','Datsun','Skoda','Bajaj','Suzuki','TATA','Hyundai'),nrow=3, ncol=3)
matrix_combine<- rbind(m4,m5)
matrix_combine<- cbind(m4,m5)
matrix_combine
