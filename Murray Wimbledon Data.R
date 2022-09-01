
#2005 matches

all2005matches <- read.csv("tennis_atp-master/atp_matches_2005.csv")


Murray_winner_2005 <- all2005matches[all2005matches$winner_name=="Andy Murray",]
#View(Murray_winner_2005)


Murray_loser_2005 <- all2005matches[all2005matches$loser_name=="Andy Murray",]
#View(Murray_loser_2005)

Murray_all_2005_matches <- rbind(Murray_winner_2005, Murray_loser_2005)
#View(Murray_all_2005_matches)



Murray_Wimbledon_2005_matches <- Murray_all_2005_matches[Murray_all_2005_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2005_matches)


Murray_Wimbledon_2005_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2005_matches$w_1stWon/Murray_Wimbledon_2005_matches$w_1stIn
Murray_Wimbledon_2005_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2005_matches$l_1stWon/Murray_Wimbledon_2005_matches$l_1stIn


Murray_Wimbledon_2005_matches_condensed <- Murray_Wimbledon_2005_matches[,!(names(Murray_Wimbledon_2005_matches) %in% drop)]

#View(Murray_Wimbledon_2005_matches_condensed)

#Better 2006 matches code

all2006matches <- read.csv("tennis_atp-master/atp_matches_2006.csv")


Murray_winner_2006 <- all2006matches[all2006matches$winner_name=="Andy Murray",]
#View(Murray_winner_2006)


Murray_loser_2006 <- all2006matches[all2006matches$loser_name=="Andy Murray",]
#View(Murray_loser_2006)

Murray_all_2006_matches <- rbind(Murray_winner_2006, Murray_loser_2006)
#View(Murray_all_2006_matches)



Murray_Wimbledon_2006_matches <- Murray_all_2006_matches[Murray_all_2006_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2006_matches)


Murray_Wimbledon_2006_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2006_matches$w_1stWon/Murray_Wimbledon_2006_matches$w_1stIn
Murray_Wimbledon_2006_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2006_matches$l_1stWon/Murray_Wimbledon_2006_matches$l_1stIn


Murray_Wimbledon_2006_matches_condensed <- Murray_Wimbledon_2006_matches[,!(names(Murray_Wimbledon_2006_matches) %in% drop)]

#View(Murray_Wimbledon_2006_matches_condensed)



drop <- c("draw_size","tourney_level","best_of", "loser_ioc", "winner_id", "match_num", "tourney_id", "winner_entry", "winner_ioc",
          "winner_id","loser_id")


#2008 matches

all2008matches <- read.csv("tennis_atp-master/atp_matches_2008.csv")


Murray_winner_2008 <- all2008matches[all2008matches$winner_name=="Andy Murray",]
#View(Murray_winner_2008)


Murray_loser_2008 <- all2008matches[all2008matches$loser_name=="Andy Murray",]
#View(Murray_loser_2008)

Murray_all_2008_matches <- rbind(Murray_winner_2008, Murray_loser_2008)
#View(Murray_all_2008_matches)



Murray_Wimbledon_2008_matches <- Murray_all_2008_matches[Murray_all_2008_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2008_matches)


Murray_Wimbledon_2008_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2008_matches$w_1stWon/Murray_Wimbledon_2008_matches$w_1stIn
Murray_Wimbledon_2008_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2008_matches$l_1stWon/Murray_Wimbledon_2008_matches$l_1stIn


Murray_Wimbledon_2008_matches_condensed <- Murray_Wimbledon_2008_matches[,!(names(Murray_Wimbledon_2008_matches) %in% drop)]

#View(Murray_Wimbledon_2008_matches_condensed)


#2009 matches

all2009matches <- read.csv("tennis_atp-master/atp_matches_2009.csv")


Murray_winner_2009 <- all2009matches[all2009matches$winner_name=="Andy Murray",]
#View(Murray_winner_2009)


Murray_loser_2009 <- all2009matches[all2009matches$loser_name=="Andy Murray",]
#View(Murray_loser_2009)

Murray_all_2009_matches <- rbind(Murray_winner_2009, Murray_loser_2009)
#View(Murray_all_2009_matches)



Murray_Wimbledon_2009_matches <- Murray_all_2009_matches[Murray_all_2009_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2009_matches)


Murray_Wimbledon_2009_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2009_matches$w_1stWon/Murray_Wimbledon_2009_matches$w_1stIn
Murray_Wimbledon_2009_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2009_matches$l_1stWon/Murray_Wimbledon_2009_matches$l_1stIn


Murray_Wimbledon_2009_matches_condensed <- Murray_Wimbledon_2009_matches[,!(names(Murray_Wimbledon_2009_matches) %in% drop)]

#View(Murray_Wimbledon_2009_matches_condensed)


#2010 matches

all2010matches <- read.csv("tennis_atp-master/atp_matches_2010.csv")


Murray_winner_2010 <- all2010matches[all2010matches$winner_name=="Andy Murray",]
#View(Murray_winner_2010)


Murray_loser_2010 <- all2010matches[all2010matches$loser_name=="Andy Murray",]
#View(Murray_loser_2010)

Murray_all_2010_matches <- rbind(Murray_winner_2010, Murray_loser_2010)
#View(Murray_all_2010_matches)



Murray_Wimbledon_2010_matches <- Murray_all_2010_matches[Murray_all_2010_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2010_matches)


Murray_Wimbledon_2010_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2010_matches$w_1stWon/Murray_Wimbledon_2010_matches$w_1stIn
Murray_Wimbledon_2010_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2010_matches$l_1stWon/Murray_Wimbledon_2010_matches$l_1stIn


Murray_Wimbledon_2010_matches_condensed <- Murray_Wimbledon_2010_matches[,!(names(Murray_Wimbledon_2010_matches) %in% drop)]

#View(Murray_Wimbledon_2010_matches_condensed)


#2011 matches

all2011matches <- read.csv("tennis_atp-master/atp_matches_2011.csv")


Murray_winner_2011 <- all2011matches[all2011matches$winner_name=="Andy Murray",]
#View(Murray_winner_2011)


Murray_loser_2011 <- all2011matches[all2011matches$loser_name=="Andy Murray",]
#View(Murray_loser_2011)

Murray_all_2011_matches <- rbind(Murray_winner_2011, Murray_loser_2011)
#View(Murray_all_2011_matches)



Murray_Wimbledon_2011_matches <- Murray_all_2011_matches[Murray_all_2011_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2011_matches)


Murray_Wimbledon_2011_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2011_matches$w_1stWon/Murray_Wimbledon_2011_matches$w_1stIn
Murray_Wimbledon_2011_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2011_matches$l_1stWon/Murray_Wimbledon_2011_matches$l_1stIn


Murray_Wimbledon_2011_matches_condensed <- Murray_Wimbledon_2011_matches[,!(names(Murray_Wimbledon_2011_matches) %in% drop)]

#View(Murray_Wimbledon_2011_matches_condensed)


#2012 matches

all2012matches <- read.csv("tennis_atp-master/atp_matches_2012.csv")


Murray_winner_2012 <- all2012matches[all2012matches$winner_name=="Andy Murray",]
#View(Murray_winner_2012)


Murray_loser_2012 <- all2012matches[all2012matches$loser_name=="Andy Murray",]
#View(Murray_loser_2012)

Murray_all_2012_matches <- rbind(Murray_winner_2012, Murray_loser_2012)
#View(Murray_all_2012_matches)



Murray_Wimbledon_2012_matches <- Murray_all_2012_matches[Murray_all_2012_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2012_matches)


Murray_Wimbledon_2012_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2012_matches$w_1stWon/Murray_Wimbledon_2012_matches$w_1stIn
Murray_Wimbledon_2012_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2012_matches$l_1stWon/Murray_Wimbledon_2012_matches$l_1stIn


Murray_Wimbledon_2012_matches_condensed <- Murray_Wimbledon_2012_matches[,!(names(Murray_Wimbledon_2012_matches) %in% drop)]

#View(Murray_Wimbledon_2012_matches_condensed)



#2013 matches

all2013matches <- read.csv("tennis_atp-master/atp_matches_2013.csv")


