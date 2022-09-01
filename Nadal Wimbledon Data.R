# 
# 
# 
# zip.file <- 'TennisData_ATP.zip'
# 
# # download file
# if (!file.exists(zip.file)){
#   download.file('https://github.com/JeffSackmann/tennis_atp/archive/master.zip', destfile = zip.file)
#   
# }
# 
# # unzip it
# dir.out <- 'tennis_atp-master/'
# if (!dir.exists(dir.out)) unzip(zip.file)
# 
# 
# library(stringr)
# # restrict just for main atp matches
# 
# my.f <- list.files(dir.out, pattern = '*.csv', full.names = T)
# matches_2006 <- my.f[str_detect(my.f, 'atp_matches_2006')]
# matches_2006
# 
# 
# 
# 
# all2006matches <- read.csv("tennis_atp-master/atp_matches_2006.csv")
# 
# 
# all2006matches$winner_name
# all2006matches$tourney_name
# all2006matches$surface
# 
# 
# Wimbledon_matches_2006 <- all2006matches$tourney_name[all2006matches$tourney_name == "Wimbledon"]
# Nadal_winner_2006 <- all2006matches$winner_name[all2006matches$winner_name == "Rafael Nadal"]
# 
# 
# 
# 
# remove.packages("rlang")
# install.packages("rlang")
# library(rlang)
# library(dplyr)
# 
# 
# 
# 
# 
# 
# my.f <- my.f[str_detect(my.f, 'matches')]
# my.f
# remove(my.f)
# 
# 
# 
# 
# library(readr)
# library(dplyr)
# # set cols (missing some)
# my.cols_full <- cols(
#   .default = col_integer(),
#   tourney_id = col_character(),
#   tourney_name = col_character(),
#   surface = col_character(),
#   tourney_level = col_character(),
#   winner_entry = col_character(),
#   winner_name = col_character(),
#   winner_hand = col_character(),
#   winner_ioc = col_character(),
#   winner_age = col_double(),
#   loser_entry = col_character(),
#   loser_name = col_character(),
#   loser_hand = col_character(),
#   loser_ioc = col_character(),
#   loser_age = col_double(),
#   score = col_character(),
#   round = col_character()
# )
# 
# 
# my.cols <- cols(
#   .default = col_integer(),
#   tourney_id = col_character(),
#   tourney_name = col_character(),
#   surface = col_character(),
#   winner_name = col_character(),
#   winner_ioc = col_character(),
#   loser_name = col_character()
# )
# 
# 
# # load all files with lapply and do.call (some cols don't match in all files)
# df.matches <- do.call(bind_rows,lapply(matches_2006, read_csv, col_types = my.cols))
# # create year column
# df.matches$Date <- as.Date(as.character(df.matches$tourney_date),'%Y%m%d')
# df.matches$Year <- format(df.matches$Date,'%Y')
# 
# 
# 
# all2006matches$loser_name
# 
# 
# str(df.matches)
# ##View(df.matches)
# 
# 
# 
# ##View(all2006matches[c(all2006matches$loser_name=="Rafael Nadal", all2006matches$winner_name=="Rafael Nadal"),])
# 
# 
# #2006 matches
# 
# 
# df.matches[c("winner_name", "loser_name", "surface")]
# 
# 
# 
# df.matches["winner_name"]
# 
# Nadal_winner_2006 <- all2006matches[all2006matches$winner_name=="Rafael Nadal",]
# #View(Nadal_winner_2006)
#   
# 
# Nadal_loser_2006 <- all2006matches[all2006matches$loser_name=="Rafael Nadal",]
# #View(Nadal_loser_2006)
#      
# Nadal_all_2006_matches <- rbind(Nadal_winner_2006, Nadal_loser_2006)
# #View(Nadal_all_2006_matches)
# 
# 
# Nadal_Wimbledon_2006_matches <- Nadal_all_2006_matches[Nadal_all_2006_matches$tourney_name=="Wimbledon",]
# #View(Nadal_Wimbledon_2006_matches)
# 
# install.packages(c('tibble', 'dplyr', 'readr'))
# 
# 
# Nadal_Wimbledon_2006_matches$w_1st_percent <- 
#   with(Nadal_Wimbledon_2006_matches, 
#        ifelse(w_1stWon > 0, c(w_1stWon/w_1stIn * 100, l_1stWon/l_1stIn * 100)))
# 
# Nadal_Wimbledon_2006_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2006_matches$w_1stWon/Nadal_Wimbledon_2006_matches$w_1stIn
# Nadal_Wimbledon_2006_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2006_matches$l_1stWon/Nadal_Wimbledon_2006_matches$l_1stIn
# 
# 
# #View(Nadal_Wimbledon_2006_matches)
# 
# drop <- c("draw_size","tourney_level","best_of", "loser_ioc", "winner_id", "match_num", "tourney_id", "winner_entry", "winner_ioc",
#           "winner_id","loser_id")
# Nadal_Wimbledon_2006_matches_condensed <- Nadal_Wimbledon_2006_matches[,!(names(Nadal_Wimbledon_2006_matches) %in% drop)]
# 
# #View(Nadal_Wimbledon_2006_matches_condensed)





















#Better 2006 matches code

all2006matches <- read.csv("tennis_atp-master/atp_matches_2006.csv")


Nadal_winner_2006 <- all2006matches[all2006matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2006)


Nadal_loser_2006 <- all2006matches[all2006matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2006)

Nadal_all_2006_matches <- rbind(Nadal_winner_2006, Nadal_loser_2006)
#View(Nadal_all_2006_matches)



Nadal_Wimbledon_2006_matches <- Nadal_all_2006_matches[Nadal_all_2006_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2006_matches)


Nadal_Wimbledon_2006_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2006_matches$w_1stWon/Nadal_Wimbledon_2006_matches$w_1stIn
Nadal_Wimbledon_2006_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2006_matches$l_1stWon/Nadal_Wimbledon_2006_matches$l_1stIn


Nadal_Wimbledon_2006_matches_condensed <- Nadal_Wimbledon_2006_matches[,!(names(Nadal_Wimbledon_2006_matches) %in% drop)]

#View(Nadal_Wimbledon_2006_matches_condensed)




#2007 matches

all2007matches <- read.csv("tennis_atp-master/atp_matches_2007.csv")


Nadal_winner_2007 <- all2007matches[all2007matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2007)


Nadal_loser_2007 <- all2007matches[all2007matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2007)

Nadal_all_2007_matches <- rbind(Nadal_winner_2007, Nadal_loser_2007)
#View(Nadal_all_2007_matches)



Nadal_Wimbledon_2007_matches <- Nadal_all_2007_matches[Nadal_all_2007_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2007_matches)


Nadal_Wimbledon_2007_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2007_matches$w_1stWon/Nadal_Wimbledon_2007_matches$w_1stIn
Nadal_Wimbledon_2007_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2007_matches$l_1stWon/Nadal_Wimbledon_2007_matches$l_1stIn


Nadal_Wimbledon_2007_matches_condensed <- Nadal_Wimbledon_2007_matches[,!(names(Nadal_Wimbledon_2007_matches) %in% drop)]

#View(Nadal_Wimbledon_2007_matches_condensed)


#2008 matches

all2008matches <- read.csv("tennis_atp-master/atp_matches_2008.csv")


