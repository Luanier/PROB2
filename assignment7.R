#Q1
n=100
df=n-1
sample=rt(n,df)
sample
hist(sample)

#Q2
n=100
df=c(2,10,25)

rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])

#Q3
x <- seq(-6, 6, length = 100)
x
df = c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
dt(x,df[4])
plot(x,dt(x,df[4]),type = "l",xlab = "t-value", ylab = "Density", 
     main = "Comparison of t-distributions", col=colour[4])

colour = c("black", "red", "green", "blue")
for (i in 1:4){
  lines(x,dt(x,df[i]),type = "l",col = colour[i])
}


#Q4

#(i)
qf(.95, 10, 20) 

#(ii) 
x = 1.5
v1 = 10
v2 = 20
pf(x, v1, v2, lower.tail = TRUE) 
pf(x, v1, v2, lower.tail = FALSE)

#(iii)
q <- c(0.25, 0.5, 0.75, 0.999)
v1=10
v2=20
qf(q[1], v1, v2)
qf(q[2], v1, v2)
qf(q[3], v1, v2)
qf(q[4], v1, v2)

#(iv) 
x <- rf(1000, 10, 20)
hist(x )