Murray_winner_2013 <- all2013matches[all2013matches$winner_name=="Andy Murray",]
#View(Murray_winner_2013)


Murray_loser_2013 <- all2013matches[all2013matches$loser_name=="Andy Murray",]
#View(Murray_loser_2013)

Murray_all_2013_matches <- rbind(Murray_winner_2013, Murray_loser_2013)
#View(Murray_all_2013_matches)



Murray_Wimbledon_2013_matches <- Murray_all_2013_matches[Murray_all_2013_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2013_matches)


Murray_Wimbledon_2013_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2013_matches$w_1stWon/Murray_Wimbledon_2013_matches$w_1stIn
Murray_Wimbledon_2013_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2013_matches$l_1stWon/Murray_Wimbledon_2013_matches$l_1stIn


Murray_Wimbledon_2013_matches_condensed <- Murray_Wimbledon_2013_matches[,!(names(Murray_Wimbledon_2013_matches) %in% drop)]

#View(Murray_Wimbledon_2013_matches_condensed)




#2014 matches

all2014matches <- read.csv("tennis_atp-master/atp_matches_2014.csv")


Murray_winner_2014 <- all2014matches[all2014matches$winner_name=="Andy Murray",]
#View(Murray_winner_2014)


Murray_loser_2014 <- all2014matches[all2014matches$loser_name=="Andy Murray",]
#View(Murray_loser_2014)

Murray_all_2014_matches <- rbind(Murray_winner_2014, Murray_loser_2014)
#View(Murray_all_2014_matches)



Murray_Wimbledon_2014_matches <- Murray_all_2014_matches[Murray_all_2014_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2014_matches)


Murray_Wimbledon_2014_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2014_matches$w_1stWon/Murray_Wimbledon_2014_matches$w_1stIn
Murray_Wimbledon_2014_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2014_matches$l_1stWon/Murray_Wimbledon_2014_matches$l_1stIn


Murray_Wimbledon_2014_matches_condensed <- Murray_Wimbledon_2014_matches[,!(names(Murray_Wimbledon_2014_matches) %in% drop)]

#View(Murray_Wimbledon_2014_matches_condensed)


#2015 matches


all2015matches <- read.csv("tennis_atp-master/atp_matches_2015.csv")


Murray_winner_2015 <- all2015matches[all2015matches$winner_name=="Andy Murray",]
#View(Murray_winner_2015)


Murray_loser_2015 <- all2015matches[all2015matches$loser_name=="Andy Murray",]
#View(Murray_loser_2015)

Murray_all_2015_matches <- rbind(Murray_winner_2015, Murray_loser_2015)
#View(Murray_all_2015_matches)



Murray_Wimbledon_2015_matches <- Murray_all_2015_matches[Murray_all_2015_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2015_matches)


Murray_Wimbledon_2015_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2015_matches$w_1stWon/Murray_Wimbledon_2015_matches$w_1stIn
Murray_Wimbledon_2015_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2015_matches$l_1stWon/Murray_Wimbledon_2015_matches$l_1stIn


Murray_Wimbledon_2015_matches_condensed <- Murray_Wimbledon_2015_matches[,!(names(Murray_Wimbledon_2015_matches) %in% drop)]

#View(Murray_Wimbledon_2015_matches_condensed)


#2016 matches


all2016matches <- read.csv("tennis_atp-master/atp_matches_2016.csv")


Murray_winner_2016 <- all2016matches[all2016matches$winner_name=="Andy Murray",]
#View(Murray_winner_2016)


Murray_loser_2016 <- all2016matches[all2016matches$loser_name=="Andy Murray",]
#View(Murray_loser_2016)

Murray_all_2016_matches <- rbind(Murray_winner_2016, Murray_loser_2016)
#View(Murray_all_2016_matches)



Murray_Wimbledon_2016_matches <- Murray_all_2016_matches[Murray_all_2016_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2016_matches)


Murray_Wimbledon_2016_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2016_matches$w_1stWon/Murray_Wimbledon_2016_matches$w_1stIn
Murray_Wimbledon_2016_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2016_matches$l_1stWon/Murray_Wimbledon_2016_matches$l_1stIn


Murray_Wimbledon_2016_matches_condensed <- Murray_Wimbledon_2016_matches[,!(names(Murray_Wimbledon_2016_matches) %in% drop)]

#View(Murray_Wimbledon_2016_matches_condensed)



#2017 matches


all2017matches <- read.csv("tennis_atp-master/atp_matches_2017.csv")


Murray_winner_2017 <- all2017matches[all2017matches$winner_name=="Andy Murray",]
#View(Murray_winner_2017)


Murray_loser_2017 <- all2017matches[all2017matches$loser_name=="Andy Murray",]
#View(Murray_loser_2017)

Murray_all_2017_matches <- rbind(Murray_winner_2017, Murray_loser_2017)
#View(Murray_all_2017_matches)



Murray_Wimbledon_2017_matches <- Murray_all_2017_matches[Murray_all_2017_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2017_matches)


Murray_Wimbledon_2017_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2017_matches$w_1stWon/Murray_Wimbledon_2017_matches$w_1stIn
Murray_Wimbledon_2017_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2017_matches$l_1stWon/Murray_Wimbledon_2017_matches$l_1stIn


Murray_Wimbledon_2017_matches_condensed <- Murray_Wimbledon_2017_matches[,!(names(Murray_Wimbledon_2017_matches) %in% drop)]

#View(Murray_Wimbledon_2017_matches_condensed)


#2021 matches


all2021matches <- read.csv("tennis_atp-master/atp_matches_2021.csv")


Murray_winner_2021 <- all2021matches[all2021matches$winner_name=="Andy Murray",]
#View(Murray_winner_2021)


Murray_loser_2021 <- all2021matches[all2021matches$loser_name=="Andy Murray",]
#View(Murray_loser_2021)

Murray_all_2021_matches <- rbind(Murray_winner_2021, Murray_loser_2021)
#View(Murray_all_2021_matches)



Murray_Wimbledon_2021_matches <- Murray_all_2021_matches[Murray_all_2021_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2021_matches)


Murray_Wimbledon_2021_matches$w_1st_serve_percent_won <- 100 * Murray_Wimbledon_2021_matches$w_1stWon/Murray_Wimbledon_2021_matches$w_1stIn
Murray_Wimbledon_2021_matches$l_1st_serve_percent_won <- 100 * Murray_Wimbledon_2021_matches$l_1stWon/Murray_Wimbledon_2021_matches$l_1stIn


Murray_Wimbledon_2021_matches_condensed <- Murray_Wimbledon_2021_matches[,!(names(Murray_Wimbledon_2021_matches) %in% drop)]

#View(Murray_Wimbledon_2021_matches_condensed)



#Plotting the graph



#Creating the points and averages


Murray_winner_Wimbledon_2005 <- Murray_Wimbledon_2005_matches_condensed[Murray_Wimbledon_2005_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2005)

Murray_loser_Wimbledon_2005 <- Murray_Wimbledon_2005_matches_condensed[Murray_Wimbledon_2005_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2005)

Murray_point_2005 <- (sum(Murray_winner_Wimbledon_2005$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2005$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2005$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2005$w_1st_serve_percent_won)))/3



Murray_winner_Wimbledon_2006 <- Murray_Wimbledon_2006_matches_condensed[Murray_Wimbledon_2006_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2006)

Murray_loser_Wimbledon_2006 <- Murray_Wimbledon_2006_matches_condensed[Murray_Wimbledon_2006_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2006)

Murray_point_2006 <- (sum(Murray_winner_Wimbledon_2006$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2006$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2006$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2006$w_1st_serve_percent_won)))/4

Murray_winner_Wimbledon_2008 <- Murray_Wimbledon_2008_matches_condensed[Murray_Wimbledon_2008_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2008)

Murray_loser_Wimbledon_2008 <- Murray_Wimbledon_2008_matches_condensed[Murray_Wimbledon_2008_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2008)

Murray_point_2008 <- (sum(Murray_winner_Wimbledon_2008$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2008$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2008$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2008$w_1st_serve_percent_won)))/4

Murray_winner_Wimbledon_2009 <- Murray_Wimbledon_2009_matches_condensed[Murray_Wimbledon_2009_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2009)