Nadal_winner_2008 <- all2008matches[all2008matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2008)


Nadal_loser_2008 <- all2008matches[all2008matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2008)

Nadal_all_2008_matches <- rbind(Nadal_winner_2008, Nadal_loser_2008)
#View(Nadal_all_2008_matches)



Nadal_Wimbledon_2008_matches <- Nadal_all_2008_matches[Nadal_all_2008_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2008_matches)


Nadal_Wimbledon_2008_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2008_matches$w_1stWon/Nadal_Wimbledon_2008_matches$w_1stIn
Nadal_Wimbledon_2008_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2008_matches$l_1stWon/Nadal_Wimbledon_2008_matches$l_1stIn


Nadal_Wimbledon_2008_matches_condensed <- Nadal_Wimbledon_2008_matches[,!(names(Nadal_Wimbledon_2008_matches) %in% drop)]

#View(Nadal_Wimbledon_2008_matches_condensed)


#2009: didn't play Wimbledon due to injury


#2010 matches

all2010matches <- read.csv("tennis_atp-master/atp_matches_2010.csv")


Nadal_winner_2010 <- all2010matches[all2010matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2010)


Nadal_loser_2010 <- all2010matches[all2010matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2010)

Nadal_all_2010_matches <- rbind(Nadal_winner_2010, Nadal_loser_2010)
#View(Nadal_all_2010_matches)



Nadal_Wimbledon_2010_matches <- Nadal_all_2010_matches[Nadal_all_2010_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2010_matches)


Nadal_Wimbledon_2010_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2010_matches$w_1stWon/Nadal_Wimbledon_2010_matches$w_1stIn
Nadal_Wimbledon_2010_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2010_matches$l_1stWon/Nadal_Wimbledon_2010_matches$l_1stIn


Nadal_Wimbledon_2010_matches_condensed <- Nadal_Wimbledon_2010_matches[,!(names(Nadal_Wimbledon_2010_matches) %in% drop)]

#View(Nadal_Wimbledon_2010_matches_condensed)


#2011 matches

all2011matches <- read.csv("tennis_atp-master/atp_matches_2011.csv")


Nadal_winner_2011 <- all2011matches[all2011matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2011)


Nadal_loser_2011 <- all2011matches[all2011matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2011)

Nadal_all_2011_matches <- rbind(Nadal_winner_2011, Nadal_loser_2011)
#View(Nadal_all_2011_matches)



Nadal_Wimbledon_2011_matches <- Nadal_all_2011_matches[Nadal_all_2011_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2011_matches)


Nadal_Wimbledon_2011_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2011_matches$w_1stWon/Nadal_Wimbledon_2011_matches$w_1stIn
Nadal_Wimbledon_2011_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2011_matches$l_1stWon/Nadal_Wimbledon_2011_matches$l_1stIn


Nadal_Wimbledon_2011_matches_condensed <- Nadal_Wimbledon_2011_matches[,!(names(Nadal_Wimbledon_2011_matches) %in% drop)]

#View(Nadal_Wimbledon_2011_matches_condensed)


#2012 matches

all2012matches <- read.csv("tennis_atp-master/atp_matches_2012.csv")


Nadal_winner_2012 <- all2012matches[all2012matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2012)


Nadal_loser_2012 <- all2012matches[all2012matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2012)

Nadal_all_2012_matches <- rbind(Nadal_winner_2012, Nadal_loser_2012)
#View(Nadal_all_2012_matches)



Nadal_Wimbledon_2012_matches <- Nadal_all_2012_matches[Nadal_all_2012_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2012_matches)


Nadal_Wimbledon_2012_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2012_matches$w_1stWon/Nadal_Wimbledon_2012_matches$w_1stIn
Nadal_Wimbledon_2012_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2012_matches$l_1stWon/Nadal_Wimbledon_2012_matches$l_1stIn


Nadal_Wimbledon_2012_matches_condensed <- Nadal_Wimbledon_2012_matches[,!(names(Nadal_Wimbledon_2012_matches) %in% drop)]

#View(Nadal_Wimbledon_2012_matches_condensed)



#2013 matches

all2013matches <- read.csv("tennis_atp-master/atp_matches_2013.csv")


Nadal_winner_2013 <- all2013matches[all2013matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2013)


Nadal_loser_2013 <- all2013matches[all2013matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2013)

Nadal_all_2013_matches <- rbind(Nadal_winner_2013, Nadal_loser_2013)
#View(Nadal_all_2013_matches)



Nadal_Wimbledon_2013_matches <- Nadal_all_2013_matches[Nadal_all_2013_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2013_matches)


Nadal_Wimbledon_2013_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2013_matches$w_1stWon/Nadal_Wimbledon_2013_matches$w_1stIn
Nadal_Wimbledon_2013_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2013_matches$l_1stWon/Nadal_Wimbledon_2013_matches$l_1stIn


Nadal_Wimbledon_2013_matches_condensed <- Nadal_Wimbledon_2013_matches[,!(names(Nadal_Wimbledon_2013_matches) %in% drop)]

#View(Nadal_Wimbledon_2013_matches_condensed)




#2014 matches

all2014matches <- read.csv("tennis_atp-master/atp_matches_2014.csv")


Nadal_winner_2014 <- all2014matches[all2014matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2014)


Nadal_loser_2014 <- all2014matches[all2014matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2014)

Nadal_all_2014_matches <- rbind(Nadal_winner_2014, Nadal_loser_2014)
#View(Nadal_all_2014_matches)



Nadal_Wimbledon_2014_matches <- Nadal_all_2014_matches[Nadal_all_2014_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2014_matches)


Nadal_Wimbledon_2014_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2014_matches$w_1stWon/Nadal_Wimbledon_2014_matches$w_1stIn
Nadal_Wimbledon_2014_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2014_matches$l_1stWon/Nadal_Wimbledon_2014_matches$l_1stIn


Nadal_Wimbledon_2014_matches_condensed <- Nadal_Wimbledon_2014_matches[,!(names(Nadal_Wimbledon_2014_matches) %in% drop)]

#View(Nadal_Wimbledon_2014_matches_condensed)


#2015 matches


all2015matches <- read.csv("tennis_atp-master/atp_matches_2015.csv")


Nadal_winner_2015 <- all2015matches[all2015matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2015)


Nadal_loser_2015 <- all2015matches[all2015matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2015)

Nadal_all_2015_matches <- rbind(Nadal_winner_2015, Nadal_loser_2015)
#View(Nadal_all_2015_matches)



Nadal_Wimbledon_2015_matches <- Nadal_all_2015_matches[Nadal_all_2015_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2015_matches)


Nadal_Wimbledon_2015_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2015_matches$w_1stWon/Nadal_Wimbledon_2015_matches$w_1stIn
Nadal_Wimbledon_2015_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2015_matches$l_1stWon/Nadal_Wimbledon_2015_matches$l_1stIn


Nadal_Wimbledon_2015_matches_condensed <- Nadal_Wimbledon_2015_matches[,!(names(Nadal_Wimbledon_2015_matches) %in% drop)]

#View(Nadal_Wimbledon_2015_matches_condensed)


#Injured in 2016


#2017 matches


all2017matches <- read.csv("tennis_atp-master/atp_matches_2017.csv")


Nadal_winner_2017 <- all2017matches[all2017matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2017)


