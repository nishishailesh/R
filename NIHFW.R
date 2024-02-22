#Object Syntax

# ObjectName  <-  value

#Object Name


NIHFW == 12

#  TRUE / FALSE ==
 
NIHFW

Nptel  <-  14

Nptel <- "Mohit Garg"
Nptel <- TRUE

#(letter/period, recommended letter only)

Author <- 12

123Author <-12

.Author <-12

^Author<-12


##After letter/period : number,letter,underscore(-) and period(.) 

Author123 <-12

Author_123 <-12

##Case Sensitive

AUTHOR <-23

author <- 36

##Avoid Reserved Words

else<-123

##No special character( (,$,%@,&,)) except _ . 

Author%<-234

# Valid Object Name # Invalid Object Name


#Object Values Type

#Object Name

Nptel  <-  14
Nptel <- "Mohit Garg"
Nptel <- TRUE


Nptel1  <-  14
Nptel2 <- "Mohit Garg"
Nptel3 <- TRUE

#class()

class(Nptel1)

class(Nptel2)

class(Nptel3)


#Numeric 

NptNUM <- 1.2

class(NptNUM)

NptNUM <- -1.2

NptNUM +1

NptNUM <- 1

class(NptNUM)


#Integer 

NptINT <- 1

class(NptINT)

NptINT<-1.9

class(NptINT)

Nptel<-as.integer(NptINT)

Nptel

#Character 

NptCHAR <- "Welcome to MOOC"

class(NptCHAR)

NptCHAR

NptCHAR <- welcome to mooc


#Logical 

NptLOG<-T

NptLOG<-TRUE

NptLOG<-True

class(NptLOG)

Auth1<-14

Auth1>10


Auth1<10

Auth1==10

#NA


Auth2<-NA

is.na(Auth1)



is.na(Auth2)




#ls() to list all the objects

ls()

#rm() to remove the object

##Single Removal

rm("value")

##MultiRemoval

rm(list=ls())


#Practice 
#Create Object that store your name and pin code of your area
#Share in the discussion forum. 


Nptel <- 5

Nptel <-"Hello"

Nptel <- TRUE






MyName<-"Mohit Garg"

MyPin<- 110016


#Vector


#c()

pubDoc<-c(12,14,15)

pubDoc


#Vector of names 


researcher<-c("Raman","Mohit","Lokesh")

researcher

class(pubDoc)
class(researcher)

#Vector can have value of same type only

myVector1<-c(19,20, "ab")

myVector1
myVector2<-c("ab","bc")

myVector1*2

#Checking Class of Vector

class(myVector1)


class(myVector2)


#Valid Vector 

myVector1<-c(19,20)

myVector2<-c("ab","bc")


#Invalid Vector 

myVector1<-c(19,20, "ab")

myVector2<-c("ab","bc", TRUE)


#practice 


myVectorTest<- c("AB","BC", "ab")


##Numeric Vector 

NumVector<-c(1,2)

class(NumVector)

##Integer Vector 

IntVector<-c(1L,2L)

##Character Vector 

myCharVector<-c("Mohit","Mukesh")

myCharVector1<-c("Garg","Behera")


#Basics Operations 

myVector1<-c(19,20,21)
myVector2<-c(2,3,4)

#Addition 

myVector1 + myVector2

AddVector<-myVector1+myVector2

AddVector

#Subtraction 

SubVector<-myVector1-myVector2

#Multiplication 

MulVector<-myVector1*myVector2

#Division

DivVector<-myVector1/myVector2



#Accesing the values  #1-based indexing

myVector1[2]

myVector2[2]

myVector1[2]*myVector2[2]



#Addition of Charcter vector 

#Prcatice 

myCharVector + myCharVector1




#Data Frame


##Individual Vector 

researcher<-c("Raman","Mohit","Lokesh")

pubDoc<-c(12,14,15)


##Combining to form a data frame

ResPub<-data.frame(researcher,pubDoc)


#Modifying the data frame by Adding/Deleting more values 


##Lengthy Way

researcher<-c("Raman","Mohit","Lokesh","Mukesh")

pubDoc<-c(12,14,15, 16)

ResPub<-data.frame(researcher,pubDoc)


##Short Way 

fix(ResPub)


## to add one more column

CitDoc <- c(2,4,6,7,12,13,10,12 )

data.frame(ResPub, CitDoc)


fix(ResPub)


#dimension of a data frame

dim(ResPub) 

#number of rows

nrow(ResPub)

#number of columns 

ncol(ResPub)


## structure of a data frame

str(ResPub)

## summary of a data frame

summary(ResPub)


## first and last few values of a data frame

