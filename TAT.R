print("====TAT analysis====")
options(help_type = "html")
library(RMySQL)
date=readline("search date:")
location=readline("for OPD enter 1047, For ward enter 1046:")
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



sql=paste0("select r1.sample_id, r1.result as receipt, r2.result as reported from result r1, result r2, result r3  where r1.examination_id=10003 and r2.examination_id=10008 and r3.examination_id=",location," and  r1.sample_id=r2.sample_id and r1.sample_id=r3.sample_id and r1.result like '",date,"%'")
            
result=dbSendQuery(mm, sql)
data1=dbFetch(result, n = -1)
data2=data.frame(
                  data1$sample_id,
                  as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),
                  as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),
                  difftime(as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),units="hours")
                )
dbDisconnect(mm)              
colnames(data2)=c("S","input","output","difference")
data3=data2[ !is.na(data2$S)  &   !is.na(data2$input) &  !is.na(data2$output) , ]

#pdf(file = 'TAT.pdf')
#par(mfrow=c(1,3))
if(location==1047)
{
  loc="Ward"
  goal=8
}else
{
  loc="OPD"
  goal=46
}

h=hist(
      as.numeric(data3$difference),
      breaks=round(as.numeric(max(data3$difference))),
      main=paste0("TAT analysis: ",loc, "Duration: ", date),
      xlab="Hours of TAT",
      ylab="Number of Samples"
    )
      
text(max(h$mids)/2,(max(h$density) * nrow(data3))/2,paste("Mean TAT in Hours: ",round(mean(as.numeric(data3$difference)))))      
text(max(h$mids)/2,(max(h$density) * nrow(data3))/2.2,paste("Median TAT in Hours: ",round(median(as.numeric(data3$difference)))))      
text(max(h$mids)/2,(max(h$density) * nrow(data3))/2.4,paste("Location: ",loc, " , period: ",date))      
text(max(h$mids)/2,(max(h$density) * nrow(data3))/2.6,paste("n=",nrow(data3)))      
text(max(h$mids)/2,(max(h$density) * nrow(data3))/2.8,paste("below ",goal," hours n=",nrow(data3[data3$difference<goal,])))      
