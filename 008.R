vehicle=c(112,8,34,41,1,18,25,21,12,18,91,32,49)
polution=c(450,116,123,178,32,143,118,97,78,234,337,112,189)
tbl=data.frame(vehicle,polution)

pdata=round(cor(vehicle,polution),3)
kdata=round(cor(vehicle,polution,method="kendall"),3)
sdata=round(cor(vehicle,polution,method="spearman"),3)

ct_data=cor.test(vehicle,polution)

plot( tbl$vehicle,tbl$polution,
      type='p',
      main="polution and vehical",
      xlab="Vehicle numbers",
      ylab="Polution",
      sub="Various coefficients",
      col="blue"
    )
    
text( max(vehicle)*0.25,
      max(polution)*0.75,
      paste("pearson=",pdata,"(",round(ct_data$conf.int[1],2),"-",round(ct_data$conf.int[2],2),")","\nkendell=",kdata,"\nspearman=",sdata)
    )
    
ret=lm(formula = polution ~ vehicle)
co_ret=coef(ret)
intercept=co_ret[1]
slope=co_ret[2]
#abline(intercept,slope) #abline can be called in many ways
abline(lm(formula = polution ~ vehicle))

write.csv(tbl,"vehicle.csv")