Nadal_loser_2017 <- all2017matches[all2017matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2017)

Nadal_all_2017_matches <- rbind(Nadal_winner_2017, Nadal_loser_2017)
#View(Nadal_all_2017_matches)



Nadal_Wimbledon_2017_matches <- Nadal_all_2017_matches[Nadal_all_2017_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2017_matches)


Nadal_Wimbledon_2017_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2017_matches$w_1stWon/Nadal_Wimbledon_2017_matches$w_1stIn
Nadal_Wimbledon_2017_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2017_matches$l_1stWon/Nadal_Wimbledon_2017_matches$l_1stIn


Nadal_Wimbledon_2017_matches_condensed <- Nadal_Wimbledon_2017_matches[,!(names(Nadal_Wimbledon_2017_matches) %in% drop)]

#View(Nadal_Wimbledon_2017_matches_condensed)


#2018 matches


all2018matches <- read.csv("tennis_atp-master/atp_matches_2018.csv")


Nadal_winner_2018 <- all2018matches[all2018matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2018)


Nadal_loser_2018 <- all2018matches[all2018matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2018)

Nadal_all_2018_matches <- rbind(Nadal_winner_2018, Nadal_loser_2018)
#View(Nadal_all_2018_matches)



Nadal_Wimbledon_2018_matches <- Nadal_all_2018_matches[Nadal_all_2018_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2018_matches)


Nadal_Wimbledon_2018_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2018_matches$w_1stWon/Nadal_Wimbledon_2018_matches$w_1stIn
Nadal_Wimbledon_2018_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2018_matches$l_1stWon/Nadal_Wimbledon_2018_matches$l_1stIn


Nadal_Wimbledon_2018_matches_condensed <- Nadal_Wimbledon_2018_matches[,!(names(Nadal_Wimbledon_2018_matches) %in% drop)]

#View(Nadal_Wimbledon_2018_matches_condensed)



#2019 matches


all2019matches <- read.csv("tennis_atp-master/atp_matches_2019.csv")


Nadal_winner_2019 <- all2019matches[all2019matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2019)


Nadal_loser_2019 <- all2019matches[all2019matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2019)

Nadal_all_2019_matches <- rbind(Nadal_winner_2019, Nadal_loser_2019)
#View(Nadal_all_2019_matches)



Nadal_Wimbledon_2019_matches <- Nadal_all_2019_matches[Nadal_all_2019_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2019_matches)


Nadal_Wimbledon_2019_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2019_matches$w_1stWon/Nadal_Wimbledon_2019_matches$w_1stIn
Nadal_Wimbledon_2019_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2019_matches$l_1stWon/Nadal_Wimbledon_2019_matches$l_1stIn


Nadal_Wimbledon_2019_matches_condensed <- Nadal_Wimbledon_2019_matches[,!(names(Nadal_Wimbledon_2019_matches) %in% drop)]

#View(Nadal_Wimbledon_2019_matches_condensed)



#2005 matches


all2005matches <- read.csv("tennis_atp-master/atp_matches_2005.csv")


Nadal_winner_2005 <- all2005matches[all2005matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2005)


Nadal_loser_2005 <- all2005matches[all2005matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2005)

Nadal_all_2005_matches <- rbind(Nadal_winner_2005, Nadal_loser_2005)
#View(Nadal_all_2005_matches)



Nadal_Wimbledon_2005_matches <- Nadal_all_2005_matches[Nadal_all_2005_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2005_matches)


Nadal_Wimbledon_2005_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2005_matches$w_1stWon/Nadal_Wimbledon_2005_matches$w_1stIn
Nadal_Wimbledon_2005_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2005_matches$l_1stWon/Nadal_Wimbledon_2005_matches$l_1stIn


Nadal_Wimbledon_2005_matches_condensed <- Nadal_Wimbledon_2005_matches[,!(names(Nadal_Wimbledon_2005_matches) %in% drop)]

#View(Nadal_Wimbledon_2005_matches_condensed)




#2003 matches

all2003matches <- read.csv("tennis_atp-master/atp_matches_2003.csv")


Nadal_winner_2003 <- all2003matches[all2003matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_2003)


Nadal_loser_2003 <- all2003matches[all2003matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_2003)

Nadal_all_2003_matches <- rbind(Nadal_winner_2003, Nadal_loser_2003)
#View(Nadal_all_2003_matches)



Nadal_Wimbledon_2003_matches <- Nadal_all_2003_matches[Nadal_all_2003_matches$tourney_name=="Wimbledon",]
#View(Nadal_Wimbledon_2003_matches)


Nadal_Wimbledon_2003_matches$w_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2003_matches$w_1stWon/Nadal_Wimbledon_2003_matches$w_1stIn
Nadal_Wimbledon_2003_matches$l_1st_serve_percent_won <- 100 * Nadal_Wimbledon_2003_matches$l_1stWon/Nadal_Wimbledon_2003_matches$l_1stIn


Nadal_Wimbledon_2003_matches_condensed <- Nadal_Wimbledon_2003_matches[,!(names(Nadal_Wimbledon_2003_matches) %in% drop)]

#View(Nadal_Wimbledon_2003_matches_condensed)





#2006 plotting draft



library(rlang)
library(ggplot2)

typeof(Nadal_Wimbledon_2006_matches_condensed)


plot(Nadal_Wimbledon_2006_matches_condensed$round)


with(Nadal_Wimbledon_2006_matches_condensed,plot(rounds,
                                                 Nadal_Wimbledon_2006_matches_condensed$l_1st_serve_percent_won,
                                                 main="The Sine Function",
                                                 ylim=c(0,100),
                                                 xlab = "test",
                                                 ylab="Serve percentage"))

rounds <- factor(c(Nadal_Wimbledon_2006_matches_condensed$round))






Nadal_2006_plot_winner <- ggplot(Nadal_Wimbledon_2006_matches_condensed, aes(x=round, 
                    y=w_1st_serve_percent_won,
                    label=winner_name)) + geom_point() + geom_text(hjust=0, vjust=0)  



Nadal_2006_plot_loser <- ggplot(Nadal_Wimbledon_2006_matches_condensed, aes(x=round, 
                    y=l_1st_serve_percent_won, 
                    label=loser_name)) + geom_point() + geom_text(hjust=0, vjust=0) 


Nadal_2006_plot_winner + scale_x_discrete(limits = c("R128", "R64", "R32", "R16", "QF", "SF", "F", "")) + ylim(50,90)


Nadal_2006_plot_loser + scale_x_discrete(limits = c("R128", "R64", "R32", "R16", "QF", "SF", "F", "")) + ylim(50,90)


 aaa <- ggplot(Nadal_Wimbledon_2006_matches_condensed, aes(x=round, 
                                                           y=w_1st_serve_percent_won,
                                                           label=winner_name)) + geom_point() + geom_text(hjust=0, vjust=0)  +
  geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=w_1st_serve_percent_won), color = "blue") + # must include argument label "data"
  geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=l_1st_serve_percent_won, label=loser_name))

 
 
 bbb <- ggplot(Nadal_Wimbledon_2006_matches_condensed, aes(x=round, 
                                                           y=l_1st_serve_percent_won,
                                                           label=loser_name)) + geom_point() + geom_text(hjust=0, vjust=0)  +
   geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=w_1st_serve_percent_won), color = "blue") + # must include argument label "data"
   geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=l_1st_serve_percent_won))
 
 
