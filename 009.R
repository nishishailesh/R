data=read.csv("xxxx.data")
#write.csv(data,"xxxx.csv",row.names=FALSE)
View(data)              #frame
mdata=data.matrix(data) #matrix
#View(mdata)
#rm(list=ls())
all_cor=cor(data)
write.table("===Data===",'report.csv',row.names=FALSE,col.names=FALSE)

write.table(data,'report.csv',append=TRUE,na='',row.names=FALSE)
write.table("===correlation table===",'report.csv',append=TRUE,row.names=FALSE,col.names=FALSE,)

write.table(all_cor,'report.csv',append=TRUE,na='',row.names=FALSE )

#"x1" "x2" "x3" "x4"
#2.9 112 450 14
#30.4 8 116 117
#21.9 34 123 98
#12.2 41 178 73
#110 1 32 210
#73.2 18 143 142
#74.9 25 118 49
#110.1 21 97 68
#42.7 12 78 173
#9.9 78 234 101
#1.2 91 337 98
#42.8 32 112 246
#68.3 49 189 148
