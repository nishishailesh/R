options(help_type = "html")
d5=read.csv("d5.csv")
#View(d5)
print(d5[c(5,7,4)])
print(d5[c(5,7,4),])
print(nrow(d5))
print(c(1:nrow(d5)))
all_data_index=c(1:nrow(d5))
sample_index=sample(all_data_index,7)
print(sample_index)
mysample=d5[sample_index,]
print(mysample)