Murray_loser_Wimbledon_2009 <- Murray_Wimbledon_2009_matches_condensed[Murray_Wimbledon_2009_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2009)

Murray_point_2009 <- (sum(Murray_winner_Wimbledon_2009$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2009$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2009$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2009$w_1st_serve_percent_won)))/6



Murray_winner_Wimbledon_2010 <- Murray_Wimbledon_2010_matches_condensed[Murray_Wimbledon_2010_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2010)

Murray_loser_Wimbledon_2010 <- Murray_Wimbledon_2010_matches_condensed[Murray_Wimbledon_2010_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2010)

Murray_point_2010 <- (sum(Murray_winner_Wimbledon_2010$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2010$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2010$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2010$w_1st_serve_percent_won)))/6



Murray_winner_Wimbledon_2011 <- Murray_Wimbledon_2011_matches_condensed[Murray_Wimbledon_2011_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2011)

Murray_loser_Wimbledon_2011 <- Murray_Wimbledon_2011_matches_condensed[Murray_Wimbledon_2011_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2011)

Murray_point_2011 <- (sum(Murray_winner_Wimbledon_2011$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2011$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2011$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2011$w_1st_serve_percent_won)))/6



Murray_winner_Wimbledon_2012 <- Murray_Wimbledon_2012_matches_condensed[Murray_Wimbledon_2012_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2012)

Murray_loser_Wimbledon_2012 <- Murray_Wimbledon_2012_matches_condensed[Murray_Wimbledon_2012_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2012)

Murray_point_2012 <- (sum(Murray_winner_Wimbledon_2012$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2012$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2012$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2012$w_1st_serve_percent_won)))/7



Murray_winner_Wimbledon_2013 <- Murray_Wimbledon_2013_matches_condensed[Murray_Wimbledon_2013_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2013)

Murray_loser_Wimbledon_2013 <- Murray_Wimbledon_2013_matches_condensed[Murray_Wimbledon_2013_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2013)

Murray_point_2013 <- (sum(Murray_winner_Wimbledon_2013$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2013$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2013$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2013$w_1st_serve_percent_won)))/7



Murray_winner_Wimbledon_2014 <- Murray_Wimbledon_2014_matches_condensed[Murray_Wimbledon_2014_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2014)

Murray_loser_Wimbledon_2014 <- Murray_Wimbledon_2014_matches_condensed[Murray_Wimbledon_2014_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2014)

Murray_point_2014 <- (sum(Murray_winner_Wimbledon_2014$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2014$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2014$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2014$w_1st_serve_percent_won)))/5



Murray_winner_Wimbledon_2015 <- Murray_Wimbledon_2015_matches_condensed[Murray_Wimbledon_2015_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2015)

Murray_loser_Wimbledon_2015 <- Murray_Wimbledon_2015_matches_condensed[Murray_Wimbledon_2015_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2015)

Murray_point_2015 <- (sum(Murray_winner_Wimbledon_2015$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2015$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2015$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2015$w_1st_serve_percent_won)))/6



Murray_winner_Wimbledon_2016 <- Murray_Wimbledon_2016_matches_condensed[Murray_Wimbledon_2016_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2016)

Murray_loser_Wimbledon_2016 <- Murray_Wimbledon_2016_matches_condensed[Murray_Wimbledon_2016_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2016)

Murray_point_2016 <- (sum(Murray_winner_Wimbledon_2016$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2016$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2016$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2016$w_1st_serve_percent_won)))/7



Murray_winner_Wimbledon_2017 <- Murray_Wimbledon_2017_matches_condensed[Murray_Wimbledon_2017_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2017)

Murray_loser_Wimbledon_2017 <- Murray_Wimbledon_2017_matches_condensed[Murray_Wimbledon_2017_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2017)

Murray_point_2017 <- (sum(Murray_winner_Wimbledon_2017$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2017$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2017$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2017$w_1st_serve_percent_won)))/5


Murray_winner_Wimbledon_2021 <- Murray_Wimbledon_2021_matches_condensed[Murray_Wimbledon_2021_matches_condensed$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2021)

Murray_loser_Wimbledon_2021 <- Murray_Wimbledon_2021_matches_condensed[Murray_Wimbledon_2021_matches_condensed$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2021)

Murray_point_2021 <- (sum(Murray_winner_Wimbledon_2021$w_1st_serve_percent_won) - sum((Murray_winner_Wimbledon_2021$l_1st_serve_percent_won)) + 
                          sum(Murray_loser_Wimbledon_2021$l_1st_serve_percent_won) - sum((Murray_loser_Wimbledon_2021$w_1st_serve_percent_won)))/3




#Combining all of Murray's Wimbledon matches

Murray_all_Wimbledon_matches <- rbind(Murray_Wimbledon_2005_matches_condensed, Murray_Wimbledon_2006_matches_condensed, 
                                        Murray_Wimbledon_2008_matches_condensed, Murray_Wimbledon_2009_matches_condensed, Murray_Wimbledon_2010_matches_condensed, 
                                        Murray_Wimbledon_2011_matches_condensed, Murray_Wimbledon_2012_matches_condensed, Murray_Wimbledon_2013_matches_condensed, 
                                        Murray_Wimbledon_2014_matches_condensed, Murray_Wimbledon_2015_matches_condensed,
                                        Murray_Wimbledon_2016_matches_condensed, Murray_Wimbledon_2017_matches_condensed,
                                        Murray_Wimbledon_2021_matches_condensed)


#View(Murray_all_Wimbledon_matches)



Murray_loser_all_Wimbledon_matches <- Murray_all_Wimbledon_matches[Murray_all_Wimbledon_matches$loser_name=="Andy Murray",]
#View(Murray_loser_all_Wimbledon_matches)

Murray_winner_all_Wimbledon_matches <- Murray_all_Wimbledon_matches[Murray_all_Wimbledon_matches$winner_name=="Andy Murray",]
#View(Murray_winner_all_Wimbledon_matches)


#Plot with averages



Murray_winner_all_Wimbledon_matches$difference_1st_serve_percent_won <- Murray_winner_all_Wimbledon_matches$w_1st_serve_percent_won - Murray_winner_all_Wimbledon_matches$l_1st_serve_percent_won

Murray_loser_all_Wimbledon_matches$Murray_minus_winner <- Murray_loser_all_Wimbledon_matches$l_1st_serve_percent_won - Murray_loser_all_Wimbledon_matches$w_1st_serve_percent_won



Mur_first_plot <- ggplot(Murray_all_Wimbledon_matches)  +
  geom_point(data = Murray_winner_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=difference_1st_serve_percent_won, color = "blue"), color = "blue") + 
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=Murray_minus_winner, color = "red")) + 
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=Murray_minus_winner), color = "red")





Mur_years <- c(2005, 2006, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2021) 
Mur_averages <- c(Murray_point_2005, Murray_point_2006,
                  Murray_point_2008, Murray_point_2009, Murray_point_2010, 
                  Murray_point_2011, Murray_point_2012, Murray_point_2013, 
                  Murray_point_2014, Murray_point_2015, Murray_point_2016,
                  Murray_point_2017,Murray_point_2021)

Mur_average_over_years_df <- data.frame(Mur_years, Mur_averages)



