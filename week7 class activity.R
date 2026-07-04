names =c("Carrol","Mike","John")
gender =c("Female","Male","Male")
height =c(160,175,173)
weight =c(49,89,77)
age =c(35,36,41)
df = data.frame(names,gender,height,weight,age)

df[1]
df[1,]
df[1:2]
df[1:2,]

df['gender']
df$gender
df$
  
  df[1:2]
df[c(1,2)]

df[df$names=='Mike',]
df[df$age>35,]
df[df$height>170 & df$weight>80,]

df[df$gender=='Male',]
df[df$height>170 & df$age<40,]

newdf = rbind(df, data.frame(names = "Lina",
                             gender = "Female",
                             height = 156,
                             weight = 56,
                             age = 23 ))
#print ("After Added rows:\n")
print(newdf)

newdf2 = newdf[-2,]

newdf3 = newdf
newdf3[1,"age"] <- 30
newdf3[4, "height"] <- 152
print(newdf)

install.packages("readr")
library(readr)
data_cv <- read.csv ("C:/Users/muhsi/Documents/R/my_covid.csv")


head(data_cv,5)

summary(data_cv)

names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
savedf = data.frame(names,gender,height,weight,age)
write.csv (savedf,'C:/Users/muhsi/Documents/R/my_covid.csv')

#creating a vector of integers having NAs.
a<-c(1:5, rep(NA,3),6:10)
a
#performing sum on the vector
sum(a)
#selecting only integer values
b<-a[!is.na(a)]
b
#performing sum on the new vector
sum(b)

#creating a vector of integers having NAs.
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a
#assigning 0 to NAs
a[is.na(a)]<-0
a

d <-read.csv("C:/Users/muhsi/Documents/R/NAexample.csv")
is.na(d) #whole dataframe

mean(d$VarA)
mean(na.omit(d$VarA))

library(readr)
df <- read.csv("C:/Users/muhsi/Documents/R/NAexample.csv")
View(df)
df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
View(df)


library(readr)
df1 <- read.csv("C:/Users/muhsi/Documents/R/duplicate.csv")
df_cleaned <- df1
df_removed <- data.frame()
rows_to_remove <- c()
for (i in 2:nrow(df1))
{
  for (j in 1:(i-1))
  {
    if (df1[i, 2] == df1[j, 2])
    {
      rows_to_remove <- c(rows_to_remove, i)
    }
  }
}
df_cleaned <- df_cleaned[-rows_to_remove, ]
View(df_cleaned)
write.csv (df_cleaned , file= 'df_cleanedStudent.csv')
library(readr)
df1 <- read.csv("C:/Users/muhsi/Documents/R/duplicate.csv")
df2 <- unique(df1)
View(df2)
