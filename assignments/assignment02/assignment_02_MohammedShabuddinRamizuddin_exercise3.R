# Assignment: Exercise #3: Test Scores
# Name: Mohammed Shabuddin, Ramizuddin.
# Date: 2020/12/10

getwd()
setwd("E:/Bellevue/Semester3_11302020/Term3/dsc520")

# import "scores.csv" from the data folder
scores <- read.csv("data/scores.csv")

#1. What are the observational units in this study?
str(scores)

#2. Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?
# Based on the str(), there are 3 variables with 38 observations. 
# The 3 variables are Count, Score, Section
# Count and Score are quantitative.
# Section is categorial.

#3. Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section
subset_regular <-subset(scores, Section=="Regular")
subset_sports <- subset(scores, Section=="Sports")

#4. Use the Plot function to plot each Sections scores and the number of students achieving that score. 
# Use additional Plot Arguments to label the graph and give each axis an appropriate label. 
# Once you have produced your Plots answer the following questions:

plot(subset_regular$Score,subset_regular$Count, main = "Regular Plot", xlab = "Regular Score", ylab="Sport Count")
plot(subset_sports$Score,subset_sports$Count, main = "Sports Plot", xlab = "Sports Score", ylab="Sport Count")

#4. a. Comparing and contrasting the point distributions between the two section, looking at both tendency and consistency: 
#Can you say that one section tended to score more points than the other? Justify and explain your answer.
summary(subset_regular)
summary(subset_sports)
# Looking at the summary, the mean and the median is higher for the subset_regular compared to the subset_sports. Also based on the tendency and consistency of plot points the scores are higher for the regular section.

#4.b. Did every student in one section score more points than every student in the other section? 
# If not, explain what a statistical tendency means in this context.

# Based on the 2 summary information below. I would say none is better than the other.
# A.1. The minimum and maximum score belongs to the subset_sports. Where as, the higher mean belongs to subset_regular. 
# A.2. The both 1st and 3rd quadrants is higher in subset_regular.This will tend to show that subset_regular is higher. But the max value being in subset_sports. we would not be able to conclude which is better.

#4.c. What could be one additional variable that was not mentioned in the narrative that could be influencing the point distributions between the two sections?
# There can be multiple items that could have helped like the score in couple of practice test or the student attendance. 
#I would go with student attendance will be an important factor for the narrative. This will have some impact on the scores.

