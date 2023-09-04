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
total_poker
total_roulette

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

all_wars_matric
#selecting all the data in the non us category and daving them to non us
non_us_all <- all_wars_matric[,2]
non_us_all

#using mean() to calculate the average on non us all
mean(non_us_all)

#selecting the 1 and 2nd data from the non us column in the all wars matric
#taking the data in the 1st and 2nd row and 2nd column
non_us_some <- all_wars_matric[1:2,2]
non_us_some

#calculate the mean
mean(non_us_some)

#arithmetic in matrices 
#knowing the number of visitors in the all wars matrix
#ticket is $5 
all_wars_matric
visitors <- all_wars_matric / 5
visitors

# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)

movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")

col_titles <- c("US","non-US")

star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
star_wars_matrix

ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 
ticket_prices_matrix

#calculate the average number of us and non us visitors in star wars matrix using the ticket prices matrix
#calculate the average us visitors 
USrevenue <- star_wars_matrix[1:3,1]
USticketprices <- ticket_prices_matrix[1:3,1]
USrevenue
USticketprices

USvisitors <- USrevenue / USticketprices
USvisitors
averageUSvisitors <- mean(USvisitors)
averageUSvisitors

#for average non us visitors
nonUSrevenue <- star_wars_matrix[1:3,2]
NONUSticketprices <- ticket_prices_matrix[1:3,2]

averageNONUSvisitors <- mean(nonUSrevenue/NONUSticketprices)
averageNONUSvisitors

#another way
visitors2 <- star_wars_matrix/ticket_prices_matrix
visitors2

average_us_visitors <- mean(visitors2[,1])
average_nonus_visitors <- mean(visitors2[,2])
average_us_visitors
average_nonus_visitors

#factors
#storing categorical variables using factor() function
#male, female,male,male etc there are only two factors levels here or categories that is male and female

gender_vector <- c("male", "female", "male", "male", "female")
#factor function encodes the vector into 2 factors and their levels
factor_gender_vector <- factor(gender_vector)
factor_gender_vector

#ordinal variable has natural ordering, nominal variable has no implied order
#you may want to change the name of factors sometimes using the function levels() to may be change the name to imply an order
#by default R orders levels alphabetically
#to change name of the vector as well, we use the C() and assign the names in the ("") and assign it to the level vector output and print

survey_vector <- c("M", "F", "F", "M", "M")
#convert the vector into a factor vector
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

#to change level names
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

#creating a factor vector for the survey called factor_survey_vector_inv
#and then changing the level names in order of Male and Female
factor_survey_vector_inv <- factor(survey_vector)
levels(factor_survey_vector_inv) <- c("Male", "Female")
factor_survey_vector_inv

survey_vector

#summarizing factors using the summary() function
#summarizing factorized vectors make more sense in analysis than non factorized vectors
#printing out survey_vector and the factor_survey_vector to see the difference and which is more useful

summary(survey_vector)
summary(factor_survey_vector)

#ordered factors using the function Factor() with additional arguments Ordered=TRUE and Levels
#this is mostly used for ordinal variables and orders the vector according to the level
#levels= c("level1", "level2"...)

speed_vector <- c("fast", "slow", "slow", "fast", "very fast")
speed_vector
#to factor the vector
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow","fast","very fast"))
factor_speed_vector
#to check the summary of the factored speed vector
summary(factor_speed_vector)
#now we can compare the elements in the factored speed vector because they are ordered now
compare_them <- factor_speed_vector[2]>factor_speed_vector[5]
compare_them

#DATA FRAMES
#head() and tail() helps to view top and bottom of the data
#str() helps gives you an overview of the entire data 
#creating data frames with the data.frame() function

planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planet_df <- data.frame(planets,type,diameter,rotation,rings)
planet_df
#to observe the first 5 observations of the data frame
head(planet_df,5)
#observe the structure with the str() function 
str(planet_df)

#selection of data frame elements using the [] brackets
#my_df[1:3,2:4] selects rows 1 to 3 and columns 2 to 4
#my_df[1,] selects all the elements of the first row
#from planets data frame, select the diameter of mercury 
planet_df[1,3]

#select all data on Mars
planet_df[4,]

#we can also use column names to select columns instead of their indices
#To select the diameter of all the planets. Remember the ("")
planet_df[1:5, "diameter"]

#we can use the 3 other ways to select all elements in the diameter column of the planets 
planet_df[,3]
planet_df[, "diameter"]
planet_df$diameter

planet_df

#conditional selections
#selecting all rows that have Rings column = to TRUE
planet_df[rings==TRUE,]

#another way to do this by using subset function
subset(planet_df, subset = rings)
#or
subset(planet_df, subset = rings==TRUE)

#subset to select planets that have diameters less than 1
planet_df
subset(planet_df, subset = diameter < 1)

#sorting a data frame
#we can check the order elements of a data set by using the Order() function
#we can also trick R to order the elements for us by using the order() function in a command statement
a <- c(100, 10, 1000)
order(a)
#to trick R to sort out the elements for you 
a[order(a)]

#to arrange the planets diameter in decreasing order
#and then show the arranged order in the data frame 
positions <- order(planet_df$diameter, decreasing = TRUE)
positions
#now we subset the data frame with the new variable
planet_df[positions,]

#lists
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]