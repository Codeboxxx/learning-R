#creating vectors 
roulette_vector <- c(-24, -50, 100, -350, 10)
poker_vector <- c(140, -50, 20, -120, 240)

roulette_vector

#naming vectors
names(roulette_vector) <- c("MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY")
names(poker_vector) <- c("MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY")

roulette_vector
poker_vector

#another way...create a days vector and assign it to the names vector to avoid typing all the time
days_vector <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
#now assign days_vector to the names vector for the previously created vectors
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

#print out the vectors
poker_vector

#arithmetic with vectors
#calculating wins and losses on each day
total_daily <- poker_vector + roulette_vector
total_daily

#total win/loss for each game
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

#total week win/loss 
total_week <- sum(total_daily)
total_week

#selection of elements in a vector
poker_midweek <- poker_vector[2:4]
poker_midweek

#another way
poker_midweek2 <- poker_vector[c(2,3,4)]

roulette_selection_vector <- roulette_vector[2:5]

#selection of elements in a vector by name
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]
poker_start

#calculate the mean of the selected vectors
mean(poker_start)

#selection vector to know winnings
selection_vector <- poker_vector > 0

#selection vector to show days with amount won
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

selection_vector_roulette <- roulette_vector > 0
selection_vector_roulette

roulette_winning_days <- roulette_vector[selection_vector_roulette]
roulette_winning_days