Murray_Wimbledon_plot <- Mur_first_plot +
  geom_hline(yintercept=0, linetype="dashed", color = "black") + 
  geom_label(data = Murray_winner_all_Wimbledon_matches, aes(strtoi(substr(tourney_date, 1, 4)), difference_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Murray_loser_all_Wimbledon_matches, aes(strtoi(substr(tourney_date, 1, 4)), Murray_minus_winner, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Difference in first serve % points won", x = "Year") +
  ggtitle("Difference in first serve % points won between Murray and opponent at Wimbledon vs. Year") 



Murray_Wimbledon_plot_with_averages <- Murray_Wimbledon_plot +
  geom_point(aes(x = 2005,
                 y = Murray_point_2005),
             col = "green") +
  geom_point(aes(x = 2006,
                 y = Murray_point_2006),
             col = "green") + 
  geom_point(aes(x = 2008,
                 y = Murray_point_2008),
             col = "green") +
  geom_point(aes(x = 2009,
                 y = Murray_point_2009),
             col = "green") + 
  geom_point(aes(x = 2010,
                 y = Murray_point_2010),
             col = "green") +
  geom_point(aes(x = 2011,
                 y = Murray_point_2011),
             col = "green") +
  geom_point(aes(x = 2012,
                 y = Murray_point_2012),
             col = "green") + 
  geom_point(aes(x = 2013,
                 y = Murray_point_2013),
             col = "green") +
  geom_point(aes(x = 2014,
                 y = Murray_point_2014),
             col = "green") +
  geom_point(aes(x = 2015,
                 y = Murray_point_2015),
             col = "green") + 
  geom_point(aes(x = 2016,
                 y = Murray_point_2016),
             col = "green") +
  geom_point(aes(x = 2017,
                 y = Murray_point_2017),
             col = "green") +
  geom_point(aes(x = 2021,
                 y = Murray_point_2021),
             col = "green") +
  geom_line(data = Mur_average_over_years_df, aes(Mur_years, Mur_averages)) + 
  scale_colour_manual(name = "Legend", values = c("Murray lost" = "red", "Murray won" = "blue", "Average of difference in first serve % \npoints won for the year" = "green")) +
  scale_y_continuous(breaks=seq(-10,50,10)) +
  scale_x_continuous(breaks=seq(2005,2021,1)) +
  theme(legend.position = c(0.25, 0.12))

#theme(legend.position = c(0.86, 0.19))



Murray_Wimbledon_plot_with_averages



Murray_all_Wimbledon_matches <- rbind(
  Murray_Wimbledon_2005_matches_condensed, Murray_Wimbledon_2006_matches_condensed, Murray_Wimbledon_2007_matches_condensed, 
  Murray_Wimbledon_2008_matches_condensed, Murray_Wimbledon_2009_matches_condensed, Murray_Wimbledon_2010_matches_condensed, 
  Murray_Wimbledon_2011_matches_condensed, Murray_Wimbledon_2012_matches_condensed, Murray_Wimbledon_2013_matches_condensed, 
  Murray_Wimbledon_2014_matches_condensed, Murray_Wimbledon_2015_matches_condensed,
  Murray_Wimbledon_2016_matches_condensed, Murray_Wimbledon_2017_matches_condensed,
  Murray_Wimbledon_2018_matches_condensed, Murray_Wimbledon_2019_matches_condensed, Murray_Wimbledon_2021_matches_condensed)


#View(Murray_all_Wimbledon_matches)



Murray_loser_all_Wimbledon_matches <- Murray_all_Wimbledon_matches[Murray_all_Wimbledon_matches$loser_name=="Andy Murray",]
#View(Murray_loser_all_Wimbledon_matches)

Murray_winner_all_Wimbledon_matches <- Murray_all_Wimbledon_matches[Murray_all_Wimbledon_matches$winner_name=="Andy Murray",]
#View(Murray_winner_all_Wimbledon_matches)
































Murray_winner_all_Wimbledon_matches$w_Murray_dominance_ratio <- (1 -(Murray_winner_all_Wimbledon_matches$l_1stWon + Murray_winner_all_Wimbledon_matches$l_2ndWon)
                                                                     /Murray_winner_all_Wimbledon_matches$l_svpt)/ (1-(Murray_winner_all_Wimbledon_matches$w_1stWon + 
                                                                                                                           Murray_winner_all_Wimbledon_matches$w_2ndWon)/
                                                                                                                        (Murray_winner_all_Wimbledon_matches$w_svpt)) 

Murray_loser_all_Wimbledon_matches$l_Murray_dominance_ratio  <- (1 -(Murray_loser_all_Wimbledon_matches$w_1stWon + Murray_loser_all_Wimbledon_matches$w_2ndWon)
                                                                     /Murray_loser_all_Wimbledon_matches$w_svpt)/ (1-(Murray_loser_all_Wimbledon_matches$l_1stWon + 
                                                                                                                          Murray_loser_all_Wimbledon_matches$l_2ndWon)/
                                                                                                                       (Murray_loser_all_Wimbledon_matches$l_svpt))

Murray_basic_dominance_plot <- ggplot(Murray_all_Wimbledon_matches)  +
  geom_point(data = Murray_winner_all_Wimbledon_matches, aes(x = (substr(tourney_date, 1, 4)), y=w_Murray_dominance_ratio, color = "blue"), color = "blue") + 
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = (substr(tourney_date, 1, 4)), y=l_Murray_dominance_ratio, color = "red")) + 
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = (substr(tourney_date, 1, 4)), y=l_Murray_dominance_ratio), color = "red")


Murray_dominance_plot <- Murray_basic_dominance_plot +
  geom_hline(yintercept=1.0, linetype="dashed", color = "black") + 
  geom_label(data = Murray_winner_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), w_Murray_dominance_ratio, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Murray_loser_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), l_Murray_dominance_ratio, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Dominance Ratio", x = "Year") +
  ggtitle("Murray's dominance ratio at Wimbledon vs. Year") 

#/1- (l_1st_Won + l_2nd_Won)/(l_svpt)/1- (w_1st_Won + w_2nd_Won)/(w_svpt)



Murray_winner_Wimbledon_2005$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2005$l_1stWon + Murray_winner_Wimbledon_2005$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2005$l_svpt)/ (1-(Murray_winner_Wimbledon_2005$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2005$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2005$w_svpt))

Murray_loser_Wimbledon_2005$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2005$w_1stWon + Murray_loser_Wimbledon_2005$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2005$w_svpt)/ (1-(Murray_loser_Wimbledon_2005$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2005$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2005$l_svpt))

Murray_dominance_average_point_2005 <- (sum(Murray_winner_Wimbledon_2005$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2005$l_Murray_dominance_ratio))/3


####

Murray_winner_Wimbledon_2006$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2006$l_1stWon + Murray_winner_Wimbledon_2006$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2006$l_svpt)/ (1-(Murray_winner_Wimbledon_2006$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2006$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2006$w_svpt))

Murray_loser_Wimbledon_2006$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2006$w_1stWon + Murray_loser_Wimbledon_2006$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2006$w_svpt)/ (1-(Murray_loser_Wimbledon_2006$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2006$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2006$l_svpt))

Murray_dominance_average_point_2006 <- (sum(Murray_winner_Wimbledon_2006$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2006$l_Murray_dominance_ratio))/4

####


Murray_winner_Wimbledon_2008$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2008$l_1stWon + Murray_winner_Wimbledon_2008$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2008$l_svpt)/ (1-(Murray_winner_Wimbledon_2008$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2008$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2008$w_svpt))

Murray_loser_Wimbledon_2008$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2008$w_1stWon + Murray_loser_Wimbledon_2008$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2008$w_svpt)/ (1-(Murray_loser_Wimbledon_2008$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2008$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2008$l_svpt))

Murray_dominance_average_point_2008 <- (sum(Murray_winner_Wimbledon_2008$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2008$l_Murray_dominance_ratio))/5
####


Murray_winner_Wimbledon_2009$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2009$l_1stWon + Murray_winner_Wimbledon_2009$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2009$l_svpt)/ (1-(Murray_winner_Wimbledon_2009$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2009$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2009$w_svpt))

Murray_loser_Wimbledon_2009$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2009$w_1stWon + Murray_loser_Wimbledon_2009$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2009$w_svpt)/ (1-(Murray_loser_Wimbledon_2009$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2009$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2009$l_svpt))

Murray_dominance_average_point_2009 <- (sum(Murray_winner_Wimbledon_2009$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2009$l_Murray_dominance_ratio))/6

####

Murray_winner_Wimbledon_2010$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2010$l_1stWon + Murray_winner_Wimbledon_2010$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2010$l_svpt)/ (1-(Murray_winner_Wimbledon_2010$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2010$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2010$w_svpt))

Murray_loser_Wimbledon_2010$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2010$w_1stWon + Murray_loser_Wimbledon_2010$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2010$w_svpt)/ (1-(Murray_loser_Wimbledon_2010$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2010$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2010$l_svpt))