head(ResPub)
tail(ResPub)

##limiting with only two or three

head(ResPub, n=3)

tail(ResPub, n=2)


#What about if we have to see bottom three values


#First Way 

tail(ResPub, n=3)

head(ResPub, n=-3)


#Second Way



##Column Name 

ResPub

colnames(ResPub)


###Changing Column Name

colnames(ResPub) <-c("Sch","Pub","Cit")

ResPub

fix(ResPub)


### Basic data manipulation 

is.na(ResPub)

fix(ResPub)

ResPub<- replace(ResPub, is.na(ResPub),123 )

##Accessing column of a data frame 

ResPub$Schol

ResPub$Public

sum(ResPub$Public)

ResPub$Public[3]

ResPub$Public[3] < ResPub$Public[5]

ResPub$Public[3] > ResPub$Public[5]



##Lists


researcher<-c("Raman","Mohit","Lokesh")

pubDoc<-c(12,14,15)

MetScore<-c(2,3) 

TotalPub<- data.frame(researcher, pubDoc,MetScore)


#Another Example

researcher<-c("Raman","Mohit","Lokesh", "Mukesh")

pubDoc<-c(12,14,15, 16)

MetScore<-c(2,3)


TotalPub<- data.frame(researcher, pubDoc,MetScore)



#Lists

#We have to create Vector 
researchID<-c(01,02,03)
researcher <- c("Raman", "Mohit", "Lokesh")
TotalPub <-131


#List creation 
PubList<-list(researchID, researcher, TotalPub)

#Single List 
PubList<-list(researchID, researcher, TotalPub)


#List element name

names(PubList)

#DataFrame names are from vector

PubList<-list(ID=researchID,name=researcher,total=TotalPub)

PubList

names(PubList)

#or 

names(PubList) <- c("ID","Name","Total")


##Accessing List Elements $

PubList$Name

PubList[2]

PubList[3]

PubList[4]

PubList$Name[2]

## Modifying a list 


PubList$Name[3] <-"Tarun"

PubList$Name

##Adding a new value to existing lists

PubList$Name[5] <-"Tarun"

PubList$Name


##Adding data frame in to list 

myNewList<-list(data=ResPub, Total= TotalPub)

myNewList

#Nested Lists

#Two Institute Publications


##Institute1 Publication
researchID1<-c(01,02,03)
researcher1 <- c("Raman", "Mohit", "Lokesh")
TotalPub1 <-131


Inst1List<-list(researchID1, researcher1, TotalPub1)


##Institute2 Publication

researchID2<-c(11,12,13)
researcher2 <- c("Rahul", "Mukesh", "Priyanka")
TotalPub2 <-208


Inst2List<-list(researchID2, researcher2, TotalPub2)

###Nested List Creation
instList <-list(Inst1List, Inst2List)

instList


#Matrices


#matrix creation

myMat <- matrix(1:8)  

myMat

dim(myMat)

nrow(myMat)

ncol(myMat)

#with Rows and Columns

myMat <- matrix(1:8, nrow = 4, ncol=2) 

myMat

#incorrect value in col/row

matrix(1:8, ncol = 7) 

matrix(1:8, nrow = 8)

myMat
#Naming Rows and columns of matrix 

rownames(myMat)

colnames(myMat)

rownames(myMat) <- c("1st", "2nd", "3rd","4th")

colnames(myMat) <- c("Pub1","Pub2")

myMat


##Accessing Matrix Element [row,column]


myMat[2,2]

myMat[2,4]

myMat[1,2]


myMat[2,1]

myMat[2,]

myMat[,2]

myMat
myMat [,]


#Factor 

OpenPub<- factor(c("Green","Gold","Diamond"))

levels(OpenPub)

OpenPub1<- factor(c("Green","Gold","Diamond","Diamond"))

OpenPub1
levels(OpenPub1)

as.numeric(OpenPub)

factor(c("Green","Gold","Diamond", "Gold"))

#Class
class(OpenPub)



########GRAPHICS#########################


##Graphics in R



# Read data
a<-read.csv("C:/Users/DELL/Downloads/DummyData.csv")
  

View(a)

#Use of $

x<-a$Year

y<-a$TP

View(a)

#Plot

plot(x,y)

#Understand the requirement of a function 

###Beautification

# Plot the line plot with legends and line colors
plot(x, y, type = "l", col = "blue", xlab = "Year", ylab = "Total Population", main = "Total Population Over Years")



##Adding Legend

# Add legend
legend("topright", legend = "Total Population", col = "blue", lty = 1)

#DOesnot look nice


###More Beautification


##Need a package


install.packages("plotrix")


# library
library(plotrix)

