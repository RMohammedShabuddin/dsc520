# Assignment: ASSIGNMENT 5
# Name: Mohammed Shabuddin, Ramizuddin
# Date: 2021-01-07

## Set the working directory to the root of your DSC 520 directory
setwd("E:\\Bellevue\\Semester3_11302020\\Term3\\dsc520\\")

## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")
summary(heights_df)

## Using `cor()` compute correclation coefficients for
## height vs. earn
cor(heights_df$height,heights_df$earn)
### age vs. earn
cor(heights_df$age, heights_df$earn)
### ed vs. earn
cor(heights_df$ed, heights_df$earn)

## Spurious correlation
## The following is data on US spending on science, space, and technology in millions of today's dollars
## and Suicides by hanging strangulation and suffocation for the years 1999 to 2009
## Compute the correlation between these variables
tech_spending <- c(18079, 18594, 19753, 20734, 20831, 23029, 23597, 23584, 25525, 27731, 29449)
suicides <- c(5427, 5688, 6198, 6462, 6635, 7336, 7248, 7491, 8161, 8578, 9000)
year <- seq.int(1999,2009)

data_df <-data.frame(tech_spending,suicides,year)

head(data_df)

cor(tech_spending,suicides,method="pearson", use = "complete.obs")

library(ggpubr)
data_df %>% ggplot(aes(tech_spending,suicides))+geom_point(aes(color=year),alpha=0.5)+
  scale_color_gradientn(colours=c("green","yellow","red"))+theme_bw()+geom_smooth(method ="lm")+labs(title= "Number of Spending(in millions) vs Suicides")