Murray_dominance_average_point_2010 <- (sum(Murray_winner_Wimbledon_2010$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2010$l_Murray_dominance_ratio))/6
####

Murray_winner_Wimbledon_2011$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2011$l_1stWon + Murray_winner_Wimbledon_2011$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2011$l_svpt)/ (1-(Murray_winner_Wimbledon_2011$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2011$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2011$w_svpt))

Murray_loser_Wimbledon_2011$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2011$w_1stWon + Murray_loser_Wimbledon_2011$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2011$w_svpt)/ (1-(Murray_loser_Wimbledon_2011$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2011$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2011$l_svpt))

Murray_dominance_average_point_2011 <- (sum(Murray_winner_Wimbledon_2011$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2011$l_Murray_dominance_ratio))/6
####

Murray_winner_Wimbledon_2012$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2012$l_1stWon + Murray_winner_Wimbledon_2012$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2012$l_svpt)/ (1-(Murray_winner_Wimbledon_2012$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2012$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2012$w_svpt))

Murray_loser_Wimbledon_2012$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2012$w_1stWon + Murray_loser_Wimbledon_2012$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2012$w_svpt)/ (1-(Murray_loser_Wimbledon_2012$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2012$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2012$l_svpt))

Murray_dominance_average_point_2012 <- (sum(Murray_winner_Wimbledon_2012$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2012$l_Murray_dominance_ratio))/7
####

Murray_winner_Wimbledon_2013$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2013$l_1stWon + Murray_winner_Wimbledon_2013$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2013$l_svpt)/ (1-(Murray_winner_Wimbledon_2013$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2013$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2013$w_svpt))

Murray_loser_Wimbledon_2013$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2013$w_1stWon + Murray_loser_Wimbledon_2013$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2013$w_svpt)/ (1-(Murray_loser_Wimbledon_2013$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2013$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2013$l_svpt))

Murray_dominance_average_point_2013 <- (sum(Murray_winner_Wimbledon_2013$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2013$l_Murray_dominance_ratio))/7
####

Murray_winner_Wimbledon_2014$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2014$l_1stWon + Murray_winner_Wimbledon_2014$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2014$l_svpt)/ (1-(Murray_winner_Wimbledon_2014$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2014$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2014$w_svpt))

Murray_loser_Wimbledon_2014$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2014$w_1stWon + Murray_loser_Wimbledon_2014$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2014$w_svpt)/ (1-(Murray_loser_Wimbledon_2014$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2014$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2014$l_svpt))

Murray_dominance_average_point_2014 <- (sum(Murray_winner_Wimbledon_2014$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2014$l_Murray_dominance_ratio))/5

####

Murray_winner_Wimbledon_2015$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2015$l_1stWon + Murray_winner_Wimbledon_2015$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2015$l_svpt)/ (1-(Murray_winner_Wimbledon_2015$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2015$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2015$w_svpt))

Murray_loser_Wimbledon_2015$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2015$w_1stWon + Murray_loser_Wimbledon_2015$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2015$w_svpt)/ (1-(Murray_loser_Wimbledon_2015$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2015$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2015$l_svpt))

Murray_dominance_average_point_2015 <- (sum(Murray_winner_Wimbledon_2015$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2015$l_Murray_dominance_ratio))/6


####

Murray_winner_Wimbledon_2016$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2016$l_1stWon + Murray_winner_Wimbledon_2016$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2016$l_svpt)/ (1-(Murray_winner_Wimbledon_2016$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2016$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2016$w_svpt))

Murray_loser_Wimbledon_2016$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2016$w_1stWon + Murray_loser_Wimbledon_2016$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2016$w_svpt)/ (1-(Murray_loser_Wimbledon_2016$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2016$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2016$l_svpt))

Murray_dominance_average_point_2016 <- (sum(Murray_winner_Wimbledon_2016$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2016$l_Murray_dominance_ratio))/7


####

Murray_winner_Wimbledon_2017$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2017$l_1stWon + Murray_winner_Wimbledon_2017$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2017$l_svpt)/ (1-(Murray_winner_Wimbledon_2017$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2017$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2017$w_svpt))

Murray_loser_Wimbledon_2017$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2017$w_1stWon + Murray_loser_Wimbledon_2017$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2017$w_svpt)/ (1-(Murray_loser_Wimbledon_2017$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2017$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2017$l_svpt))

Murray_dominance_average_point_2017 <- (sum(Murray_winner_Wimbledon_2017$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2017$l_Murray_dominance_ratio))/5

####

Murray_winner_Wimbledon_2021$w_Murray_dominance_ratio <- (1 -(Murray_winner_Wimbledon_2021$l_1stWon + Murray_winner_Wimbledon_2021$l_2ndWon)
                                                              /Murray_winner_Wimbledon_2021$l_svpt)/ (1-(Murray_winner_Wimbledon_2021$w_1stWon + 
                                                                                                             Murray_winner_Wimbledon_2021$w_2ndWon)/
                                                                                                          (Murray_winner_Wimbledon_2021$w_svpt))

Murray_loser_Wimbledon_2021$l_Murray_dominance_ratio  <- (1 -(Murray_loser_Wimbledon_2021$w_1stWon + Murray_loser_Wimbledon_2021$w_2ndWon)
                                                              /Murray_loser_Wimbledon_2021$w_svpt)/ (1-(Murray_loser_Wimbledon_2021$l_1stWon + 
                                                                                                            Murray_loser_Wimbledon_2021$l_2ndWon)/
                                                                                                         (Murray_loser_Wimbledon_2021$l_svpt))

Murray_dominance_average_point_2021 <- (sum(Murray_winner_Wimbledon_2021$w_Murray_dominance_ratio) + 
                                            sum(Murray_loser_Wimbledon_2021$l_Murray_dominance_ratio))/3




years <- c(2005, 2006, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2021) 
Murray_dominance_averages <- c(Murray_dominance_average_point_2005, Murray_dominance_average_point_2006, 
                                 Murray_dominance_average_point_2008, Murray_dominance_average_point_2009, Murray_dominance_average_point_2010, 
                                 Murray_dominance_average_point_2011, Murray_dominance_average_point_2012, Murray_dominance_average_point_2013, 
                                 Murray_dominance_average_point_2014, Murray_dominance_average_point_2015, Murray_dominance_average_point_2016, 
                                 Murray_dominance_average_point_2017, Murray_dominance_average_point_2021)

Murray_dominance_average_over_years_df <- data.frame(years, Murray_dominance_averages)

sum(Murray_dominance_average_over_years_df$Murray_dominance_averages)/16



Murray_dominance_plot_with_averages <- Murray_dominance_plot +
  geom_point(aes(x = 2005,
                 y = Murray_dominance_average_point_2005),
             col = "green") +
  geom_point(aes(x = 2006,
                 y = Murray_dominance_average_point_2006),
             col = "green") + 
  geom_point(aes(x = 2008,
                 y = Murray_dominance_average_point_2008),
             col = "green") +
  geom_point(aes(x = 2009,
                 y = Murray_dominance_average_point_2009),
             col = "green") +
  geom_point(aes(x = 2010,
                 y = Murray_dominance_average_point_2010),
             col = "green") +
  geom_point(aes(x = 2011,
                 y = Murray_dominance_average_point_2011),
             col = "green") + 
  geom_point(aes(x = 2012,
                 y = Murray_dominance_average_point_2012),
             col = "green") +
  geom_point(aes(x = 2013,
                 y = Murray_dominance_average_point_2013),
             col = "green") + 
  geom_point(aes(x = 2014,
                 y = Murray_dominance_average_point_2014),
             col = "green") +
  geom_point(aes(x = 2015,
                 y = Murray_dominance_average_point_2015),
             col = "green") +
  geom_point(aes(x = 2016,
                 y = Murray_dominance_average_point_2016),
             col = "green") +
  geom_point(aes(x = 2017,
                 y = Murray_dominance_average_point_2017),
             col = "green") + 
  geom_point(aes(x = 2021,
                 y = Murray_dominance_average_point_2021),
             col = "green") +
  geom_line(data = Murray_dominance_average_over_years_df, aes(years, Murray_dominance_averages)) + 
  scale_colour_manual(name = "Legend", values = c("Murray lost" = "red", "Murray won" = "blue", "Murray's average dominance ratio for the year" = "green")) +
  scale_x_continuous(breaks=seq(2005,2021,1)) + 
  scale_y_continuous(breaks=(seq(0, 4, 0.5)), limits = c(0.3, 3.1)) + 
  theme(legend.position = c(0.88, 0.74))