#create color palette
library(RColorBrewer)
my_colors = brewer.pal(7, "Set2") 
my_colors1=c("red", "green","blue")



# Plot x and y
par(mar=c(4,4,2,2))
clplot(x, y, main="",lwd=5,labels=y,levels=c(190,1455),col=my_colors1, showcuts=T , bty="n",xlab="Year", ylab = "Number of Publications", axes=F)

axis(1, at = seq(2003, 2020, by= 1), las=2) #For X axis 
axis(2, at = seq(0, 2400, by = 100), las=2)  #For Y axis

legend("top",
       c("2003-2008","2009-2014","2015-2020"),
       fill=c("red","green","blue")
)

selected <- c(1,2, 7, 13)
text(x[selected], y[selected],
     labels = y[selected],
     cex = 0.9, pos = 1, col = "black")


# Create a scatter plot
x <- rnorm(100)

rnorm(100)
y <- rnorm(100)
plot(x, y, main = "Scatter Plot", xlab = "X-axis", ylab = "Y-axis", col = "blue")
?

# Create a boxplot
group1 <- rnorm(50, mean = 0, sd = 1)
group2 <- rnorm(50, mean = 2, sd = 1)
boxplot(group1, group2, names = c("Group 1", "Group 2"), col = c("blue", "red"), main = "Boxplot")

?


# Create a histogram
data <- rnorm(100)
?
hist(data, main = "Histogram", xlab = "Values", col = "green")




# Load ggplot2 package
library(ggplot2)

# Create a scatter plot
data <- data.frame(x = rnorm(100), y = rnorm(100))
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")


# Create a histogram
data <- data.frame(values = rnorm(100))
ggplot(data, aes(x = values)) +
  geom_histogram(fill = "green", color = "black") +
  labs(title = "Histogram", x = "Values")


disease <- c("Heart Disease", "Diabetes", "Cancer", "Hypertension")
prevalence <- c(15, 10, 8, 20)