aaa + scale_x_discrete(limits = c("R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +  ylim(50,90) 

bbb + scale_x_discrete(limits = c("R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +  ylim(50,90) 




visual1$group <- 1
visual2$group <- 2

visual12 <- rbind(visual1, visual2)



aaa + geom_label(aes(round, l_1st_serve_percent_won, label = loser_name)) 
 
bbb + geom_label(aes(round, w_1st_serve_percent_won, label = winner_name))



+ xlim(20, 50) + ylim(60, 85)




ccc <- ggplot(Nadal_Wimbledon_2006_matches_condensed)  +
  geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=w_1st_serve_percent_won), color = "blue") + # must include argument label "data"
  geom_point(data = Nadal_Wimbledon_2006_matches_condensed, aes(x = round, y=l_1st_serve_percent_won))

Nadal_Wimbledon_2006_plot <- ccc + scale_x_discrete(limits = c("", "R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +  
  ylim(50,90) + geom_label(aes(round, l_1st_serve_percent_won, label = loser_name), vjust = 0.10,hjust = -0.05) + 
  geom_label(aes(round, w_1st_serve_percent_won, label = winner_name), hjust = 1.05) + 
  geom_line(aes(round, w_1st_serve_percent_won, group = 1)) + 
  geom_line(aes(round, l_1st_serve_percent_won, group = 1))


Nadal_Wimbledon_2006_plot




#Combining all of Nadal's Wimbledon matches

Nadal_all_Wimbledon_matches <- rbind(Nadal_Wimbledon_2005_matches_condensed, Nadal_Wimbledon_2006_matches_condensed, Nadal_Wimbledon_2007_matches_condensed, 
      Nadal_Wimbledon_2008_matches_condensed, Nadal_Wimbledon_2010_matches_condensed, Nadal_Wimbledon_2011_matches_condensed, 
      Nadal_Wimbledon_2012_matches_condensed, Nadal_Wimbledon_2013_matches_condensed, Nadal_Wimbledon_2014_matches_condensed, 
      Nadal_Wimbledon_2015_matches_condensed, Nadal_Wimbledon_2017_matches_condensed,
      Nadal_Wimbledon_2018_matches_condensed, Nadal_Wimbledon_2019_matches_condensed)


#View(Nadal_all_Wimbledon_matches)





#Plotting all Wimbledon matches


first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = round, y=w_1st_serve_percent_won), color = "blue") + # must include argument label "data"
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = round, y=l_1st_serve_percent_won))

Nadal_Wimbledon_plot <- first_plot + scale_x_discrete(limits = c("", "R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +  
  ylim(50,90) + geom_label(aes(round, l_1st_serve_percent_won, label = substr(tourney_date, 1, 4)), vjust = 0.10,hjust = -0.05) + 
  geom_label(aes(round, w_1st_serve_percent_won, label = winner_name), hjust = 1.05) + 
  geom_line(aes(round, w_1st_serve_percent_won, group = 1)) + 
  geom_line(aes(round, l_1st_serve_percent_won, group = 1))


Nadal_Wimbledon_plot




#Something else


first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=w_1st_serve_percent_won), color = "blue") + # must include argument label "data"
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=l_1st_serve_percent_won))

Nadal_Wimbledon_plot <- first_plot +  
  geom_label(aes(substr(tourney_date, 1, 4), l_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05) + 
  geom_label(aes(round, w_1st_serve_percent_won, label = winner_name), hjust = 1.05) + 
  geom_line(aes(round, w_1st_serve_percent_won, group = 1)) + 
  geom_line(aes(round, l_1st_serve_percent_won, group = 1))


Nadal_Wimbledon_plot

                


#Only winners




first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=w_1st_serve_percent_won), color = "blue") # must include argument label "data"

Nadal_Wimbledon_plot <- first_plot +  
  geom_label(aes(substr(tourney_date, 1, 4), w_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05)


Nadal_Wimbledon_plot




#I have no clue


Nadal_loser_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches[Nadal_all_Wimbledon_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_all_Wimbledon_matches)

Nadal_winner_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches[Nadal_all_Wimbledon_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_all_Wimbledon_matches)


first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = round, y=w_1st_serve_percent_won), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = round, y=l_1st_serve_percent_won), color = "red")  
  

Nadal_Wimbledon_plot <- first_plot + scale_x_discrete(limits = c("", "R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +  
  geom_label(aes(round, w_1st_serve_percent_won, label = substr(tourney_date, 1, 4)), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches, aes(round, l_1st_serve_percent_won, label = substr(tourney_date, 1, 4)), vjust = 0.10,hjust = -0.05) 


#We will use the difference between 1st serve percentage won between the winner
#and loser in all of Nadal's Wimbledon matches

#X axis is Round

Nadal_all_Wimbledon_matches$difference_1st_serve_percent_won <- Nadal_all_Wimbledon_matches$w_1st_serve_percent_won - Nadal_all_Wimbledon_matches$l_1st_serve_percent_won

#View(Nadal_all_Wimbledon_matches)



first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_all_Wimbledon_matches, aes(x = round, y=difference_1st_serve_percent_won), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = round, y=difference_1st_serve_percent_won), color = "red")  


Nadal_Wimbledon_plot <- first_plot + scale_x_discrete(limits = c("", "R128", "R64", "R32", "R16", "QF", "SF", "F", "")) +
  geom_hline(yintercept=0, linetype="dashed", color = "black") + 
  geom_label(aes(round, difference_1st_serve_percent_won, label = substr(tourney_date, 1, 4)), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches, aes(round, difference_1st_serve_percent_won, label = substr(tourney_date, 1, 4)), vjust = 0.10,hjust = -0.05) +
  labs(y= "Difference in first serve % points won", x = "Round") +
  ggtitle("Difference in first serve % points won between Nadal and opponent at Wimbledon per round")

Nadal_Wimbledon_plot


#X-axis is year



Nadal_winner_all_Wimbledon_matches$difference_1st_serve_percent_won <- Nadal_winner_all_Wimbledon_matches$w_1st_serve_percent_won - Nadal_winner_all_Wimbledon_matches$l_1st_serve_percent_won

Nadal_loser_all_Wimbledon_matches$Nadal_minus_winner <- Nadal_loser_all_Wimbledon_matches$l_1st_serve_percent_won - Nadal_loser_all_Wimbledon_matches$w_1st_serve_percent_won




#Original plot
first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_winner_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=difference_1st_serve_percent_won), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=Nadal_minus_winner), color = "red")  


Nadal_Wimbledon_plot <- first_plot +
  geom_hline(yintercept=0, linetype="dashed", color = "black") + 
  geom_label(data = Nadal_winner_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), difference_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), Nadal_minus_winner, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Difference in first serve % points won", x = "Year") +
  ggtitle("Difference in first serve % points won between Nadal and opponent at Wimbledon vs. Year")

Nadal_Wimbledon_plot



#2006 to 2011 plot




first_plot <- ggplot(Nadal_all_Wimbledon_matches)+
  geom_point(data = Nadal_winner_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=difference_1st_serve_percent_won), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=Nadal_minus_winner), color = "red")

  



