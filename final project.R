##### Anderson Darling Test
# load data
my_data <- read.csv("movies.csv")
head(my_data)

# Density plot: the density plot provides a visual judgment about whether the distribution is bell shaped.
library("ggpubr")
ggdensity(my_data$Score, 
          main = "Density plot of Score",
          xlab = "Score")

# Q-Q plot: Q-Q plot (or quantile-quantile plot) draws the correlation between a given sample and the normal distribution. A 45-degree reference line is also plotted.
library(ggpubr)
ggqqplot(my_data$Score)

# The R function shapiro.test() can be used to perform the Shapiro-Wilk test of normality for one variable (univariate):
library(nortest)
ad.test(my_data$Score)

boxplot(WoodyAllen, AlfredHitchcock, names=labels, 
        col="orange", 
        main = "Score of movies directed by Woody Allen and Alfred Hitchcock", 
        xlab = "Woody Allen and Alfred Hitchcock", 
        ylab = "Scores")

lm.fit=lm(Vote~Runtime,data=my_data)
