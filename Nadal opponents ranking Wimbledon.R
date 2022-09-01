



all2003matches <- read.csv("tennis_atp-master/atp_matches_2003.csv")


Nadal_winner_2003 <- all2003matches[all2003matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2003)


Nadal_loser_2003 <- all2003matches[all2003matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2003)

Nadal_all_2003_matches <- rbind(Nadal_winner_2003, Nadal_loser_2003)
#View(Nadal_all_2003_matches)



Nadal_Wimbledon_2003_matches <- Nadal_all_2003_matches[Nadal_all_2003_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2003_matches)





Nadal_basic_ranking_plot <- ggplot(Nadal_all_Wimbledon_matches_with2003)  +
  geom_point(data = Nadal_winner_all_Wimbledon_matches_with2003, aes(x = strtoi(substr(tourney_date, 1, 4)), y=loser_rank, color = "blue")) + #, color = "blue") 
  geom_point(data = Nadal_winner_all_Wimbledon_matches_with2003, aes(x = strtoi(substr(tourney_date, 1, 4)), y=loser_rank, color = "blue"), color = "blue") 



Nadal_ranking_plot <- Nadal_basic_ranking_plot +
  geom_label(data = Nadal_winner_all_Wimbledon_matches_with2003, aes(strtoi(substr(tourney_date, 1, 4)), loser_rank, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Opponent's ranking", x = "Year") +
  ggtitle("Ranking of Nadal's opponents at Wimbledon vs. Year") 


#View(Nadal_winner_all_Wimbledon_matches)




#### Getting the medians


Nadal_Wimbledon_2003_matches <- Nadal_all_2003_matches[Nadal_all_2003_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2003_matches)


Nadal_winner_Wimbledon_2003 <- Nadal_Wimbledon_2003_matches[Nadal_Wimbledon_2003_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2003)


Nadal_winner_Wimbledon_opponent_ranking_median_2003 <- median(Nadal_winner_Wimbledon_2003$loser_rank)

###

Nadal_Wimbledon_2005_matches <- Nadal_all_2005_matches[Nadal_all_2005_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2005_matches)


Nadal_winner_Wimbledon_2005 <- Nadal_Wimbledon_2005_matches[Nadal_Wimbledon_2005_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2005)


Nadal_winner_Wimbledon_opponent_ranking_median_2005 <- median(Nadal_winner_Wimbledon_2005$loser_rank)



####

Nadal_Wimbledon_2006_matches <- Nadal_all_2006_matches[Nadal_all_2006_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2006_matches)


Nadal_winner_Wimbledon_2006 <- Nadal_Wimbledon_2006_matches[Nadal_Wimbledon_2006_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2006)


Nadal_winner_Wimbledon_opponent_ranking_median_2006 <- median(Nadal_winner_Wimbledon_2006$loser_rank)

####

Nadal_Wimbledon_2007_matches <- Nadal_all_2007_matches[Nadal_all_2007_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2007_matches)


Nadal_winner_Wimbledon_2007 <- Nadal_Wimbledon_2007_matches[Nadal_Wimbledon_2007_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2007)


Nadal_winner_Wimbledon_opponent_ranking_median_2007 <- median(Nadal_winner_Wimbledon_2007$loser_rank)


####

Nadal_Wimbledon_2008_matches <- Nadal_all_2008_matches[Nadal_all_2008_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2008_matches)


Nadal_winner_Wimbledon_2008 <- Nadal_Wimbledon_2008_matches[Nadal_Wimbledon_2008_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2008)


Nadal_winner_Wimbledon_opponent_ranking_median_2008 <- median(Nadal_winner_Wimbledon_2008$loser_rank)


####
Nadal_Wimbledon_2010_matches <- Nadal_all_2010_matches[Nadal_all_2010_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2010_matches)


Nadal_winner_Wimbledon_2010 <- Nadal_Wimbledon_2010_matches[Nadal_Wimbledon_2010_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2010)


Nadal_winner_Wimbledon_opponent_ranking_median_2010 <- median(Nadal_winner_Wimbledon_2010$loser_rank)


####
Nadal_Wimbledon_2011_matches <- Nadal_all_2011_matches[Nadal_all_2011_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2011_matches)


Nadal_winner_Wimbledon_2011 <- Nadal_Wimbledon_2011_matches[Nadal_Wimbledon_2011_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2011)


Nadal_winner_Wimbledon_opponent_ranking_median_2011 <- median(Nadal_winner_Wimbledon_2011$loser_rank)


####
Nadal_Wimbledon_2012_matches <- Nadal_all_2012_matches[Nadal_all_2012_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2012_matches)


Nadal_winner_Wimbledon_2012 <- Nadal_Wimbledon_2012_matches[Nadal_Wimbledon_2012_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2012)


Nadal_winner_Wimbledon_opponent_ranking_median_2012 <- median(Nadal_winner_Wimbledon_2012$loser_rank)



####
Nadal_Wimbledon_2014_matches <- Nadal_all_2014_matches[Nadal_all_2014_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2014_matches)


Nadal_winner_Wimbledon_2014 <- Nadal_Wimbledon_2014_matches[Nadal_Wimbledon_2014_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2014)


Nadal_winner_Wimbledon_opponent_ranking_median_2014 <- median(Nadal_winner_Wimbledon_2014$loser_rank)


####
Nadal_Wimbledon_2015_matches <- Nadal_all_2015_matches[Nadal_all_2015_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2015_matches)


Nadal_winner_Wimbledon_2015 <- Nadal_Wimbledon_2015_matches[Nadal_Wimbledon_2015_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2015)


Nadal_winner_Wimbledon_opponent_ranking_median_2015 <- median(Nadal_winner_Wimbledon_2015$loser_rank)



####
Nadal_Wimbledon_2017_matches <- Nadal_all_2017_matches[Nadal_all_2017_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2017_matches)


Nadal_winner_Wimbledon_2017 <- Nadal_Wimbledon_2017_matches[Nadal_Wimbledon_2017_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2017)


Nadal_winner_Wimbledon_opponent_ranking_median_2017 <- median(Nadal_winner_Wimbledon_2017$loser_rank)

####

Nadal_Wimbledon_2018_matches <- Nadal_all_2018_matches[Nadal_all_2018_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2018_matches)


Nadal_winner_Wimbledon_2018 <- Nadal_Wimbledon_2018_matches[Nadal_Wimbledon_2018_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2018)


Nadal_winner_Wimbledon_opponent_ranking_median_2018 <- median(Nadal_winner_Wimbledon_2018$loser_rank)

####

Nadal_Wimbledon_2019_matches <- Nadal_all_2019_matches[Nadal_all_2019_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2019_matches)


Nadal_winner_Wimbledon_2019 <- Nadal_Wimbledon_2019_matches[Nadal_Wimbledon_2019_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2019)


Nadal_winner_Wimbledon_opponent_ranking_median_2019 <- median(Nadal_winner_Wimbledon_2019$loser_rank)


####
 




years_Nadal_winner_opponent <- c(2003, 2005, 2006, 2007, 2008, 2010, 2011, 2012, 2014, 2015, 2017, 2018, 2019) 
Nadal_winner_opponent_medians <- c(Nadal_winner_Wimbledon_opponent_ranking_median_2003, Nadal_winner_Wimbledon_opponent_ranking_median_2005, Nadal_winner_Wimbledon_opponent_ranking_median_2006, 
                                    Nadal_winner_Wimbledon_opponent_ranking_median_2007, Nadal_winner_Wimbledon_opponent_ranking_median_2008, Nadal_winner_Wimbledon_opponent_ranking_median_2010, 
                                    Nadal_winner_Wimbledon_opponent_ranking_median_2011, Nadal_winner_Wimbledon_opponent_ranking_median_2012, 
                                    Nadal_winner_Wimbledon_opponent_ranking_median_2014, Nadal_winner_Wimbledon_opponent_ranking_median_2015, 
                                    Nadal_winner_Wimbledon_opponent_ranking_median_2017, Nadal_winner_Wimbledon_opponent_ranking_median_2018, Nadal_winner_Wimbledon_opponent_ranking_median_2019)

Nadal_winner_opponent_medians_df <- data.frame(years_Nadal_winner_opponent, Nadal_winner_opponent_medians)

# Median of medians lol

median(Nadal_winner_opponent_medians)

#Correct median 

median(Nadal_winner_all_Wimbledon_matches_with2003$loser_rank)
#51


Nadal_winner_plot_with_medians <- Nadal_ranking_plot +
  geom_point(aes(x = 2003,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2003),
             col = "green") +
  geom_point(aes(x = 2005,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2005),
             col = "green") + 
  geom_point(aes(x = 2006,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2006),
             col = "green") + 
  geom_point(aes(x = 2007,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2007),
             col = "green") + 
  geom_point(aes(x = 2008,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2008),
             col = "green") +
  geom_point(aes(x = 2010,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2010),
             col = "green") +
  geom_point(aes(x = 2011,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2011),
             col = "green") + 
  geom_point(aes(x = 2012,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2012),
             col = "green") +
  geom_point(aes(x = 2014,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2014),
             col = "green") +
  geom_point(aes(x = 2015,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2015),
             col = "green") +
  geom_point(aes(x = 2017,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2017),
             col = "green") + 
  geom_point(aes(x = 2018,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2018),
             col = "green") + 
  geom_point(aes(x = 2019,
                 y = Nadal_winner_Wimbledon_opponent_ranking_median_2019),
             col = "green") + 
  geom_line(data = Nadal_winner_opponent_medians_df, aes(years_Nadal_winner_opponent, Nadal_winner_opponent_medians)) + 
  scale_colour_manual(name = "Legend", values = c("Nadal won" = "blue","Median rank of opponent for the year" = "green")) +
  scale_x_continuous(breaks=seq(2003,2021,1)) + 
  scale_y_continuous(breaks=seq(0,250,50)) + 
  theme(legend.position = c(0.68, 0.74))


Nadal_winner_plot_with_medians
#Nadal_all_Wimbledon_matches
#library(ggplot2)








#### Nadal loser




Nadal_basic_ranking_loser_plot <- ggplot(Nadal_all_Wimbledon_matches_with2003)  +
  geom_point(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(x = strtoi(substr(tourney_date, 1, 4)), y=winner_rank, color = "red")) + #, color = "blue") 
  geom_point(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(x = strtoi(substr(tourney_date, 1, 4)), y=winner_rank, color = "red"), color = "red") 



Nadal_ranking_loser_plot <- Nadal_basic_ranking_loser_plot +
  geom_label(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(strtoi(substr(tourney_date, 1, 4)), winner_rank, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Opponent's ranking", x = "Year") +
  ggtitle("Ranking of Nadal's opponents at Wimbledon vs. Year") 


#View(Nadal_winner_all_Wimbledon_matches)




#### Getting the medians



Nadal_Wimbledon_2003_matches <- Nadal_all_2003_matches[Nadal_all_2003_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2003_matches)


Nadal_loser_Wimbledon_2003 <- Nadal_Wimbledon_2003_matches[Nadal_Wimbledon_2003_matches$loser_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2003)


Nadal_loser_Wimbledon_opponent_ranking_median_2003 <- median(Nadal_loser_Wimbledon_2003$winner_rank)

####

Nadal_Wimbledon_2005_matches <- Nadal_all_2005_matches[Nadal_all_2005_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2005_matches)


Nadal_loser_Wimbledon_2005 <- Nadal_Wimbledon_2005_matches[Nadal_Wimbledon_2005_matches$loser_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2005)


Nadal_loser_Wimbledon_opponent_ranking_median_2005 <- median(Nadal_loser_Wimbledon_2005$winner_rank)


####

Nadal_Wimbledon_2006_matches <- Nadal_all_2006_matches[Nadal_all_2006_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2006_matches)


Nadal_loser_Wimbledon_2006 <- Nadal_Wimbledon_2006_matches[Nadal_Wimbledon_2006_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2006)


Nadal_loser_Wimbledon_opponent_ranking_median_2006 <- median(Nadal_loser_Wimbledon_2006$winner_rank)


####

Nadal_Wimbledon_2008_matches <- Nadal_all_2008_matches[Nadal_all_2008_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2008_matches)


Nadal_loser_Wimbledon_2008 <- Nadal_Wimbledon_2008_matches[Nadal_Wimbledon_2008_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2008)


Nadal_loser_Wimbledon_opponent_ranking_median_2008 <- median(Nadal_loser_Wimbledon_2008$winner_rank)


####
Nadal_Wimbledon_2007_matches <- Nadal_all_2007_matches[Nadal_all_2007_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2007_matches)


Nadal_loser_Wimbledon_2007 <- Nadal_Wimbledon_2007_matches[Nadal_Wimbledon_2007_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2007)


Nadal_loser_Wimbledon_opponent_ranking_median_2007 <- median(Nadal_loser_Wimbledon_2007$winner_rank)


####
Nadal_Wimbledon_2010_matches <- Nadal_all_2010_matches[Nadal_all_2010_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2010_matches)


Nadal_loser_Wimbledon_2010 <- Nadal_Wimbledon_2010_matches[Nadal_Wimbledon_2010_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2010)


Nadal_loser_Wimbledon_opponent_ranking_median_2010 <- median(Nadal_loser_Wimbledon_2010$winner_rank)


####
Nadal_Wimbledon_2011_matches <- Nadal_all_2011_matches[Nadal_all_2011_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2011_matches)


Nadal_loser_Wimbledon_2011 <- Nadal_Wimbledon_2011_matches[Nadal_Wimbledon_2011_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2011)


Nadal_loser_Wimbledon_opponent_ranking_median_2011 <- median(Nadal_loser_Wimbledon_2011$winner_rank)


####
Nadal_Wimbledon_2012_matches <- Nadal_all_2012_matches[Nadal_all_2012_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2012_matches)


Nadal_loser_Wimbledon_2012 <- Nadal_Wimbledon_2012_matches[Nadal_Wimbledon_2012_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2012)


Nadal_loser_Wimbledon_opponent_ranking_median_2012 <- median(Nadal_loser_Wimbledon_2012$winner_rank)


####
Nadal_Wimbledon_2013_matches <- Nadal_all_2013_matches[Nadal_all_2013_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2013_matches)


Nadal_loser_Wimbledon_2013 <- Nadal_Wimbledon_2013_matches[Nadal_Wimbledon_2013_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2013)


Nadal_loser_Wimbledon_opponent_ranking_median_2013 <- median(Nadal_loser_Wimbledon_2013$winner_rank)


####
Nadal_Wimbledon_2014_matches <- Nadal_all_2014_matches[Nadal_all_2014_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2014_matches)


Nadal_loser_Wimbledon_2014 <- Nadal_Wimbledon_2014_matches[Nadal_Wimbledon_2014_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2014)


Nadal_loser_Wimbledon_opponent_ranking_median_2014 <- median(Nadal_loser_Wimbledon_2014$winner_rank)


####
Nadal_Wimbledon_2015_matches <- Nadal_all_2015_matches[Nadal_all_2015_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2015_matches)


Nadal_loser_Wimbledon_2015 <- Nadal_Wimbledon_2015_matches[Nadal_Wimbledon_2015_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2015)


Nadal_loser_Wimbledon_opponent_ranking_median_2015 <- median(Nadal_loser_Wimbledon_2015$winner_rank)


####
Nadal_Wimbledon_2018_matches <- Nadal_all_2018_matches[Nadal_all_2018_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2018_matches)


Nadal_loser_Wimbledon_2018 <- Nadal_Wimbledon_2018_matches[Nadal_Wimbledon_2018_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2018)


Nadal_loser_Wimbledon_opponent_ranking_median_2018 <- median(Nadal_loser_Wimbledon_2018$winner_rank)


####
Nadal_Wimbledon_2017_matches <- Nadal_all_2017_matches[Nadal_all_2017_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2017_matches)


Nadal_loser_Wimbledon_2017 <- Nadal_Wimbledon_2017_matches[Nadal_Wimbledon_2017_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2017)


Nadal_loser_Wimbledon_opponent_ranking_median_2017 <- median(Nadal_loser_Wimbledon_2017$winner_rank)


####
Nadal_Wimbledon_2019_matches <- Nadal_all_2019_matches[Nadal_all_2019_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2019_matches)


Nadal_loser_Wimbledon_2019 <- Nadal_Wimbledon_2019_matches[Nadal_Wimbledon_2019_matches$loser_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2019)


Nadal_loser_Wimbledon_opponent_ranking_median_2019 <- median(Nadal_loser_Wimbledon_2019$winner_rank)


#### 




years_Nadal_loser_opponent <- c(2003, 2005, 2006, 2007, 2011, 2012, 2013, 2014, 2015, 2017, 2018, 2019) 
Nadal_loser_opponent_medians <- c(Nadal_loser_Wimbledon_opponent_ranking_median_2003, Nadal_loser_Wimbledon_opponent_ranking_median_2005, Nadal_loser_Wimbledon_opponent_ranking_median_2006, 
                                   Nadal_loser_Wimbledon_opponent_ranking_median_2007,  
                                   Nadal_loser_Wimbledon_opponent_ranking_median_2011, Nadal_loser_Wimbledon_opponent_ranking_median_2012, Nadal_loser_Wimbledon_opponent_ranking_median_2013, 
                                   Nadal_loser_Wimbledon_opponent_ranking_median_2014, Nadal_loser_Wimbledon_opponent_ranking_median_2015, 
                                   Nadal_loser_Wimbledon_opponent_ranking_median_2017, Nadal_loser_Wimbledon_opponent_ranking_median_2018, Nadal_loser_Wimbledon_opponent_ranking_median_2019)

Nadal_loser_opponent_medians_df <- data.frame(years_Nadal_loser_opponent, Nadal_loser_opponent_medians)

# Median of medians lol

median(Nadal_loser_opponent_medians)

#Correct median
median(Nadal_loser_all_Wimbledon_matches_with2003$winner_rank)

#23.5



Nadal_loser_plot_with_medians <- Nadal_ranking_loser_plot +
  geom_hline(yintercept=23.5, linetype="dashed", color = "black") + 
  scale_colour_manual(name = "Legend", values = c("Nadal lost" = "red", "Median of all years" = "black")) +
  scale_x_continuous(breaks=seq(2003,2021,1)) + 
  theme(legend.position = c(0.68, 0.44))


Nadal_loser_plot_with_medians
#Nadal_all_Wimbledon_matches
#library(ggplot2)



Nadal_all_Wimbledon_matches_with2003 <- rbind(Nadal_Wimbledon_2003_matches_condensed, Nadal_Wimbledon_2005_matches_condensed, Nadal_Wimbledon_2006_matches_condensed, Nadal_Wimbledon_2007_matches_condensed, 
                                     Nadal_Wimbledon_2008_matches_condensed, Nadal_Wimbledon_2010_matches_condensed, Nadal_Wimbledon_2011_matches_condensed, 
                                     Nadal_Wimbledon_2012_matches_condensed, Nadal_Wimbledon_2013_matches_condensed, Nadal_Wimbledon_2014_matches_condensed, 
                                     Nadal_Wimbledon_2015_matches_condensed, Nadal_Wimbledon_2017_matches_condensed,
                                     Nadal_Wimbledon_2018_matches_condensed, Nadal_Wimbledon_2019_matches_condensed)


Nadal_loser_all_Wimbledon_matches_with2003 <- Nadal_all_Wimbledon_matches_with2003[Nadal_all_Wimbledon_matches_with2003$loser_name=="Rafael Nadal",]
#View(Nadal_loser_all_Wimbledon_matches_with2003)

Nadal_winner_all_Wimbledon_matches_with2003 <- Nadal_all_Wimbledon_matches_with2003[Nadal_all_Wimbledon_matches_with2003$winner_name=="Rafael Nadal",]
#View(Nadal_winner_all_Wimbledon_matches_with2003)




Nadal_winner_all_Wimbledon_matches_with2003 <- Nadal_winner_all_Wimbledon_matches_with2003[-c(42)]


Nadal_loser_all_Wimbledon_matches_with2003 <- Nadal_loser_all_Wimbledon_matches_with2003[-c(42)]


Nadal_winner_all_Wimbledon_matches_with2003$Nadal_dominance_ratio <- (1 -(Nadal_winner_all_Wimbledon_matches_with2003$l_1stWon + Nadal_winner_all_Wimbledon_matches_with2003$l_2ndWon)
                                                               /Nadal_winner_all_Wimbledon_matches_with2003$l_svpt)/ (1-(Nadal_winner_all_Wimbledon_matches_with2003$w_1stWon + 
                                                                                                                  Nadal_winner_all_Wimbledon_matches_with2003$w_2ndWon)/
                                                                                                               (Nadal_winner_all_Wimbledon_matches_with2003$w_svpt)) 

Nadal_loser_all_Wimbledon_matches_with2003$Nadal_dominance_ratio  <- (1 -(Nadal_loser_all_Wimbledon_matches_with2003$w_1stWon + Nadal_loser_all_Wimbledon_matches_with2003$w_2ndWon)
                                                               /Nadal_loser_all_Wimbledon_matches_with2003$w_svpt)/ (1-(Nadal_loser_all_Wimbledon_matches_with2003$l_1stWon + 
                                                                                                                 Nadal_loser_all_Wimbledon_matches_with2003$l_2ndWon)/
                                                                                                              (Nadal_loser_all_Wimbledon_matches_with2003$l_svpt))







Nadal_all_Wimbledon_matches_with2003_2 <- rbind(Nadal_loser_all_Wimbledon_matches_with2003, Nadal_winner_all_Wimbledon_matches_with2003)
#View(Nadal_all_Wimbledon_matches_with2003_2)

median(Nadal_all_Wimbledon_matches_with2003_2$Nadal_dominance_ratio)


Nadal_all_Wimbledon_matches_with2003_2$Year <- substr(Nadal_all_Wimbledon_matches_with2003_2$tourney_date, 1, 4)






##### Taking the medians rather than the means for dominance ratio

#### 2005


Nadal_2005_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2005",]

#View(Nadal_2005_all_Wimbledon_matches)

Nadal_dominance_median_point_2005 <- median(Nadal_2005_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2006


Nadal_2006_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2006",]

#View(Nadal_2006_all_Wimbledon_matches)

Nadal_dominance_median_point_2006 <- median(Nadal_2006_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2007


Nadal_2007_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2007",]

#View(Nadal_2007_all_Wimbledon_matches)

Nadal_dominance_median_point_2007 <- median(Nadal_2007_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2008


Nadal_2008_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2008",]

#View(Nadal_2008_all_Wimbledon_matches)

Nadal_dominance_median_point_2008 <- median(Nadal_2008_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2010


Nadal_2010_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2010",]

#View(Nadal_2010_all_Wimbledon_matches)

Nadal_dominance_median_point_2010 <- median(Nadal_2010_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2011


Nadal_2011_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2011",]

#View(Nadal_2011_all_Wimbledon_matches)

Nadal_dominance_median_point_2011 <- median(Nadal_2011_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2012


Nadal_2012_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2012",]

#View(Nadal_2012_all_Wimbledon_matches)

Nadal_dominance_median_point_2012 <- median(Nadal_2012_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2013


Nadal_2013_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2013",]

#View(Nadal_2013_all_Wimbledon_matches)

Nadal_dominance_median_point_2013 <- median(Nadal_2013_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2014


Nadal_2014_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2014",]

#View(Nadal_2014_all_Wimbledon_matches)

Nadal_dominance_median_point_2014 <- median(Nadal_2014_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2015


Nadal_2015_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2015",]

#View(Nadal_2015_all_Wimbledon_matches)

Nadal_dominance_median_point_2015 <- median(Nadal_2015_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2017


Nadal_2017_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2017",]

#View(Nadal_2017_all_Wimbledon_matches)

Nadal_dominance_median_point_2017 <- median(Nadal_2017_all_Wimbledon_matches$Nadal_dominance_ratio)


#### 2018


Nadal_2018_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2018",]

#View(Nadal_2018_all_Wimbledon_matches)

Nadal_dominance_median_point_2018 <- median(Nadal_2018_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2019


Nadal_2019_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2019",]

#View(Nadal_2019_all_Wimbledon_matches)

Nadal_dominance_median_point_2019 <- median(Nadal_2019_all_Wimbledon_matches$Nadal_dominance_ratio)

#### 2003


Nadal_2003_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches_with2003_2[Nadal_all_Wimbledon_matches_with2003_2$Year == "2003",]

#View(Nadal_2003_all_Wimbledon_matches)

Nadal_dominance_median_point_2003 <- median(Nadal_2003_all_Wimbledon_matches$Nadal_dominance_ratio)



years_Nadal <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14) 
Nadal_dominance_medians <- c(Nadal_dominance_median_point_2003, Nadal_dominance_median_point_2005, Nadal_dominance_median_point_2006, Nadal_dominance_median_point_2007, 
                              Nadal_dominance_median_point_2008, Nadal_dominance_median_point_2010, Nadal_dominance_median_point_2011, 
                              Nadal_dominance_median_point_2012, Nadal_dominance_median_point_2013, Nadal_dominance_median_point_2014, 
                              Nadal_dominance_median_point_2015, Nadal_dominance_median_point_2017, Nadal_dominance_median_point_2018, 
                              Nadal_dominance_median_point_2019)

Nadal_dominance_median_over_years_df <- data.frame(years_Nadal, Nadal_dominance_medians)



Nadal_dominance_plot_with_medians <- Nadal_dominance_plot +
  geom_point(aes(x = 1,
                 y = Nadal_dominance_median_point_2003),
             col = "green") +
  geom_point(aes(x = 2,
                 y = Nadal_dominance_median_point_2005),
             col = "green") +
  geom_point(aes(x = 3,
                 y = Nadal_dominance_median_point_2006),
             col = "green") + 
  geom_point(aes(x = 4,
                 y = Nadal_dominance_median_point_2007),
             col = "green") +
  geom_point(aes(x = 5,
                 y = Nadal_dominance_median_point_2008),
             col = "green") + 
  geom_point(aes(x = 6,
                 y = Nadal_dominance_median_point_2010),
             col = "green") +
  geom_point(aes(x = 7,
                 y = Nadal_dominance_median_point_2011),
             col = "green") + 
  geom_point(aes(x = 8,
                 y = Nadal_dominance_median_point_2012),
             col = "green") +
  geom_point(aes(x = 9,
                 y = Nadal_dominance_median_point_2013),
             col = "green") + 
  geom_point(aes(x = 10,
                 y = Nadal_dominance_median_point_2014),
             col = "green") +
  geom_point(aes(x = 11,
                 y = Nadal_dominance_median_point_2015),
             col = "green") +
  geom_point(aes(x = 12,
                 y = Nadal_dominance_median_point_2017),
             col = "green") + 
  geom_point(aes(x = 13,
                 y = Nadal_dominance_median_point_2018),
             col = "green") +
  geom_point(aes(x = 14,
                 y = Nadal_dominance_median_point_2019),
             col = "green") +
  geom_line(data = Nadal_dominance_median_over_years_df, aes(years_Nadal, Nadal_dominance_medians)) + 
  scale_colour_manual(name = "Legend", values = c("Nadal lost" = "red", "Nadal won" = "blue", "Nadal's median dominance ratio for the year" = "green")) +
  scale_y_continuous(breaks=seq(0,4,0.5), limits = c(0.3, 3.1)) +
  theme(legend.position = c(0.62, 0.87))


Nadal_dominance_plot_with_medians