Early_Nadal_Wimbledon_plot <- first_plot + scale_x_discrete(limits = c("2006", "2007", "2008", "2010", "2011")) +
  geom_hline(yintercept=0, linetype="dashed", color = "black") + 
  geom_label(data = Nadal_winner_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), difference_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), Nadal_minus_winner, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Difference in first serve % points won", x = "Year") +
  ggtitle("Difference in first serve % points won between Nadal and opponent at Wimbledon vs. Year") +
  geom_smooth(data=Nadal_all_Wimbledon_matches, formula=y~x, method=lm, se = FALSE,
              aes(x = substr(tourney_date, 1, 4), y = difference_1st_serve_percent_won, group=1))

Early_Nadal_Wimbledon_plot




#Getting the averages

#View(Nadal_Wimbledon_2006_matches_condensed)


Nadal_winner_Wimbledon_2005 <- Nadal_Wimbledon_2005_matches_condensed[Nadal_Wimbledon_2005_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2005)

Nadal_loser_Wimbledon_2005 <- Nadal_Wimbledon_2005_matches_condensed[Nadal_Wimbledon_2005_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2005)

point_2005 <- (sum(Nadal_winner_Wimbledon_2005$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2005$l_1st_serve_percent_won)) + 
sum(Nadal_loser_Wimbledon_2005$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2005$w_1st_serve_percent_won)))/2



Nadal_winner_Wimbledon_2006 <- Nadal_Wimbledon_2006_matches_condensed[Nadal_Wimbledon_2006_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2006)

Nadal_loser_Wimbledon_2006 <- Nadal_Wimbledon_2006_matches_condensed[Nadal_Wimbledon_2006_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2006)

point_2006 <- (sum(Nadal_winner_Wimbledon_2006$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2006$l_1st_serve_percent_won)) + 
sum(Nadal_loser_Wimbledon_2006$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2006$w_1st_serve_percent_won)))/7



Nadal_winner_Wimbledon_2007 <- Nadal_Wimbledon_2007_matches_condensed[Nadal_Wimbledon_2007_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2007)

Nadal_loser_Wimbledon_2007 <- Nadal_Wimbledon_2007_matches_condensed[Nadal_Wimbledon_2007_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2007)

point_2007 <- (sum(Nadal_winner_Wimbledon_2007$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2007$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2007$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2007$w_1st_serve_percent_won)))/7


Nadal_winner_Wimbledon_2008 <- Nadal_Wimbledon_2008_matches_condensed[Nadal_Wimbledon_2008_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2008)

Nadal_loser_Wimbledon_2008 <- Nadal_Wimbledon_2008_matches_condensed[Nadal_Wimbledon_2008_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2008)

point_2008 <- (sum(Nadal_winner_Wimbledon_2008$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2008$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2008$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2008$w_1st_serve_percent_won)))/7


Nadal_winner_Wimbledon_2010 <- Nadal_Wimbledon_2010_matches_condensed[Nadal_Wimbledon_2010_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2010)

Nadal_loser_Wimbledon_2010 <- Nadal_Wimbledon_2010_matches_condensed[Nadal_Wimbledon_2010_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2010)

point_2010 <- (sum(Nadal_winner_Wimbledon_2010$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2010$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2010$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2010$w_1st_serve_percent_won)))/7



Nadal_winner_Wimbledon_2011 <- Nadal_Wimbledon_2011_matches_condensed[Nadal_Wimbledon_2011_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2011)

Nadal_loser_Wimbledon_2011 <- Nadal_Wimbledon_2011_matches_condensed[Nadal_Wimbledon_2011_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2011)

point_2011 <- (sum(Nadal_winner_Wimbledon_2011$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2011$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2011$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2011$w_1st_serve_percent_won)))/7



Nadal_winner_Wimbledon_2012 <- Nadal_Wimbledon_2012_matches_condensed[Nadal_Wimbledon_2012_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2012)

Nadal_loser_Wimbledon_2012 <- Nadal_Wimbledon_2012_matches_condensed[Nadal_Wimbledon_2012_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2012)

point_2012 <- (sum(Nadal_winner_Wimbledon_2012$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2012$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2012$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2012$w_1st_serve_percent_won)))/2



Nadal_winner_Wimbledon_2013 <- Nadal_Wimbledon_2013_matches_condensed[Nadal_Wimbledon_2013_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2013)

Nadal_loser_Wimbledon_2013 <- Nadal_Wimbledon_2013_matches_condensed[Nadal_Wimbledon_2013_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2013)

point_2013 <- (sum(Nadal_winner_Wimbledon_2013$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2013$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2013$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2013$w_1st_serve_percent_won)))/1



Nadal_winner_Wimbledon_2014 <- Nadal_Wimbledon_2014_matches_condensed[Nadal_Wimbledon_2014_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2014)

Nadal_loser_Wimbledon_2014 <- Nadal_Wimbledon_2014_matches_condensed[Nadal_Wimbledon_2014_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2014)

point_2014 <- (sum(Nadal_winner_Wimbledon_2014$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2014$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2014$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2014$w_1st_serve_percent_won)))/4



Nadal_winner_Wimbledon_2015 <- Nadal_Wimbledon_2015_matches_condensed[Nadal_Wimbledon_2015_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2015)

Nadal_loser_Wimbledon_2015 <- Nadal_Wimbledon_2015_matches_condensed[Nadal_Wimbledon_2015_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2015)

point_2015 <- (sum(Nadal_winner_Wimbledon_2015$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2015$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2015$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2015$w_1st_serve_percent_won)))/2


Nadal_winner_Wimbledon_2017 <- Nadal_Wimbledon_2017_matches_condensed[Nadal_Wimbledon_2017_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2017)

Nadal_loser_Wimbledon_2017 <- Nadal_Wimbledon_2017_matches_condensed[Nadal_Wimbledon_2017_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2017)

point_2017 <- (sum(Nadal_winner_Wimbledon_2017$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2017$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2017$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2017$w_1st_serve_percent_won)))/4





Nadal_winner_Wimbledon_2018 <- Nadal_Wimbledon_2018_matches_condensed[Nadal_Wimbledon_2018_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2018)

Nadal_loser_Wimbledon_2018 <- Nadal_Wimbledon_2018_matches_condensed[Nadal_Wimbledon_2018_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2018)

point_2018 <- (sum(Nadal_winner_Wimbledon_2018$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2018$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2018$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2018$w_1st_serve_percent_won)))/6



Nadal_winner_Wimbledon_2019 <- Nadal_Wimbledon_2019_matches_condensed[Nadal_Wimbledon_2019_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2019)

Nadal_loser_Wimbledon_2019 <- Nadal_Wimbledon_2019_matches_condensed[Nadal_Wimbledon_2019_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2019)

point_2019 <- (sum(Nadal_winner_Wimbledon_2019$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2019$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2019$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2019$w_1st_serve_percent_won)))/6





Nadal_winner_Wimbledon_2003 <- Nadal_Wimbledon_2003_matches_condensed[Nadal_Wimbledon_2003_matches_condensed$winner_name=="Rafael Nadal",]
#View(Nadal_winner_Wimbledon_2003)

Nadal_loser_Wimbledon_2003 <- Nadal_Wimbledon_2003_matches_condensed[Nadal_Wimbledon_2003_matches_condensed$loser_name=="Rafael Nadal",]
#View(Nadal_loser_Wimbledon_2003)

