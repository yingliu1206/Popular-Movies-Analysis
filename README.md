# Popular-Movies-Analysis

## Introduction
With the continuous improvement of people’s living standard, movies play an increasingly important role in people’s daily entertainment. A good movie could not only bring people emotional resonance but also inspire people to think. There are many excellent movies that have harvested both profits and reputation throughout the movie history, like “The Dark Knight”, “The Shawshank Redemption”, “The Godfather” and so on. However, here are some doubts that come to our mind, for examples, “Are profitable movies good?”, “What kind of attributes contributed to a good movie?”. This project is determined to explore and answer these questions.

## Datasets
Our datasets include basic information like movie titles, year, score, metascore, movie genres, votes, runtime, revenue and description about 10000 of most popular movies. The score and metascore represent the different ratings from users of IMDB and Metascores respectively which could directly reflect the movies’ reputation. The revenue could be used to measure the profitability of movies.

## Methods
* Hypothesis Testing and C.Is will be used to see whether new movies are more popular than old movies. Specifically, we will first categorize the movies into two classes, “new” and “old”. New movies were released after 2000, while old movies released before 2000. Then, we can explore the popularity of these two kinds of movies by the “votes” column in the dataset. For example, side by side boxplots of votes for new and old movies can be made. Next, we will formulate suitable hypotheses, carry out either a t-test or a permutation test, and finally come to a conclusion according to the result of the test.

* Hypothesis Testing will also be used to see whether IMDb users are less dispersed and do they have milder assessments than Metascore users. User feedback is one of the most important things on the IMDb site and Metacritic site. The scores from which the two samples are drawn are normally distributed, and the two populations are independent of each other. In order to compare two variances, we must use the F distribution. Therefore, if F is close to 1, the evidence favors the null hypothesis (the two population variances are equal). But if F is much larger than 1, then the evidence is against the null hypothesis.

* A Chi squared test for two-way tables will be used to figure out the relationship between the popularity and runtime of movies. Specifically, we can make a two-way table of “votes” and “runtime” to find their connection. Then calculate the expected count for each cell and X squared. Finally, compute the Chi-square statistic by pchisq() in R. Alternatively, we can directly use chisq.test() in R to get the test result.

* Two sample Bootstrap will be used to find the difference of the means of scores for the movies directed by Woody Allen and Alfred Hitchcock. Specifically, we can first select the two directors’ movies and calculate the mean scores of movies for each director. Then simulate the bootstrap 10000 times and display the bootstrap distribution of the difference of sample means. Finally, we can see that the bootstrap distribution is approximately normal and centered at the original statistic.

* Two sample Bootstrap will also be used to find the difference of the means of revenue for the movies directed by Woody Allen and Alfred Hitchcock. Specifically, we can first select the two directors’ movies and calculate the mean revenue of movies for each director. Then simulate the bootstrap 10000 times and display the bootstrap distribution of the difference of sample means. Finally, we can see that the bootstrap distribution is approximately normal and centered at the original statistic. Thus, we will know which director has a higher box office.

* Shapiro Wilk Test or Anderson Darling Test will be used to check whether the distribution of score is normally distributed. Specifically, we plan to compute the mean and standard deviation of the score, and use density plot or Q-Q plot to explore the data. Finally, use shapiro.test() or ad.test() to find the correlation between the distribution of score and normal distribution.

* Perform a Multiple Linear Regression with the revenue of movies as the response and some other variables as the predictors. Is there a relationship between the movie scores (IMDb score and Metascore) and the movie revenues? Which predictors appear to have a statistically significant relationship to the response? Furthermore, we should make scatterplots of the response on each quantitative predictor. Finally, we will use p-value and R-square to find the fitness of the regression model.

## Expected outcomes
* We expect to have the following outcomes:
1. New movies are more popular than old movies.
2. There is a relationship between popularity and runtime of movies.
3. Get the difference of the means of scores for the movies directed by Woody Allen and Alfred Hitchcock.
4. The distribution of scores is not normally distributed.
5. Many consumers refer to movie ratings before going to the movies; The majority of consumers indicated that their intention to watch movies would be affected by the rating level, while only a few people were not affected by the rating level at all. It can be seen that the film score has a certain influence on the box office, and the film with a high score is more likely to achieve high box office. Under the background of film industrialization reform, the influence of film rating is prominent.
6. Hot elements in high rated movies — the plot, scenario, the actors. Beyond that, there seems to be a high level of love for franchises and TV remakes. As for the types of movies, popular movie types such as romantic drama, comedy, suspense and animation seem to be more favored by people, while horror movies are not for the public taste.
