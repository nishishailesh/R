print("====t test====")
options(help_type = "html")
library(RMySQL)
mm=dbConnect(dbDriver("MySQL"),"clg","rootuser","rootuser","127.0.0.1")
sql="select 
        ph.sample_id as SID , 
        group_concat(ph.result order by ph.sample_id) as ALL_PH, 
        substring_index(group_concat(ph.result order by ph.sample_id),',',1) as PH1, 
        substring_index(group_concat(ph.result order by ph.sample_id desc),',',1) as PH2,        pid.result as PID
    from 
        result ph, result pid
    where 
        ph.examination_id=5143 and 
        pid.examination_id=1001 and
        ph.result>0 and
        ph.sample_id=pid.sample_id
    group by PID
    order by
        PID,SID"

result=dbSendQuery(mm, sql)
data1=dbFetch(result, n = -1)
dbDisconnect(mm)
data2=data.frame(
                  data1$SID,
                  as.numeric(data1$PH1),
                  as.numeric(data1$PH2),
                  data1$PID
                )
colnames(data2)=c("SID","PH1","PH2","PID")
data3=data2[!is.na(data2$PH1) & !is.na(data2$PH2),]                
#colnames(data3)=c("SID","PH","PID")
par(mfrow=c(1,4))

hist(data3$PH1,breaks=seq(5,8,0.05))
sres=shapiro.test(data3$PH1)
print(names(sres))
text(7,350,paste(sres$method))
text(7,300,paste('W=',sres$statistic,'p=',sres$p.value))
if(sres$p.value>0.05)
{text(7,250,paste('data not normally distributed p-value=',round(sres$p.value,3)))}else
{text(7,250,paste('data normally distributed p-value=',round(sres$p.value,3)))}
qqnorm(data3$PH1)
qqline(data3$PH1)

hist(data3$PH2,breaks=seq(5,8,0.05))
sres=shapiro.test(data3$PH2)
print(names(sres))
text(7,350,paste(sres$method))
text(7,300,paste('W=',sres$statistic,'p=',sres$p.value))
if(sres$p.value>0.05)
{text(7,250,paste('data not normally distributed p-value=',round(sres$p.value,3)))}else
{text(7,250,paste('data normally distributed p-value=',round(sres$p.value,3)))}
qqnorm(data3$PH2)
qqline(data3$PH2)


acidosis=data3[data3$PH1>7.30 & data3$PH1<7.5 & data3$PH1!=data3$PH2,]
alkalosis=data3[data3$PH1>7.5 & data3$PH1<7.8 & data3$PH1!=data3$PH2,]

readline()
act=t.test(acidosis$PH1,acidosis$PH2,paired=T)
akt=t.test(alkalosis$PH1,alkalosis$PH2,paired=T)

print(act)
print(akt)

par(mfrow=c(1,2))

hist(acidosis$PH1, breaks=seq(5,8,0.05),col=rgb(0, 0, 1, 0.5))
hist(acidosis$PH2, breaks=seq(5,8,0.05),col=rgb(0, 1, 0, 0.5),add=T)
text(6,50,paste(act$method))
text(6,45,paste("p-value=",act$p.value))
text(6,40,paste("mean before Rx=",
                round(act$estimate[1],2),
                "mean after Rx=",
                round(act$estimate[2],2)
                )
    )
hist(alkalosis$PH1, breaks=seq(5,8,0.05),col=rgb(0, 0, 1, 0.5))
hist(alkalosis$PH2, breaks=seq(5,8,0.05),col=rgb(0, 1, 0, 0.5),add=T)
text(6,45,paste("p-value=",akt$p.value))
text(6,50,paste(act$method))
text(6,40,paste("mean before Rx=",
                round(akt$estimate[1],2),
                "mean after Rx=",
                round(akt$estimate[2],2)
                )
    )