point_2003 <- (sum(Nadal_winner_Wimbledon_2003$w_1st_serve_percent_won) - sum((Nadal_winner_Wimbledon_2003$l_1st_serve_percent_won)) + 
                 sum(Nadal_loser_Wimbledon_2003$l_1st_serve_percent_won) - sum((Nadal_loser_Wimbledon_2003$w_1st_serve_percent_won)))/3











#Original plot with averages

first_plot <- ggplot(Nadal_all_Wimbledon_matches)  +
  geom_point(data = Nadal_winner_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=difference_1st_serve_percent_won, color = "blue"), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=Nadal_minus_winner, color = "red")) + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches, aes(x = substr(tourney_date, 1, 4), y=Nadal_minus_winner), color = "red")





years <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13) 
averages <- c(point_2005, point_2006, point_2007, point_2008, point_2010, point_2011, point_2012, point_2013, point_2014, 
              point_2015, point_2017, point_2018, point_2019)

average_over_years_df <- data.frame(years, averages)


Nadal_Wimbledon_plot <- first_plot +
  geom_hline(yintercept=0, linetype="dashed", color = "black") + 
  geom_label(data = Nadal_winner_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), difference_1st_serve_percent_won, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches, aes(substr(tourney_date, 1, 4), Nadal_minus_winner, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Difference in first serve % points won", x = "Year") +
  ggtitle("Difference in first serve % points won between Nadal and opponent at Wimbledon vs. Year") 

Nadal_Wimbledon_plot_with_averages <- Nadal_Wimbledon_plot +
  geom_point(aes(x = 1,
                 y = point_2005),
             col = "green") +
  geom_point(aes(x = 2,
                 y = point_2006),
             col = "green") + 
  geom_point(aes(x = 3,
                 y = point_2007),
             col = "green") +
  geom_point(aes(x = 4,
                 y = point_2008),
             col = "green") + 
  geom_point(aes(x = 5,
                 y = point_2010),
             col = "green") +
  geom_point(aes(x = 6,
                 y = point_2011),
             col = "green") + 
  geom_point(aes(x = 7,
                 y = point_2012),
             col = "green") +
  geom_point(aes(x = 8,
                 y = point_2013),
             col = "green") + 
  geom_point(aes(x = 9,
                 y = point_2014),
             col = "green") +
  geom_point(aes(x = 10,
                 y = point_2015),
             col = "green") +
  geom_point(aes(x = 11,
                 y = point_2017),
             col = "green") + 
  geom_point(aes(x = 12,
                 y = point_2018),
             col = "green") +
  geom_point(aes(x = 13,
                 y = point_2019),
             col = "green") +
  geom_line(data = average_over_years_df, aes(years, averages)) + 
  scale_colour_manual(name = "Legend", values = c("Nadal lost" = "red", "Nadal won" = "blue", "Average of difference in first serve % \npoints won for the year" = "green")) +
  scale_y_continuous(breaks=seq(-10,50,10)) +
  theme(legend.position = c(0.62, 0.87))
  

Nadal_Wimbledon_plot_with_averages


Nadal_all_Wimbledon_matches$difference_1st_serve_percent_won <- Nadal_all_Wimbledon_matches$w_1st_serve_percent_won - Nadal_all_Wimbledon_matches$l_1st_serve_percent_won
#View(Nadal_all_Wimbledon_matches)


Nadal_winner_all_Wimbledon_matches$difference_1st_serve_percent_won <- Nadal_winner_all_Wimbledon_matches$w_1st_serve_percent_won - Nadal_winner_all_Wimbledon_matches$l_1st_serve_percent_won

Nadal_loser_all_Wimbledon_matches$Nadal_minus_winner <- Nadal_loser_all_Wimbledon_matches$l_1st_serve_percent_won - Nadal_loser_all_Wimbledon_matches$w_1st_serve_percent_won




Nadal_all_Wimbledon_matches <- rbind(Nadal_Wimbledon_2005_matches_condensed, Nadal_Wimbledon_2006_matches_condensed, Nadal_Wimbledon_2007_matches_condensed, 
                                     Nadal_Wimbledon_2008_matches_condensed, Nadal_Wimbledon_2010_matches_condensed, Nadal_Wimbledon_2011_matches_condensed, 
                                     Nadal_Wimbledon_2012_matches_condensed, Nadal_Wimbledon_2013_matches_condensed, Nadal_Wimbledon_2014_matches_condensed, 
                                     Nadal_Wimbledon_2015_matches_condensed, Nadal_Wimbledon_2017_matches_condensed,
                                     Nadal_Wimbledon_2018_matches_condensed, Nadal_Wimbledon_2019_matches_condensed)



Nadal_loser_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches[Nadal_all_Wimbledon_matches$loser_name=="Rafael Nadal",]
#View(Nadal_loser_all_Wimbledon_matches)

Nadal_winner_all_Wimbledon_matches <- Nadal_all_Wimbledon_matches[Nadal_all_Wimbledon_matches$winner_name=="Rafael Nadal",]
#View(Nadal_winner_all_Wimbledon_matches)




















###################



Nadal_winner_all_Wimbledon_matches_with2003$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_all_Wimbledon_matches_with2003$l_1stWon + Nadal_winner_all_Wimbledon_matches_with2003$l_2ndWon)
                                                                      /Nadal_winner_all_Wimbledon_matches_with2003$l_svpt)/ (1-(Nadal_winner_all_Wimbledon_matches_with2003$w_1stWon + 
                                                                                                                                  Nadal_winner_all_Wimbledon_matches_with2003$w_2ndWon)/
                                                                                                                               (Nadal_winner_all_Wimbledon_matches_with2003$w_svpt)) 

Nadal_loser_all_Wimbledon_matches_with2003$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_all_Wimbledon_matches_with2003$w_1stWon + Nadal_loser_all_Wimbledon_matches_with2003$w_2ndWon)
                                                                      /Nadal_loser_all_Wimbledon_matches_with2003$w_svpt)/ (1-(Nadal_loser_all_Wimbledon_matches_with2003$l_1stWon + 
                                                                                                                                 Nadal_loser_all_Wimbledon_matches_with2003$l_2ndWon)/
                                                                                                                              (Nadal_loser_all_Wimbledon_matches_with2003$l_svpt))
#####################










Nadal_winner_all_Wimbledon_matches$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_all_Wimbledon_matches$l_1stWon + Nadal_winner_all_Wimbledon_matches$l_2ndWon)
                                                               /Nadal_winner_all_Wimbledon_matches$l_svpt)/ (1-(Nadal_winner_all_Wimbledon_matches$w_1stWon + 
                                                                                                                  Nadal_winner_all_Wimbledon_matches$w_2ndWon)/
                                                                                                               (Nadal_winner_all_Wimbledon_matches$w_svpt)) 

Nadal_loser_all_Wimbledon_matches$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_all_Wimbledon_matches$w_1stWon + Nadal_loser_all_Wimbledon_matches$w_2ndWon)
                                                               /Nadal_loser_all_Wimbledon_matches$w_svpt)/ (1-(Nadal_loser_all_Wimbledon_matches$l_1stWon + 
                                                                                                                  Nadal_loser_all_Wimbledon_matches$l_2ndWon)/
                                                                                                               (Nadal_loser_all_Wimbledon_matches$l_svpt))

