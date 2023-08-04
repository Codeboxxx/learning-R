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

#selection vector to know winnings. the result are days showing boolean values of winnings
selection_vector <- poker_vector > 0
selection_vector

#selection vector to show days with amount won by subsetting the selection vector
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

selection_vector_roulette <- roulette_vector > 0
selection_vector_roulette

roulette_winning_days <- roulette_vector[selection_vector_roulette]
roulette_winning_days
#useful to select a vector based on meeting certain conditions


#matrix
matrix(1:27, nrow = 9, byrow = FALSE)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_office <- c(new_hope, empire_strikes, return_jedi)
box_office

#constructing a matrix with the movies
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)
star_wars_matrix

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

#naming the rows and columns of the matrix
rownames(star_wars_matrix) <- titles <- c("A New Hope",
  "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix) <- region <- c("US", "non-US")

star_wars_matrix

#arithmetic on matrix summing the rows
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

#adding columns to matrices using the cbind function
all_wars_matric <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matric

# construct the second matrix of movies
Phantom_Menace <- c(474.5, 552.5)
Attack_of_the_Clones <- c(310.7, 338.7)
Revenge_of_the_Sith <- c(380.3, 468.5)

# Create box_office2
box_office2 <- c(Phantom_Menace, Attack_of_the_Clones, Revenge_of_the_Sith)

# Construct star_wars_matrix2
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE)
star_wars_matrix2


# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

# Name the columns with region
colnames(star_wars_matrix2) <- region

# Name the rows with titles
rownames(star_wars_matrix2) <- titles

star_wars_matrix2

#using rbind to combine starwarsmatrix1 and starwarsmatrix2 
all_wars_matric <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matric

#summing the matrices
total_revenue_vector <- colSums(all_wars_matric)
total_revenue_vector


#selection of matrix elements
#selecting matrices are 2 dimensional and separated by a comma ","
#everything on the left before the comma belongs to the rows
#everything on the right after the comma belongs to the columns



