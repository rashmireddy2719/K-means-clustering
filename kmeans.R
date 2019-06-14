#reading data set

iris <- read.csv("your path/iris.csv") #

#create new dataset

irisNew = iris

#removing species column
irisNew$species <- NULL
View(irisNew)
#omit na 

irisNew <- na.omit(irisNew)

k3 <- kmeans(na.omit(irisNew),3)
k3

#size
k3$size

#cluster vector
k3$cluster

#check matching
table(iris$species,k3$cluster)
windows()
plot(iris[c("petal_length","petal_width")],col= irisNew$cluster)
#plot with actual class i.e, true species
plot(iris[c("petal_length","petal_width")],col= irisNew$species)




