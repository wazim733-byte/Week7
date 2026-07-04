# Create vectors for each column
Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)

# Combine into a data frame
students <- data.frame(Name, Gender, Age, Test_Score, Attendance)

# View the data frame
View(students)

# Display the Test_Score column using both df['Test_Score'] and df$Test_score.
students['Test_Score'] 
students$Test_Score   

# Display the first 3 rows of the data frame
students[1:3, ] 


# Display students who are older than 22
students[students$Age > 22, ] 

# Display female students with Test_Score greater than 80
students[students$Gender == 'Female' & students$Test_Score > 80, ] 

# Adding Lina to the existing dataframe using rbind()
students <- rbind(students, data.frame(Name = "Lina", 
                                       Gender = "Male", 
                                       Age = 20, 
                                       Test_Score = 95, 
                                       Attendance = 92)) 

print(students)

# Creating the sample data frame with missing values
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)

# Check for missing values (NA) in the data frame
is.na(students_na) 

# Replace missing values in Age with the mean age
students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm=TRUE) 

# Replace missing values in Test_Score with the median test score
students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm=TRUE) 

# Replace missing values in Attendance with 0
students_na$Attendance[is.na(students_na$Attendance)] <- 0 

View(df)