Murray_dominance_plot_with_averages


library(ggplot2)






####

#725



Murray_basic_ranking_plot <- ggplot(Murray_all_Wimbledon_matches)  +
  geom_point(data = Murray_winner_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=loser_rank, color = "blue")) + #, color = "blue") 
  geom_point(data = Murray_winner_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=loser_rank, color = "blue"), color = "blue") 

  
  
Murray_ranking_plot <- Murray_basic_ranking_plot +
  geom_label(data = Murray_winner_all_Wimbledon_matches, aes(strtoi(substr(tourney_date, 1, 4)), loser_rank, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Opponent's ranking", x = "Year") +
  ggtitle("Ranking of Murray's opponents at Wimbledon vs. Year") 


#View(Murray_winner_all_Wimbledon_matches)




#### Getting the medians





Murray_Wimbledon_2005_matches <- Murray_all_2005_matches[Murray_all_2005_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2005_matches)


Murray_winner_Wimbledon_2005 <- Murray_Wimbledon_2005_matches[Murray_Wimbledon_2005_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2005)


Murray_winner_Wimbledon_opponent_ranking_median_2005 <- median(Murray_winner_Wimbledon_2005$loser_rank)


####

Murray_Wimbledon_2006_matches <- Murray_all_2006_matches[Murray_all_2006_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2006_matches)


Murray_winner_Wimbledon_2006 <- Murray_Wimbledon_2006_matches[Murray_Wimbledon_2006_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2006)


Murray_winner_Wimbledon_opponent_ranking_median_2006 <- median(Murray_winner_Wimbledon_2006$loser_rank)


####

Murray_Wimbledon_2008_matches <- Murray_all_2008_matches[Murray_all_2008_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2008_matches)


Murray_winner_Wimbledon_2008 <- Murray_Wimbledon_2008_matches[Murray_Wimbledon_2008_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2008)


Murray_winner_Wimbledon_opponent_ranking_median_2008 <- median(Murray_winner_Wimbledon_2008$loser_rank)


####
Murray_Wimbledon_2009_matches <- Murray_all_2009_matches[Murray_all_2009_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2009_matches)


Murray_winner_Wimbledon_2009 <- Murray_Wimbledon_2009_matches[Murray_Wimbledon_2009_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2009)


Murray_winner_Wimbledon_opponent_ranking_median_2009 <- median(Murray_winner_Wimbledon_2009$loser_rank)


####
Murray_Wimbledon_2010_matches <- Murray_all_2010_matches[Murray_all_2010_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2010_matches)


Murray_winner_Wimbledon_2010 <- Murray_Wimbledon_2010_matches[Murray_Wimbledon_2010_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2010)


Murray_winner_Wimbledon_opponent_ranking_median_2010 <- median(Murray_winner_Wimbledon_2010$loser_rank)


####
Murray_Wimbledon_2011_matches <- Murray_all_2011_matches[Murray_all_2011_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2011_matches)


Murray_winner_Wimbledon_2011 <- Murray_Wimbledon_2011_matches[Murray_Wimbledon_2011_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2011)


Murray_winner_Wimbledon_opponent_ranking_median_2011 <- median(Murray_winner_Wimbledon_2011$loser_rank)


####
Murray_Wimbledon_2012_matches <- Murray_all_2012_matches[Murray_all_2012_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2012_matches)


Murray_winner_Wimbledon_2012 <- Murray_Wimbledon_2012_matches[Murray_Wimbledon_2012_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2012)


Murray_winner_Wimbledon_opponent_ranking_median_2012 <- median(Murray_winner_Wimbledon_2012$loser_rank)


####
Murray_Wimbledon_2013_matches <- Murray_all_2013_matches[Murray_all_2013_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2013_matches)


Murray_winner_Wimbledon_2013 <- Murray_Wimbledon_2013_matches[Murray_Wimbledon_2013_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2013)


Murray_winner_Wimbledon_opponent_ranking_median_2013 <- median(Murray_winner_Wimbledon_2013$loser_rank)


####
Murray_Wimbledon_2014_matches <- Murray_all_2014_matches[Murray_all_2014_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2014_matches)


Murray_winner_Wimbledon_2014 <- Murray_Wimbledon_2014_matches[Murray_Wimbledon_2014_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2014)


Murray_winner_Wimbledon_opponent_ranking_median_2014 <- median(Murray_winner_Wimbledon_2014$loser_rank)


####
Murray_Wimbledon_2015_matches <- Murray_all_2015_matches[Murray_all_2015_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2015_matches)


Murray_winner_Wimbledon_2015 <- Murray_Wimbledon_2015_matches[Murray_Wimbledon_2015_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2015)


Murray_winner_Wimbledon_opponent_ranking_median_2015 <- median(Murray_winner_Wimbledon_2015$loser_rank)


####
Murray_Wimbledon_2016_matches <- Murray_all_2016_matches[Murray_all_2016_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2016_matches)


Murray_winner_Wimbledon_2016 <- Murray_Wimbledon_2016_matches[Murray_Wimbledon_2016_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2016)


Murray_winner_Wimbledon_opponent_ranking_median_2016 <- median(Murray_winner_Wimbledon_2016$loser_rank)


####
Murray_Wimbledon_2017_matches <- Murray_all_2017_matches[Murray_all_2017_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2017_matches)


Murray_winner_Wimbledon_2017 <- Murray_Wimbledon_2017_matches[Murray_Wimbledon_2017_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2017)


Murray_winner_Wimbledon_opponent_ranking_median_2017 <- median(Murray_winner_Wimbledon_2017$loser_rank)


####
Murray_Wimbledon_2021_matches <- Murray_all_2021_matches[Murray_all_2021_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2021_matches)


Murray_winner_Wimbledon_2021 <- Murray_Wimbledon_2021_matches[Murray_Wimbledon_2021_matches$winner_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2021)


Murray_winner_Wimbledon_opponent_ranking_median_2021 <- median(Murray_winner_Wimbledon_2021$loser_rank)


#### 




years_Murray_winner_opponent <- c(2005, 2006, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2021) 
Murray_winner_opponent_medians <- c(Murray_winner_Wimbledon_opponent_ranking_median_2005, Murray_winner_Wimbledon_opponent_ranking_median_2006, 
                               Murray_winner_Wimbledon_opponent_ranking_median_2008, Murray_winner_Wimbledon_opponent_ranking_median_2009, Murray_winner_Wimbledon_opponent_ranking_median_2010, 
                               Murray_winner_Wimbledon_opponent_ranking_median_2011, Murray_winner_Wimbledon_opponent_ranking_median_2012, Murray_winner_Wimbledon_opponent_ranking_median_2013, 
                               Murray_winner_Wimbledon_opponent_ranking_median_2014, Murray_winner_Wimbledon_opponent_ranking_median_2015, Murray_winner_Wimbledon_opponent_ranking_median_2016, 
                               Murray_winner_Wimbledon_opponent_ranking_median_2017, Murray_winner_Wimbledon_opponent_ranking_median_2021)

Murray_winner_opponent_medians_df <- data.frame(years_Murray_winner_opponent, Murray_winner_opponent_medians)

# Median of medians lol (Incorrect)

median(Murray_winner_opponent_medians)


#Correct median
median(Murray_winner_all_Wimbledon_matches$loser_rank)
#42




Murray_winner_plot_with_medians <- Murray_ranking_plot +
  geom_point(aes(x = 2005,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2005),
             col = "green") +
  geom_point(aes(x = 2006,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2006),
             col = "green") + 
  geom_point(aes(x = 2008,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2008),
             col = "green") +
  geom_point(aes(x = 2009,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2009),
             col = "green") +
  geom_point(aes(x = 2010,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2010),
             col = "green") +
  geom_point(aes(x = 2011,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2011),
             col = "green") + 
  geom_point(aes(x = 2012,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2012),
             col = "green") +
  geom_point(aes(x = 2013,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2013),
             col = "green") + 
  geom_point(aes(x = 2014,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2014),
             col = "green") +
  geom_point(aes(x = 2015,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2015),
             col = "green") +
  geom_point(aes(x = 2016,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2016),
             col = "green") +
  geom_point(aes(x = 2017,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2017),
             col = "green") + 
  geom_point(aes(x = 2021,
                 y = Murray_winner_Wimbledon_opponent_ranking_median_2021),
             col = "green") +
  geom_line(data = Murray_winner_opponent_medians_df, aes(years_Murray_winner_opponent, Murray_winner_opponent_medians)) + 
  scale_colour_manual(name = "Legend", values = c("Murray won" = "blue","Median rank of opponent for the year" = "green")) +
  scale_x_continuous(breaks=seq(2005,2021,1)) + 
  theme(legend.position = c(0.68, 0.74))


Murray_winner_plot_with_medians
#Murray_all_Wimbledon_matches
#library(ggplot2)








#### Murray loser




Murray_basic_ranking_loser_plot <- ggplot(Murray_all_Wimbledon_matches)  +
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=winner_rank, color = "red")) + #, color = "blue") 
  geom_point(data = Murray_loser_all_Wimbledon_matches, aes(x = strtoi(substr(tourney_date, 1, 4)), y=winner_rank, color = "red"), color = "red") 



