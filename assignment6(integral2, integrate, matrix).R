install.packages('pracma')

#Q1 

#a
library('pracma')
fun<-function(x,y){
  return ((4*x+6*y)/5)
}
val<-integral2(fun,xmin=0,xmax=1,ymin=0,ymax=1)
val$Q

#b
g_x<-function(y){
  return (fun(1,y))
}
x_marginal<-integrate(g_x,0,1)
print(x_marginal)

#c
h_y<-function(x){
  return (fun(x,0))
}
y_marginal<-integrate(h_y,0,1)
print(y_marginal)

#d
funct2<-function(x,y){
  return (x*y*(4*x+6*y)/5)
}
print(integral2(funct2,xmin=0,xmax=1,ymin=0,ymax=1))


#2
#a
m<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
print(m)

if (sum(m)==1){
  print ("It is a PMF")
}

#c
g<-apply(m,1,sum)
g

#d
h<-apply(m,2,sum)
h

#e
m[1,2]/h[2]







#f
x<-c(0:3)
y<-c(0:2)
EX <- sum(x * g)
EX
EY <- sum(y * h)
EY
VarX <- sum((x^2) * g) - EX^2
VarX
VarY <- sum((y^2) * h) - EY^2
VarY
fun2<-function(x,y){
  x*y*(x+y)/30
}
mat2<-matrix(c(fun2(0,0:2),fun2(1,0:2),fun2(2,0:2),fun2(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
EXY<-sum(mat2)
EXY
covXY<-EXY-EX*EY
print(covXY)
correlation<-covXY/(sqrt(VarX*VarY))
print(correlation)
