number <- 5 + 2
number * 2

## c always constructs vectors (numbers, etc)
times <- c(60, 40, 33, 15, 20, 55, 35)
times_hour <- times/60

mean(times)
sqrt(times)
range(times)
## go thru the guidebook for more vocabulary

#will say if thats true or false for each number:
times < 30
  sum(times < 30) #adds up number of trues
times == 20  #have to do == for equals
times != 20  #does not equal 20
times > 20 & times < 50  #& = compares vectors, when 2 trues, then a true
                          #if only one is true, then says false
times < 20 | times > 50 #vert bar = opposite

i <- which(times < 30) #4th and 5th entry is true
#any() and all()

#subsetting: sqr brackets 
times[3] ##extracts just the third entry
times[-3] ##extracts everything but the third entry
times[c(2, 4)] #have to make a vector for multiple, without the c would be a matrix
times[c(4, 2)] #does order matter? yes
times[1:5]
times[times < 30]

times[times > 50] <- 50 #making values over 50 equal to 50
                        #replacing values in vector

## NA's
times[8] <- NA ##adding 8th value, making it NA
mean(times) #is NA! How do we deal with this?
?mean #look at arguments, or things you can put into the function
      #na.rm is equal to true or false (defaults to false)
mean(times, na.rm = TRUE) #same as:
mean(x = times, trim = 0, na.rm = TRUE) #thus...if trim is second argument
mean(times, 0, TRUE) ##if doing this, need to have all three arguments

## Data frames
mtcars
head(mtcars)
str(mtcars)
names(mtcars) ##names of columns
summary(mtcars)
mtcars$mpg ##extracts specific column
##tibble - takes data frame and adds bells and whistles - useful!