Murray_ranking_loser_plot <- Murray_basic_ranking_loser_plot +
  geom_label(data = Murray_loser_all_Wimbledon_matches, aes(strtoi(substr(tourney_date, 1, 4)), winner_rank, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Opponent's ranking", x = "Year") +
  ggtitle("Ranking of Murray's opponents at Wimbledon vs. Year") 


#View(Murray_winner_all_Wimbledon_matches)




#### Getting the medians





Murray_Wimbledon_2005_matches <- Murray_all_2005_matches[Murray_all_2005_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2005_matches)


Murray_loser_Wimbledon_2005 <- Murray_Wimbledon_2005_matches[Murray_Wimbledon_2005_matches$loser_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2005)


Murray_loser_Wimbledon_opponent_ranking_median_2005 <- median(Murray_loser_Wimbledon_2005$winner_rank)


####

Murray_Wimbledon_2006_matches <- Murray_all_2006_matches[Murray_all_2006_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2006_matches)


Murray_loser_Wimbledon_2006 <- Murray_Wimbledon_2006_matches[Murray_Wimbledon_2006_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2006)


Murray_loser_Wimbledon_opponent_ranking_median_2006 <- median(Murray_loser_Wimbledon_2006$winner_rank)


####

Murray_Wimbledon_2008_matches <- Murray_all_2008_matches[Murray_all_2008_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2008_matches)


Murray_loser_Wimbledon_2008 <- Murray_Wimbledon_2008_matches[Murray_Wimbledon_2008_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2008)


Murray_loser_Wimbledon_opponent_ranking_median_2008 <- median(Murray_loser_Wimbledon_2008$winner_rank)


####
Murray_Wimbledon_2009_matches <- Murray_all_2009_matches[Murray_all_2009_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2009_matches)


Murray_loser_Wimbledon_2009 <- Murray_Wimbledon_2009_matches[Murray_Wimbledon_2009_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2009)


Murray_loser_Wimbledon_opponent_ranking_median_2009 <- median(Murray_loser_Wimbledon_2009$winner_rank)


####
Murray_Wimbledon_2010_matches <- Murray_all_2010_matches[Murray_all_2010_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2010_matches)


Murray_loser_Wimbledon_2010 <- Murray_Wimbledon_2010_matches[Murray_Wimbledon_2010_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2010)


Murray_loser_Wimbledon_opponent_ranking_median_2010 <- median(Murray_loser_Wimbledon_2010$winner_rank)


####
Murray_Wimbledon_2011_matches <- Murray_all_2011_matches[Murray_all_2011_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2011_matches)


Murray_loser_Wimbledon_2011 <- Murray_Wimbledon_2011_matches[Murray_Wimbledon_2011_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2011)


Murray_loser_Wimbledon_opponent_ranking_median_2011 <- median(Murray_loser_Wimbledon_2011$winner_rank)


####
Murray_Wimbledon_2012_matches <- Murray_all_2012_matches[Murray_all_2012_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2012_matches)


Murray_loser_Wimbledon_2012 <- Murray_Wimbledon_2012_matches[Murray_Wimbledon_2012_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2012)


Murray_loser_Wimbledon_opponent_ranking_median_2012 <- median(Murray_loser_Wimbledon_2012$winner_rank)


####
Murray_Wimbledon_2013_matches <- Murray_all_2013_matches[Murray_all_2013_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2013_matches)


Murray_loser_Wimbledon_2013 <- Murray_Wimbledon_2013_matches[Murray_Wimbledon_2013_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2013)


Murray_loser_Wimbledon_opponent_ranking_median_2013 <- median(Murray_loser_Wimbledon_2013$winner_rank)


####
Murray_Wimbledon_2014_matches <- Murray_all_2014_matches[Murray_all_2014_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2014_matches)


Murray_loser_Wimbledon_2014 <- Murray_Wimbledon_2014_matches[Murray_Wimbledon_2014_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2014)


Murray_loser_Wimbledon_opponent_ranking_median_2014 <- median(Murray_loser_Wimbledon_2014$winner_rank)


####
Murray_Wimbledon_2015_matches <- Murray_all_2015_matches[Murray_all_2015_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2015_matches)


Murray_loser_Wimbledon_2015 <- Murray_Wimbledon_2015_matches[Murray_Wimbledon_2015_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2015)


Murray_loser_Wimbledon_opponent_ranking_median_2015 <- median(Murray_loser_Wimbledon_2015$winner_rank)


####
Murray_Wimbledon_2016_matches <- Murray_all_2016_matches[Murray_all_2016_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2016_matches)


Murray_loser_Wimbledon_2016 <- Murray_Wimbledon_2016_matches[Murray_Wimbledon_2016_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2016)


Murray_loser_Wimbledon_opponent_ranking_median_2016 <- median(Murray_loser_Wimbledon_2016$winner_rank)


####
Murray_Wimbledon_2017_matches <- Murray_all_2017_matches[Murray_all_2017_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2017_matches)


Murray_loser_Wimbledon_2017 <- Murray_Wimbledon_2017_matches[Murray_Wimbledon_2017_matches$loser_name=="Andy Murray",]
#View(Murray_loser_Wimbledon_2017)


Murray_loser_Wimbledon_opponent_ranking_median_2017 <- median(Murray_loser_Wimbledon_2017$winner_rank)


####
Murray_Wimbledon_2021_matches <- Murray_all_2021_matches[Murray_all_2021_matches$tourney_name=="Wimbledon",]
#View(Murray_Wimbledon_2021_matches)


Murray_loser_Wimbledon_2021 <- Murray_Wimbledon_2021_matches[Murray_Wimbledon_2021_matches$loser_name=="Andy Murray",]
#View(Murray_winner_Wimbledon_2021)


Murray_loser_Wimbledon_opponent_ranking_median_2021 <- median(Murray_loser_Wimbledon_2021$winner_rank)


#### 




years <- c(2005, 2006, 2008, 2009, 2010, 2011, 2012, 2014, 2015, 2017, 2021) 
Murray_loser_opponent_medians <- c(Murray_loser_Wimbledon_opponent_ranking_median_2005, Murray_loser_Wimbledon_opponent_ranking_median_2006, 
                                    Murray_loser_Wimbledon_opponent_ranking_median_2008, Murray_loser_Wimbledon_opponent_ranking_median_2009, Murray_loser_Wimbledon_opponent_ranking_median_2010, 
                                    Murray_loser_Wimbledon_opponent_ranking_median_2011, Murray_loser_Wimbledon_opponent_ranking_median_2012, 
                                    Murray_loser_Wimbledon_opponent_ranking_median_2014, Murray_loser_Wimbledon_opponent_ranking_median_2015, 
                                    Murray_loser_Wimbledon_opponent_ranking_median_2017, Murray_loser_Wimbledon_opponent_ranking_median_2021)

Murray_winner_opponent_medians_df <- data.frame(years, Murray_loser_opponent_medians)

# Median of medians lol

median(Murray_loser_opponent_medians)

#Correct median

median(Murray_loser_all_Wimbledon_matches$winner_rank)
#6



Murray_loser_plot_with_medians <- Murray_ranking_loser_plot +
  geom_hline(yintercept=6.0, linetype="dashed", color = "black") + 
  scale_colour_manual(name = "Legend", values = c("Murray lost" = "red", "Median of all years" = "black")) +
  scale_x_continuous(breaks=seq(2005,2021,1)) + 
  theme(legend.position = c(0.68, 0.74))


Murray_loser_plot_with_medians
#Murray_all_Wimbledon_matches
#library(ggplot2)





Murray_winner_all_Wimbledon_matches_2 <- Murray_winner_all_Wimbledon_matches[-c(42)]


Murray_loser_all_Wimbledon_matches_2 <- Murray_loser_all_Wimbledon_matches[-c(42)]


Murray_winner_all_Wimbledon_matches_2$Murray_dominance_ratio <- (1 -(Murray_winner_all_Wimbledon_matches_2$l_1stWon + Murray_winner_all_Wimbledon_matches_2$l_2ndWon)
                                                                      /Murray_winner_all_Wimbledon_matches_2$l_svpt)/ (1-(Murray_winner_all_Wimbledon_matches_2$w_1stWon + 
                                                                                                                                  Murray_winner_all_Wimbledon_matches_2$w_2ndWon)/
                                                                                                                               (Murray_winner_all_Wimbledon_matches_2$w_svpt)) 

Murray_loser_all_Wimbledon_matches_2$Murray_dominance_ratio  <- (1 -(Murray_loser_all_Wimbledon_matches_2$w_1stWon + Murray_loser_all_Wimbledon_matches_2$w_2ndWon)
                                                                      /Murray_loser_all_Wimbledon_matches_2$w_svpt)/ (1-(Murray_loser_all_Wimbledon_matches_2$l_1stWon + 
                                                                                                                                 Murray_loser_all_Wimbledon_matches_2$l_2ndWon)/
                                                                                                                              (Murray_loser_all_Wimbledon_matches_2$l_svpt))

#all matches with dominance in one data frame rather than two
Murray_all_Wimbledon_matches_one_dominance_ratio <- rbind(Murray_loser_all_Wimbledon_matches_2, Murray_winner_all_Wimbledon_matches_2)
#View(Murray_all_Wimbledon_matches_one_dominance_ratio)

median(Murray_all_Wimbledon_matches_one_dominance_ratio$Murray_dominance_ratio)














Murray_all_Wimbledon_matches_one_dominance_ratio$Year <- substr(Murray_all_Wimbledon_matches_one_dominance_ratio$tourney_date, 1, 4)


#Change the years to appropriate for Murray, it's set at Nadal right now


##### Taking the medians rather than the means for dominance ratio

#### 2005


Murray_2005_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2005",]

#View(Murray_2005_all_Wimbledon_matches)

Murray_dominance_median_point_2005 <- median(Murray_2005_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2006


Murray_2006_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2006",]

#View(Murray_2006_all_Wimbledon_matches)

Murray_dominance_median_point_2006 <- median(Murray_2006_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2009


Murray_2009_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2009",]

#View(Murray_2009_all_Wimbledon_matches)

Murray_dominance_median_point_2009 <- median(Murray_2009_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2008


Murray_2008_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2008",]

#View(Murray_2008_all_Wimbledon_matches)

Murray_dominance_median_point_2008 <- median(Murray_2008_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2010


Murray_2010_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2010",]

#View(Murray_2010_all_Wimbledon_matches)

Murray_dominance_median_point_2010 <- median(Murray_2010_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2011


Murray_2011_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2011",]

#View(Murray_2011_all_Wimbledon_matches)

Murray_dominance_median_point_2011 <- median(Murray_2011_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2012


Murray_2012_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2012",]

#View(Murray_2012_all_Wimbledon_matches)

Murray_dominance_median_point_2012 <- median(Murray_2012_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2013


Murray_2013_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2013",]

#View(Murray_2013_all_Wimbledon_matches)

Murray_dominance_median_point_2013 <- median(Murray_2013_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2014


Murray_2014_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2014",]

#View(Murray_2014_all_Wimbledon_matches)

Murray_dominance_median_point_2014 <- median(Murray_2014_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2015


Murray_2015_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2015",]

#View(Murray_2015_all_Wimbledon_matches)

Murray_dominance_median_point_2015 <- median(Murray_2015_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2017


Murray_2017_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2017",]

#View(Murray_2017_all_Wimbledon_matches)

Murray_dominance_median_point_2017 <- median(Murray_2017_all_Wimbledon_matches$Murray_dominance_ratio)


#### 2016


Murray_2016_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2016",]

#View(Murray_2016_all_Wimbledon_matches)

Murray_dominance_median_point_2016 <- median(Murray_2016_all_Wimbledon_matches$Murray_dominance_ratio)

#### 2021


Murray_2021_all_Wimbledon_matches <- Murray_all_Wimbledon_matches_one_dominance_ratio[Murray_all_Wimbledon_matches_one_dominance_ratio$Year == "2021",]

#View(Murray_2021_all_Wimbledon_matches)

Murray_dominance_median_point_2021 <- median(Murray_2021_all_Wimbledon_matches$Murray_dominance_ratio)





years_Murray <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13) 
Murray_dominance_medians <- c(Murray_dominance_median_point_2005, Murray_dominance_median_point_2006, Murray_dominance_median_point_2008, 
                             Murray_dominance_median_point_2009, Murray_dominance_median_point_2010, Murray_dominance_median_point_2011, 
                             Murray_dominance_median_point_2012, Murray_dominance_median_point_2013, Murray_dominance_median_point_2014, 
                             Murray_dominance_median_point_2015, Murray_dominance_median_point_2016, Murray_dominance_median_point_2017, 
                             Murray_dominance_median_point_2021)

Murray_dominance_median_over_years_df <- data.frame(years_Murray, Murray_dominance_medians)



Murray_dominance_plot_with_medians <- Murray_dominance_plot +
  geom_point(aes(x = 1,
                 y = Murray_dominance_median_point_2005),
             col = "green") +
  geom_point(aes(x = 2,
                 y = Murray_dominance_median_point_2006),
             col = "green") +
  geom_point(aes(x = 3,
                 y = Murray_dominance_median_point_2008),
             col = "green") + 
  geom_point(aes(x = 4,
                 y = Murray_dominance_median_point_2009),
             col = "green") +
  geom_point(aes(x = 5,
                 y = Murray_dominance_median_point_2010),
             col = "green") + 
  geom_point(aes(x = 6,
                 y = Murray_dominance_median_point_2011),
             col = "green") +
  geom_point(aes(x = 7,
                 y = Murray_dominance_median_point_2012),
             col = "green") + 
  geom_point(aes(x = 8,
                 y = Murray_dominance_median_point_2013),
             col = "green") +
  geom_point(aes(x = 9,
                 y = Murray_dominance_median_point_2014),
             col = "green") + 
  geom_point(aes(x = 10,
                 y = Murray_dominance_median_point_2015),
             col = "green") +
  geom_point(aes(x = 11,
                 y = Murray_dominance_median_point_2016),
             col = "green") +
  geom_point(aes(x = 12,
                 y = Murray_dominance_median_point_2017),
             col = "green") + 
  geom_point(aes(x = 13,
                 y = Murray_dominance_median_point_2021),
             col = "green") +
  geom_line(data = Murray_dominance_median_over_years_df, aes(years_Murray, Murray_dominance_medians)) + 
  scale_colour_manual(name = "Legend", values = c("Murray lost" = "red", "Murray won" = "blue", "Murray's median dominance ratio for the year" = "green")) +
  scale_y_continuous(breaks=seq(0,4,0.5), limits = c(0.3, 3.1)) +
  theme(legend.position = c(0.66, 0.87))


Murray_dominance_plot_with_medians


