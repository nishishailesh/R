#install.packages("/root/Downloads/BSDA_1.2.2.tar.gz")
library(BSDA)
day22=read.csv("day22.csv")
chol_mean=mean(day22$Cholesterol.Level)
chol_pop_mean=200
chol_pop_sd=10
View(day22)
print(day22$Cholesterol.Level)
zz=z.test(day22$Age, day22$Cholesterol.Level, alternative='two.sided', mu=0, sigma.x=50, sigma.y=200,conf.level=.95)
cse=chol_pop_sd/sqrt(10)  #standard error
cz=(chol_mean-chol_pop_mean)/cse
pvalue=pnorm(cz)
m_wt=day22$Weight[day22$Gender=="Male"]
f_wt=day22$Weight[day22$Gender=="Female"]
z_sum=z.test(m_wt,f_wt,sigma.x=10,sigma.y=10)