Nadal_basic_dominance_plot <- ggplot(Nadal_all_Wimbledon_matches_with2003)  +
  geom_point(data = Nadal_winner_all_Wimbledon_matches_with2003, aes(x = substr(tourney_date, 1, 4), y=w_Nadal_dominance_ratio, color = "blue"), color = "blue") + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(x = substr(tourney_date, 1, 4), y=l_Nadal_dominance_ratio, color = "red")) + 
  geom_point(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(x = substr(tourney_date, 1, 4), y=l_Nadal_dominance_ratio), color = "red")


Nadal_dominance_plot <- Nadal_basic_dominance_plot +
  geom_hline(yintercept=1.0, linetype="dashed", color = "black") + 
  geom_label(data = Nadal_winner_all_Wimbledon_matches_with2003, aes(substr(tourney_date, 1, 4), w_Nadal_dominance_ratio, label = round), vjust = 0.10,hjust = -0.05) +
  geom_label(data = Nadal_loser_all_Wimbledon_matches_with2003, aes(substr(tourney_date, 1, 4), l_Nadal_dominance_ratio, label = round), vjust = 0.10,hjust = -0.05) +
  labs(y= "Dominance Ratio", x = "Year") +
  ggtitle("Nadal's dominance ratio at Wimbledon vs. Year")

#/1- (l_1st_Won + l_2nd_Won)/(l_svpt)/1- (w_1st_Won + w_2nd_Won)/(w_svpt)



Nadal_winner_Wimbledon_2005$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2005$l_1stWon + Nadal_winner_Wimbledon_2005$l_2ndWon)
                                                               /Nadal_winner_Wimbledon_2005$l_svpt)/ (1-(Nadal_winner_Wimbledon_2005$w_1stWon + 
                                                                                                           Nadal_winner_Wimbledon_2005$w_2ndWon)/
                                                                                                               (Nadal_winner_Wimbledon_2005$w_svpt))

Nadal_loser_Wimbledon_2005$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2005$w_1stWon + Nadal_loser_Wimbledon_2005$w_2ndWon)
                                                               /Nadal_loser_Wimbledon_2005$w_svpt)/ (1-(Nadal_loser_Wimbledon_2005$l_1stWon + 
                                                                                                          Nadal_loser_Wimbledon_2005$l_2ndWon)/
                                                                                                              (Nadal_loser_Wimbledon_2005$l_svpt))

Nadal_dominance_average_point_2005 <- (sum(Nadal_winner_Wimbledon_2005$w_Nadal_dominance_ratio) + 
                 sum(Nadal_loser_Wimbledon_2005$l_Nadal_dominance_ratio))/2


####

Nadal_winner_Wimbledon_2006$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2006$l_1stWon + Nadal_winner_Wimbledon_2006$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2006$l_svpt)/ (1-(Nadal_winner_Wimbledon_2006$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2006$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2006$w_svpt))

Nadal_loser_Wimbledon_2006$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2006$w_1stWon + Nadal_loser_Wimbledon_2006$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2006$w_svpt)/ (1-(Nadal_loser_Wimbledon_2006$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2006$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2006$l_svpt))

Nadal_dominance_average_point_2006 <- (sum(Nadal_winner_Wimbledon_2006$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2006$l_Nadal_dominance_ratio))/7

####

Nadal_winner_Wimbledon_2007$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2007$l_1stWon + Nadal_winner_Wimbledon_2007$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2007$l_svpt)/ (1-(Nadal_winner_Wimbledon_2007$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2007$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2007$w_svpt))

Nadal_loser_Wimbledon_2007$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2007$w_1stWon + Nadal_loser_Wimbledon_2007$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2007$w_svpt)/ (1-(Nadal_loser_Wimbledon_2007$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2007$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2007$l_svpt))

Nadal_dominance_average_point_2007 <- (sum(Nadal_winner_Wimbledon_2007$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2007$l_Nadal_dominance_ratio))/7

####

Nadal_winner_Wimbledon_2008$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2008$l_1stWon + Nadal_winner_Wimbledon_2008$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2008$l_svpt)/ (1-(Nadal_winner_Wimbledon_2008$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2008$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2008$w_svpt))

Nadal_loser_Wimbledon_2008$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2008$w_1stWon + Nadal_loser_Wimbledon_2008$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2008$w_svpt)/ (1-(Nadal_loser_Wimbledon_2008$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2008$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2008$l_svpt))

Nadal_dominance_average_point_2008 <- (sum(Nadal_winner_Wimbledon_2008$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2008$l_Nadal_dominance_ratio))/7
####

Nadal_winner_Wimbledon_2010$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2010$l_1stWon + Nadal_winner_Wimbledon_2010$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2010$l_svpt)/ (1-(Nadal_winner_Wimbledon_2010$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2010$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2010$w_svpt))

Nadal_loser_Wimbledon_2010$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2010$w_1stWon + Nadal_loser_Wimbledon_2010$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2010$w_svpt)/ (1-(Nadal_loser_Wimbledon_2010$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2010$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2010$l_svpt))

Nadal_dominance_average_point_2010 <- (sum(Nadal_winner_Wimbledon_2010$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2010$l_Nadal_dominance_ratio))/7
####

Nadal_winner_Wimbledon_2011$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2011$l_1stWon + Nadal_winner_Wimbledon_2011$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2011$l_svpt)/ (1-(Nadal_winner_Wimbledon_2011$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2011$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2011$w_svpt))

Nadal_loser_Wimbledon_2011$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2011$w_1stWon + Nadal_loser_Wimbledon_2011$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2011$w_svpt)/ (1-(Nadal_loser_Wimbledon_2011$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2011$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2011$l_svpt))

Nadal_dominance_average_point_2011 <- (sum(Nadal_winner_Wimbledon_2011$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2011$l_Nadal_dominance_ratio))/7
####

Nadal_winner_Wimbledon_2012$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2012$l_1stWon + Nadal_winner_Wimbledon_2012$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2012$l_svpt)/ (1-(Nadal_winner_Wimbledon_2012$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2012$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2012$w_svpt))

Nadal_loser_Wimbledon_2012$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2012$w_1stWon + Nadal_loser_Wimbledon_2012$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2012$w_svpt)/ (1-(Nadal_loser_Wimbledon_2012$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2012$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2012$l_svpt))

Nadal_dominance_average_point_2012 <- (sum(Nadal_winner_Wimbledon_2012$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2012$l_Nadal_dominance_ratio))/2
####

Nadal_winner_Wimbledon_2013$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2013$l_1stWon + Nadal_winner_Wimbledon_2013$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2013$l_svpt)/ (1-(Nadal_winner_Wimbledon_2013$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2013$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2013$w_svpt))

Nadal_loser_Wimbledon_2013$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2013$w_1stWon + Nadal_loser_Wimbledon_2013$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2013$w_svpt)/ (1-(Nadal_loser_Wimbledon_2013$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2013$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2013$l_svpt))

Nadal_dominance_average_point_2013 <- (sum(Nadal_winner_Wimbledon_2013$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2013$l_Nadal_dominance_ratio))/1
####

Nadal_winner_Wimbledon_2014$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2014$l_1stWon + Nadal_winner_Wimbledon_2014$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2014$l_svpt)/ (1-(Nadal_winner_Wimbledon_2014$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2014$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2014$w_svpt))

Nadal_loser_Wimbledon_2014$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2014$w_1stWon + Nadal_loser_Wimbledon_2014$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2014$w_svpt)/ (1-(Nadal_loser_Wimbledon_2014$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2014$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2014$l_svpt))

