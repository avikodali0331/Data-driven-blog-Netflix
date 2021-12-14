netflix_shows.df <- read.csv("tv_shows_data.csv")

par(mar=c(10,4,4,4))
genreTable <- table(netflix_shows.df$Genre)
barplot(genreTable[order(genreTable, decreasing = T)], las = 2, cex.names = 0.5, main = "Frequency of Shows in each Genre on Netflix", ylab = "Number of Shows", col = c("red"), ylim = c(0, 80))
title(xlab="Genre", mgp=c(7,6,0), cex.lab = 1) 

netflixGenreSF <- netflix_shows.df[netflix_shows.df$Genre %in% names(table(netflix_shows.df$Genre))[table(netflix_shows.df$Genre) > 2] , ]
genreTableSub <- table(netflixGenreSF$Genre)
barplot(genreTableSub[order(genreTableSub, decreasing = T)], las = 2, cex.names = 0.7, main = "Frequency of Shows in each Genre on Netflix", ylab = "Number of Shows", col = c("red"), ylim = c(0, 80))
title(xlab="Genre", mgp=c(7,6,0), cex.lab = 1) 

par(mar=c(5,4,4,4))
docu.df <- subset(netflix_shows.df, netflix_shows.df$Genre == "Docu Series")
comedy.df <- subset(netflix_shows.df, netflix_shows.df$Genre == "Comedy")
docuVScomedy.df <- rbind(docu.df, comedy.df)
boxplot(as.numeric(docuVScomedy.df$No_of_Seasons) ~ docuVScomedy.df$Genre, main = "Distribution of the Number of Seasons of Comedies vs Documentaries on Netflix", xlab = "Genre", ylab = "Number of Seasons", col = c("red", "green"), ylim = c(0, 25))

docu.seasons <- as.numeric(docu.df$No_of_Seasons)
comedy.seasons <- as.numeric(comedy.df$No_of_Seasons)

sd.docu <- sd(docu.seasons)
sd.comedy <- sd(comedy.seasons)

mean.docu <- mean(docu.seasons)
mean.comedy <- mean(comedy.seasons)

len_docu <- length(docu.seasons)
len_comedy <- length(comedy.seasons)

sd.docu.comedy <- sqrt(sd.docu^2/len_docu + sd.comedy^2/len_comedy)

zeta <- (mean.docu - mean.comedy)/sd.docu.comedy
zeta

plot(x=seq(from = -5, to= 5, by=0.1),y=dnorm(seq(from = -5, to= 5,  by=0.1),mean=0),type='l',xlab = 'mean difference',  ylab='possibility')
abline(v=zeta, col='red')

p = 1-pnorm(zeta)
p