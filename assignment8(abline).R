#1
data<-read.csv(file.choose())
dim(data)
head(data,10)
a<-mean(data$Wall.Thickness)

hist(data$Wall.Thickness,col = "pink",main = "Histogram for Wall Thickness",xlab = "wall thickness")
abline(v=a,col="red",lty=1)
help(abline)


#2

#i
s50 <- c()
s500 <- c()
s9000 <- c()
n =9000
for ( i in 1:n){
  s50[i] = mean(sample(data$Wall.Thickness,50, replace = TRUE))
  s500[i] = mean(sample(data$Wall.Thickness,500, replace = TRUE))
  s9000[i] = mean(sample(data$Wall.Thickness,9000, replace = TRUE))
}
par(mfrow=c(1,3))
hist(s50, col ="blue",main="Sample size=50",xlab ="wall thickness")
abline(v = mean(s50), col = "red")

hist(s500, col ="green", main="Sample size=500",xlab ="wall thickness")
abline(v = mean(s500), col = "red")

hist(s9000, col ="red",main="Sample size=9000",xlab ="wall thickness")
abline(v = mean(s9000), col = "red")

help("par")