Nadal_dominance_average_point_2014 <- (sum(Nadal_winner_Wimbledon_2014$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2014$l_Nadal_dominance_ratio))/4

####

Nadal_winner_Wimbledon_2015$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2015$l_1stWon + Nadal_winner_Wimbledon_2015$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2015$l_svpt)/ (1-(Nadal_winner_Wimbledon_2015$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2015$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2015$w_svpt))

Nadal_loser_Wimbledon_2015$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2015$w_1stWon + Nadal_loser_Wimbledon_2015$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2015$w_svpt)/ (1-(Nadal_loser_Wimbledon_2015$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2015$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2015$l_svpt))

Nadal_dominance_average_point_2015 <- (sum(Nadal_winner_Wimbledon_2015$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2015$l_Nadal_dominance_ratio))/2

####

Nadal_winner_Wimbledon_2017$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2017$l_1stWon + Nadal_winner_Wimbledon_2017$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2017$l_svpt)/ (1-(Nadal_winner_Wimbledon_2017$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2017$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2017$w_svpt))

Nadal_loser_Wimbledon_2017$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2017$w_1stWon + Nadal_loser_Wimbledon_2017$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2017$w_svpt)/ (1-(Nadal_loser_Wimbledon_2017$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2017$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2017$l_svpt))

Nadal_dominance_average_point_2017 <- (sum(Nadal_winner_Wimbledon_2017$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2017$l_Nadal_dominance_ratio))/4

####

Nadal_winner_Wimbledon_2018$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2018$l_1stWon + Nadal_winner_Wimbledon_2018$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2018$l_svpt)/ (1-(Nadal_winner_Wimbledon_2018$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2018$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2018$w_svpt))

Nadal_loser_Wimbledon_2018$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2018$w_1stWon + Nadal_loser_Wimbledon_2018$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2018$w_svpt)/ (1-(Nadal_loser_Wimbledon_2018$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2018$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2018$l_svpt))

Nadal_dominance_average_point_2018 <- (sum(Nadal_winner_Wimbledon_2018$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2018$l_Nadal_dominance_ratio))/6

####

Nadal_winner_Wimbledon_2019$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2019$l_1stWon + Nadal_winner_Wimbledon_2019$l_2ndWon)
                                                        /Nadal_winner_Wimbledon_2019$l_svpt)/ (1-(Nadal_winner_Wimbledon_2019$w_1stWon + 
                                                                                                    Nadal_winner_Wimbledon_2019$w_2ndWon)/
                                                                                                 (Nadal_winner_Wimbledon_2019$w_svpt))

Nadal_loser_Wimbledon_2019$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2019$w_1stWon + Nadal_loser_Wimbledon_2019$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2019$w_svpt)/ (1-(Nadal_loser_Wimbledon_2019$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2019$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2019$l_svpt))

Nadal_dominance_average_point_2019 <- (sum(Nadal_winner_Wimbledon_2019$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2019$l_Nadal_dominance_ratio))/6


####


Nadal_winner_Wimbledon_2003$w_Nadal_dominance_ratio <- (1 -(Nadal_winner_Wimbledon_2003$l_1stWon + Nadal_winner_Wimbledon_2003$l_2ndWon)
                                                       /Nadal_winner_Wimbledon_2003$l_svpt)/ (1-(Nadal_winner_Wimbledon_2003$w_1stWon + 
                                                                                                   Nadal_winner_Wimbledon_2003$w_2ndWon)/
                                                                                                (Nadal_winner_Wimbledon_2003$w_svpt))

Nadal_loser_Wimbledon_2003$l_Nadal_dominance_ratio  <- (1 -(Nadal_loser_Wimbledon_2003$w_1stWon + Nadal_loser_Wimbledon_2003$w_2ndWon)
                                                        /Nadal_loser_Wimbledon_2003$w_svpt)/ (1-(Nadal_loser_Wimbledon_2003$l_1stWon + 
                                                                                                   Nadal_loser_Wimbledon_2003$l_2ndWon)/
                                                                                                (Nadal_loser_Wimbledon_2003$l_svpt))

Nadal_dominance_average_point_2003 <- (sum(Nadal_winner_Wimbledon_2003$w_Nadal_dominance_ratio) + 
                                         sum(Nadal_loser_Wimbledon_2003$l_Nadal_dominance_ratio))/3





years <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14) 
Nadal_dominance_averages <- c(Nadal_dominance_average_point_2003, Nadal_dominance_average_point_2005, Nadal_dominance_average_point_2006, Nadal_dominance_average_point_2007, 
                              Nadal_dominance_average_point_2008, Nadal_dominance_average_point_2010, Nadal_dominance_average_point_2011, 
                              Nadal_dominance_average_point_2012, Nadal_dominance_average_point_2013, Nadal_dominance_average_point_2014, 
                              Nadal_dominance_average_point_2015, Nadal_dominance_average_point_2017, Nadal_dominance_average_point_2018, 
                              Nadal_dominance_average_point_2019)

Nadal_dominance_average_over_years_df <- data.frame(years, Nadal_dominance_averages)

sum(Nadal_dominance_average_over_years_df$Nadal_dominance_averages)/14



Nadal_dominance_plot_with_averages <- Nadal_dominance_plot +
  geom_point(aes(x = 1,
                 y = Nadal_dominance_average_point_2003),
             col = "green") +
  geom_point(aes(x = 2,
                 y = Nadal_dominance_average_point_2005),
             col = "green") +
  geom_point(aes(x = 3,
                 y = Nadal_dominance_average_point_2006),
             col = "green") + 
  geom_point(aes(x = 4,
                 y = Nadal_dominance_average_point_2007),
             col = "green") +
  geom_point(aes(x = 5,
                 y = Nadal_dominance_average_point_2008),
             col = "green") + 
  geom_point(aes(x = 6,
                 y = Nadal_dominance_average_point_2010),
             col = "green") +
  geom_point(aes(x = 7,
                 y = Nadal_dominance_average_point_2011),
             col = "green") + 
  geom_point(aes(x = 8,
                 y = Nadal_dominance_average_point_2012),
             col = "green") +
  geom_point(aes(x = 9,
                 y = Nadal_dominance_average_point_2013),
             col = "green") + 
  geom_point(aes(x = 10,
                 y = Nadal_dominance_average_point_2014),
             col = "green") +
  geom_point(aes(x = 11,
                 y = Nadal_dominance_average_point_2015),
             col = "green") +
  geom_point(aes(x = 12,
                 y = Nadal_dominance_average_point_2017),
             col = "green") + 
  geom_point(aes(x = 13,
                 y = Nadal_dominance_average_point_2018),
             col = "green") +
  geom_point(aes(x = 14,
                 y = Nadal_dominance_average_point_2019),
             col = "green") +
  geom_line(data = Nadal_dominance_average_over_years_df, aes(years, Nadal_dominance_averages)) + 
  scale_colour_manual(name = "Legend", values = c("Nadal lost" = "red", "Nadal won" = "blue", "Nadal's average dominance ratio for the year" = "green")) +
  scale_y_continuous(breaks=(seq(0, 4, 0.5)), limits = c(0.5, 3.1))+
  theme(legend.position = c(0.62, 0.87))


Nadal_dominance_plot_with_averages

