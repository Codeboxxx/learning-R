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
