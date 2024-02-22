library(plotrix)
day2=read.csv("DummyData.csv")
levels=seq(min(day2$TP),max(day2$TP),length.out=5)
cols=c("green","red","green","orange","blue")
clplot(day2$Year, day2$TP,
    ylab="Intake kC per day",xlab="year",levels, 
    cols,lty=1,showcuts=TRUE, lwd=5)
addtable2plot(2003,500,day2)
legend(2012, 1000, legend=levels,col=cols, lty=1:2, cex=1.8)
text(day2$Year,day2$TP,paste("(",day2$Year,",",day2$TP,")"))