# Create bar chart
ggplot(data.frame(disease, prevalence), aes(x = disease, y = prevalence)) +
  geom_bar(stat = "identity", fill = "darkblue") +
  labs(title = "Prevalence of Common Diseases", x = "Disease", y = "Prevalence (%)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



#PieChart in R , we do practice 


# Example data: Proportions of different categories
categories <- c("Category A", "Category B", "Category C", "Category D")
proportions <- c(20, 30, 25, 25)  # Proportions should sum up to 100%

# Create pie chart
pie(proportions, labels = categories, main = "Pie Chart of Categories")



# Load ggplot2 package
library(ggplot2)

# Create a data frame from the example data
data <- data.frame(categories, proportions)

# Create pie chart using ggplot2
ggplot(data, aes(x = "", y = proportions, fill = categories)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Pie Chart of Categories") +
  theme_void() +
  theme(legend.position = "right")



##library(ggplot2)

# Generate values for a normal distribution
x <- seq(-5, 5, length.out = 1000)  # Generate x values from -5 to 5
y <- dnorm(x)                        # Calculate corresponding y values using the normal distribution

# Create a data frame for ggplot
data <- data.frame(x = x, y = y)

# Plot the normal distribution using ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "blue", size = 1) +
  labs(x = "x", y = "Probability Density", title = "Bell-Shaped Normal Distribution")



#Testing of hypothesis 


#Data for practice 

#Age: Age of the individual (in years).? ratio or interval  Doubt 
#Gender: Gender of the individual (Male/Female). Nominal
#Weight: Weight of the individual (in kilograms).  Ratio
#Height: Height of the individual (in centimeters). Ratio
#Blood Pressure: Blood pressure measurement of the individual (in mmHg).
#Cholesterol Level: Cholesterol level of the individual (in mg/dL). Ratio
#Exercise Time: Amount of time the individual spends on exercise per week (in minutes). Ratio
#Daily Calorie Intake: Daily calorie intake of the individual (in calories). Ratio


#Creating a data 

data <- data.frame(
  ID = 1:10,
  Age = c(35, 40, 28, 45, 50, 33, 55, 38, 42, 48),
  Gender = c("Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female"),
  Weight = c(80, 65, 75, 70, 90, 55, 85, 60, 78, 68),
  Height = c(175, 160, 180, 165, 170, 155, 175, 160, 172, 165),
  Blood_Pressure = c("120/80", "110/70", "130/85", "125/80", "140/90", "105/65", "135/85", "115/75", "128/82", "120/78"),
  Cholesterol_Level = c(180, 200, 160, 220, 240, 180, 200, 190, 170, 210),
  Exercise_Time = c(150, 120, 180, 90, 200, 60, 120, 90, 180, 150),
  Daily_Calorie_Intake = c(2500, 2000, 2800, 1800, 3000, 2200, 2500, 1900, 2700, 2300)
)

write.csv(data, file = "NIHFW.csv")

datNIHFW<-read.csv("NIHFW.csv")

View(datNIHFW)


### Z Test
#Sample Size is large, greater than 30 

#Z-test on the "Cholesterol_Level" variable to test whether the mean cholesterol level 
#in our sample is significantly different from a known population mean. 

#First We have to set up our null and alternative hypotheses as follows:

#{True} Null Hypothesis (H0): The mean cholesterol level in the sample is equal to the population mean.

#Alternative Hypothesis (H1): The mean cholesterol level in the sample is not equal to the population mean.


# Given data
sample_mean <- mean(data$Cholesterol_Level)  # Sample mean
population_mean <- 200  # Assumed population mean
population_sd <- 20  # Assumed population standard deviation (just for illustration)

# Sample size
n <- length(data$Cholesterol_Level)

# Calculate the standard error
standard_error <- population_sd / sqrt(n)

# Calculate the z-score
z_score <- (sample_mean - population_mean) / standard_error

# Perform the Z-test
p_value <- 2 * pnorm(-abs(z_score))  

# Print the results
cat("Z-score:", z_score, "\n")
cat("P-value:", p_value, "\n")

# positive Z-score indicates that the sample mean is above the population mean, 
#while a negative Z-score indicates that the sample mean is below the population mean.



#In this case, since the p-value (0.4292) is greater than the chosen significance level (e.g., 0.05), 
#we fail to reject the null hypothesis.


### T- test 

#Two Groups

male_cholesterol <- data$Cholesterol_Level[data$Gender == "Male"]
female_cholesterol <- data$Cholesterol_Level[data$Gender == "Female"]

t_test_result <- t.test(male_cholesterol,female_cholesterol)

t_test_result

#



# two-sample t-test (comparing means of two groups) was performed using Welch's method, 
#which accounts for potentially unequal variances between the groups.

#Data: "male_cholesterol" and "female_cholesterol" are the two groups being compared.


#The calculated t-value is -0.63246.
#This t-value represents the difference between the means of the 
#two groups standardized by the standard error of the difference.
#Degrees of Freedom (df):

#The degrees of freedom are approximately 5.8824.
#This value indicates the amount of variability available for estimating parameters. In this case, it's based on Welch's correction for unequal variances.
#p-value:
#The p-value associated with the t-test is 0.5509.
#This p-value represents the probability of observing a t-value as extreme as the one calculated, assuming the null hypothesis (that there is no difference in mean cholesterol levels between males and females) is true.
#Since the p-value is greater than the typical significance level of 0.05, we fail to reject the null hypothesis.
#Alternative Hypothesis: states that the true difference in means is not equal to zero, indicating that there may be a difference in mean cholesterol levels between males and females.

#The 95% confidence interval for the difference in means is (-48.87742, 28.87742).
#This interval provides a range of plausible values for the true difference in means, with 95% confidence.
#Sample Estimates:
  
#The mean cholesterol level for males is estimated to be 190 mg/dL.
#The mean cholesterol level for females is estimated to be 200 mg/dL.

#Interpretation:Based on the provided output:
  
#We do not have sufficient evidence to conclude that there is a significant difference in mean cholesterol levels between males and females.
#The confidence interval includes zero, indicating that the true difference in means could be zero, suggesting no difference between males and females in terms of cholesterol levels.
#Further investigation or a larger sample size may be needed to draw more definitive conclusions about potential differences in mean cholesterol levels between males and females.


t_test_result <- t.test(male_cholesterol,female_cholesterol)




#ANOVAA

#Analysis of Variance): Comparing means among multiple groups
#(e.g., comparing cholesterol levels among different age groups).

#Null Hypothesis (H0): The mean cholesterol levels are the same across all age groups (20-30, 31-40, and 41-50).
#Alternative Hypothesis (H1): At least one of the age groups has a different mean cholesterol level.



group_age_20_30 <- c(180, 160)  # Add cholesterol levels for individuals in the age group 20-30
group_age_31_40 <- c(200, 220, 190, 200, 210)  # Add cholesterol levels for individuals in the age group 31-40
group_age_41_50 <- c(170, 240, 180, 170, 200)  # Add cholesterol levels for individuals in the age group 41-50

#Alternate Way of calling data 

cholesterol2030 <- data$Cholesterol_Level[data$Age>= 20 & data$Age <= 30]

cholesterol3140 <- data$Cholesterol_Level[data$Age>= 31 & data$Age <= 40]



# Perform ANOVA
anova_result <- aov(c(group_age_20_30, group_age_31_40, group_age_41_50) ~ 
                      factor(rep(c("20-30", "31-40", "41-50"), times = c(length(group_age_20_30), length(group_age_31_40), length(group_age_41_50)))))

# Print ANOVA summary
print(summary(anova_result))


#Factor: This represents the age groups, with 2 degrees of freedom (Df).
#Residuals: This represents the error term, with 9 degrees of freedom (Df).

# F-statistic and p-value
#F value: The F-statistic is 1.786.
#Pr(>F): The p-value associated with the F-statistic is 0.222.

#Decision
#Decision based on p-value:

#Since the p-value (0.222) is greater than the significance level (commonly chosen as 0.05), we fail to reject the null hypothesis.
#We do not have sufficient evidence to conclude that there is a significant difference in mean cholesterol levels among the different age groups.

#Interpretation : There is no statistically significant difference in mean cholesterol levels among the age groups 20-30, 31-40, and 41-50.
#in other words, the data do not provide enough evidence to conclude that age has a significant effect on cholesterol levels in this population.


#Type I Error (False Positive):
  
#This would occur if we reject the null hypothesis and conclude that there is a significant difference in mean cholesterol levels among the age groups when, in reality, there is no such difference.
#In this case, if we erroneously conclude that there is a difference in mean cholesterol levels when there isn't, it would be a Type I error.

#Type II Error (False Negative):

#This would occur if we fail to reject the null hypothesis and conclude that there is no significant difference in mean cholesterol levels among the age groups when, in reality, there is a difference.
#In this case, if we fail to detect a difference in mean cholesterol levels among the age groups when there actually is one, it would be a Type II error.


library(ggplot2)

# Assuming your data frame is called 'data'
# Perform ANOVA
anova_result <- aov(Cholesterol_Level ~ factor(Age), data = data)

# Create ANOVA plot
anova_plot <- ggplot(data, aes(x = factor(Age), y = Cholesterol_Level)) +
  geom_boxplot() +
  labs(x = "Age Group", y = "Cholesterol Level", title = "ANOVA Plot of Cholesterol Levels by Age Group") +
  theme_minimal()

# Print the plot
print(anova_plot)




#####Chi Square Test 
###Level of independence

##First we need to identify two categorical variables to assess their association.

# Create a contingency table
contingency_table <- table(data$Gender, data$Exercise_Time)

# Perform Chi-square test
chi_square_test <- chisq.test(contingency_table)


#warning message you received indicates that the Chi-square approximation may be incorrect. This warning typically occurs when the sample size is small, 
#or when the expected frequencies in the contingency table are low,


# Print Chi-square test results
print(chi_square_test)


#Chi-square statistic: This is the test statistic calculated from the contingency table. It measures the discrepancy between the observed and expected frequencies under the null hypothesis.
#Degrees of Freedom: This represents the number of independent pieces of information available for estimating the population parameters.
#p-value: This is the probability of observing the obtained Chi-square statistic (or more extreme) under the null hypothesis. It indicates the strength of evidence against the null hypothesis.



#If the p-value is less than the chosen significance level (e.g., 0.05), 
#we reject the null hypothesis, concluding that there is a significant association between Gender and Exercise Time.











##Left Tailed Test:

#Null Hypothesis: H0: μ = μ0
#Alternate Hypothesis: H1: μ < μ0


#Decision Criteria: If the z statistic < z critical value then reject the null hypothesis.


##Right Tailed Test:

#Null Hypothesis: H0: μ = μ0
#Alternate Hypothesis: H1: μ > μ0


#Decision Criteria: If the z statistic > z critical value then reject the null hypothesis.





# Assuming the population mean and standard deviation
pop_mean <- 170
pop_sd <- 10

# Sample data
sample_mean <- 175
n <- 20

# Perform Z-test
z_score <- (sample_mean - pop_mean) / (pop_sd / sqrt(n))

# Print the z-score
print(z_score)







###Rough Dataset

exam_scores <- data.frame(
  group = c(rep("A", 5), rep("B", 5)),
  score = c(70, 75, 80, 85, 90, 65, 70, 75, 80, 85)
)

# Perform ANOVA
anova_result <- aov(score ~ group, data = exam_scores)

# Summarize ANOVA results
summary(anova_result)







# Create the data
group_A <- c(70, 75, 80, 85, 90)
group_B <- c(65, 70, 75, 80, 85)

# Perform the t-test
t_test_result <- t.test(group_A, group_B)

# Print the results
print(t_test_result)





##test of Hypothesis in R

#Assumptions of Parametric Test





