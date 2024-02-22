print("====Corelation between two sets of data====")
options(help_type = "html")
library(RMySQL)
mm=dbConnect(dbDriver("MySQL"),"clg","rootuser","rootuser","127.0.0.1")
sql="select c.sample_id, c.result as creatinine , u.result as urea ,a.result as alt 
from 
result c, result u, result a
where 
c.examination_id=5001 and 
u.examination_id=5002 and
a.examination_id=5006 and
c.sample_id=u.sample_id and
c.sample_id=a.sample_id"

result=dbSendQuery(mm, sql)
data1=dbFetch(result, n = -1)
colnames(data1)=c("S","C","U","A")
data2=data.frame(
                  data1$S,
                  as.numeric(data1$C),
                  as.numeric(data1$U),
                  as.numeric(data1$A)
                )
dbDisconnect(mm)
                
colnames(data2)=c("S","C","U","A")
data3=data2[ !is.na(data2$U)  &   !is.na(data2$C) &  !is.na(data2$A)
              & data2$U>0     &   data2$C>0       &   data2$A>0,]

par(mfrow=c(1,3))
plot(data3$U,data3$A)
ret=lm(formula = data3$A ~ data3$U)
co_ret=coef(ret)
intercept=co_ret[1]
slope=co_ret[2]
abline(intercept,slope)
text(max(data3$U)*0.4,max(data3$A)*0.8,paste('Y=',slope,'X+',intercept))
text(max(data3$U)*0.4,max(data3$A)*0.7,paste('R=',cor(data3$C,data3$A)))


plot(data3$C,data3$A)


plot(data3$C,data3$U)
ret=lm(formula = data3$U ~ data3$C)
co_ret=coef(ret)
intercept=co_ret[1]
slope=co_ret[2]
abline(intercept,slope)
text(max(data3$C)*0.4,max(data3$U)*0.8,paste('Y=',slope,'X+',intercept))
text(max(data3$C)*0.4,max(data3$U)*0.7,paste('R=',cor(data3$C,data3$U)))



print("Summary of Creatinine")
print(summary(data3$C))
print("Summary of Urea")
print(summary(data3$U))
print("Summary of ALT")
print(summary(data3$A))

print("Correlation between Creatinine and ALT")
print(cor(data3$C,data3$A))
print("Correlation between Urea and ALT")
print(cor(data3$U,data3$A))
print("Correlation between Creatinine and Urea")
print(cor(data3$C,data3$U))
umean=mean(data3$U)
cmean=mean(data3$C)
usd=sd(data3$U)
csd=sd(data3$C)
print("Correlation between Creatinine and Urea - by manual calculation")
print(sum((data3$C-cmean)/csd * (data3$U-umean)/usd)/(nrow(data3)-1))

#install.packages("rgl")
library(rgl)

plot3d(data3$C,data3$U,data3$A,col=rainbow(1000))


htmlwidgets::saveWidget(rglwidget(width = 520, height = 520), 
                        file = "3dscatter.html",
                        libdir = "libs",
                        selfcontained = FALSE
                        )

