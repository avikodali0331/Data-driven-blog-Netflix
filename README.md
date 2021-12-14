# Data-driven-blog-Netflix
This is an analysis of Netflix data from Kaggle using R, done for my Data 101 course in the Fall 2021 semester. The task was to analyze a dataset found on the internet from a reputable source and then write a blog on that analysis. 

Below, you will find my blog:  


  My name is Avi Kodali, and I am a freshman majoring in Statistics, and minoring in Computer Science. I enjoy analyzing large datasets to squeeze out any useful insights and information and transforming that insight into solutions. As such, I aspire to be a data scientist. 

  During the COVID-19 pandemic, people all around the world found themselves stuck inside their homes. They could not hang out with their friends or go outside to have their usual fun. So stuck inside their homes, they had to find other ways to cope with quarantine. One of the most popular ways to maintain their sanity through the boredom of quarantine life was to binge shows on popular streaming platforms, such as Netflix and Amazon Prime. My family, for example, have watched at least 30 Netflix and Amazon Prime shows in the past year, while stuck at home.  Therefore, I thought it would be interesting to look at a data on shows on Netflix and see what interesting things I can find. 

  I found my dataset from Kaggle, at this URL:  https://www.kaggle.com/harshitshankhdhar/netflix-and-amazon-prime-tv-series-dataset. This dataset has five categories:  the title of the show, the genre of the show, the premiere date of the show on its platform, the number of seasons in the show, and the number of episodes in the show. 

  First, I decided to see which genre of tv series occurred the most on Netflix and Amazon Prime. To do this, I made a bar graph that showed the frequency of each genre in the dataset. 

![Figure1](https://user-images.githubusercontent.com/46624536/146074804-670d8f65-ebfe-40ff-a00c-9f5d62e0d94d.png)

_Figure 1: Frequency of Shows in each Genre_


  However, I found that there were a lot more unique genres in the dataset than I expected. Since there were so many niche genres, and I wanted to focus on the genre that occurred the most in the dataset, I decided to zoom ignore the genres that only occurred once or twice in the data set, and graph everything else: 

![Figure2](https://user-images.githubusercontent.com/46624536/146077070-2e5cb967-b815-4cce-94f6-39e9fc0d0208.png)

_Figure 2: Frequency of Shows in each Genre Zoomed in_

  I was surprised to find that docuseries is the genre of tv shows that occurs the most on Netflix and Amazon Prime. Although I expected comedy and drama to be towards the top, I never would have thought that most of the tv shows on Netflix and Amazon Prime would be docuseries. 

  Now I wanted to know if there was anything in the data that could tell me why this was the case. I decided to look at how many seasons shows in the docuseries genre and the comedy genre relatively ran for. To do this I used a box plot to look at the distribution of the number of seasons for shows in each genre:
  
![Figure3](https://user-images.githubusercontent.com/46624536/146077497-f2a6872e-6b7e-4ca2-8ed0-77aadc1dd474.png)

_Figure 3: Distribution of the Number of Seasons_

The box plot shows that docuseries have a higher range of seasons than comedies, and the average number of seasons for docuseries is higher (2.78 seasons versus 1.67 seasons). However, this could just be a result of randomness, and may not be a result of something significant between the two. To see if the average number of seasons for docuseries is in fact higher than the average number of seasons for comedies, we must do a z-test. The null hypothesis for this z-test is that the average number of seasons for docuseries is the same as the average number of seasons for comedies. The alternative hypothesis for this z-test is that the average number of seasons for docuseries is higher than the average number of seasons for comedies. From the z-test we get a z-score of 2.909, which gives us a p-value of 0.0018. The p-value is less than the significance level of 0.05, which means that we reject the null hypothesis. Therefore, the data supports the claim that the average number of seasons for docuseries is higher than the average number of seasons for comedies. 

![Figure4](https://user-images.githubusercontent.com/46624536/146077975-e40cb9c5-359f-490d-94a5-c48c96013aa3.png)

_Figure 4: Bell curve with z-score (red line)_

  Now how exactly does this play into why there are more docuseries on Netflix and Amazon Prime than comedies? Although there is not much other data in the dataset that can give a solid conclusion, perhaps Netflix and Amazon Prime decide to purchase or produce docuseries more than comedies because they are cheaper, and therefore, can lead to more seasons for each individual docuseries. Although I did not get a definite answer to this question, I found looking at this dataset very eye-opening and interesting.

