print("====TAT analysis====")
options(help_type = "html")
library(RMySQL)
mm=dbConnect(dbDriver("MySQL"),"clg","rootuser","rootuser","127.0.0.1")
sql="select 
            r1.sample_id, 
            r1.result as receipt, r2.result as reported
    from 
            result r1, result r2, result r3
    where 
            r1.examination_id=10003 and 
            r2.examination_id=10008 and 
            r3.examination_id=1047 and
            r1.sample_id=r2.sample_id and
            r1.sample_id=r3.sample_id and
            r1.result like '2023-12-%'"

result=dbSendQuery(mm, sql)
data1=dbFetch(result, n = -1)
data2=data.frame(
                  data1$sample_id,
                  as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),
                  as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),
                  difftime(as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),units="mins")
                )
dbDisconnect(mm)              
colnames(data2)=c("S","input","output","difference")
data3=data2[ !is.na(data2$S)  &   !is.na(data2$input) &  !is.na(data2$output) , ]

par(mfrow=c(1,3))
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

