#q1

#A
1-punif(45,min=0,max=60)

#B
punif(30,min=0,max=60)-punif(20,min=0,max=60) 


#q2

#A
dexp(3, rate = 0.5) 

#B
x1<-seq(from = 0, to = 5, by = 0.01) 
gr1<-dexp(x1, rate=0.5)
#plot(gr1)
plot(x1, gr1 , type = "l", xlab = "x", ylab = "Density", main = "Exponential Probability Density Function")

#C
pexp(3, rate=0.5) 

#D
gr2<-pexp(x1, rate=0.5) 
plot(gr2)

#E
simulated_data <- rexp(1000, rate = 0.5)
hist(simulated_data, breaks = 30, probability = TRUE, main = "Simulated Exponential Data", xlab = "x")


#q3

#A
pgamma(1,shape=2,scale=1/3) 

#B
qgamma(0.7,shape=2,scale=1/3)
