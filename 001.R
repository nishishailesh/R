x=3
y=4
z=x^y
z#
f=matrix(c(1,2,3,4,5,6), nrow=3,ncol=2,TRUE)
g=matrix(c(1.1,2.2,3.3,4.4,5.5,6.6), nrow=3,ncol=2,TRUE,list(c(),c("mean","sd")))
print(f)
print(g)
print("multiply maxtrix")
print(f*g)
print("devide maxtrix")
print(f/g)

library(RMySQL)
mm=dbConnect(dbDriver("MySQL"),"clg","rootuser","rootuser","127.0.0.1")


