#Lists
#A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.
thislist<- list('Apple','Banana','Cherry','pears')
thislist
thislist[1]
thislist[1] <- 'Blackcurrant'
length(thislist)
'Banana' %in% thislist
append(thislist,'kolam',after=2)
append(thislist,'orange')
newlist <- thislist[-1]
newlist
for (x in thislist){print(x)}
list1 <- list('a','b','c')
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3
