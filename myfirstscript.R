#Thisis a comment
5+ #this is the famous five
  209+ #I could note that this is the CCGs in 2016
  211+ #while this is the number of CCGs in 2015
  6

/
  
  3

mean

3<4
"2017-09-04"
as.Date("2017-09-04")
"what?"
2^2
sqrt(-1)
1:5

pi
pi^2
1/0
#floating point errors
0.2<0.2
0.2==0.2

(0.8-0.6)==(0.7-0.5)
all.equal(0.8-0.6, 0.7-0.5)
5!=4
(0.8-0.6)!=(0.7-0.5)
!all.equal(0.8-0.6, 0.7-0.5)


#other operators
9%%4 #the amount left over after dividing 9 by a whole number of fours
9%/%4 #the number of times four will fit wholly into 9.

pi>3

1:5>3
1:5<=3
5!
  
sum(1:5<=3) #how many of the numbers in the series 1:5 are <= 3.

#search if something isr in
colours<- c("red", "blue", "orange")
"ORANGE"%in% colours
tolower("ORANGE")%in% tolower(colours)

"LETTERS"
"a"%in% letters
tolower(LETTERS)==letters
sum(tolower(LETTERS)==letters)
1:10 >=3
1:10<7
1:10 >=3 & 1:10<7
1:10 &&(>=3, <7) #why is this not working use ctrl-shift-c to comment this whole line out. 


`1a` <- "b"
`1a` <- NULL
rm("1a")
a<-10
10->b


my_first_variable<-1+2+3+4 #I can create variables
MyFirstVariable<-1+2+3+4+5 #keep naming convention stable within script.
`2017Data`<-333000 #can't start with a number so must always use backticks
#2017Data <-333000 won't work
c<-1:5
ls()
#rm(list=ls()) #This will delete every value saved in the environment, ie. everything returned by the ls() function


#make vectors and combine with c
c(1:5, 9:20)


#Vectors are useful to enter tiny datasets to test script. 

c(1:50)
c("red", "pink")
c(1:50, "red", "pink") #Now the numbers are also text, as a vector can only be one data type
c(1:50, TRUE, FALSE, NA, "") 

#Now we want 2D tabular data, these are Data frames Data.frames
incidence<-c(101, 500, 700)
ageweight<-c(0.1,2.5,1.5)

incDF<-data.frame(incidence, ageweight)
largeABC<-data.frame (id=1:26, abc=letters)
View(largeABC)

nums<-c(1:50)
words<- c("red", "pink")

New<-data.frame(nums, words)

1:20*5
1:20*1:3
data.frame(1:21 *1:3) #so this is 1:50 and second number is 1*1, then 2*2, 3*3 then 4*1, 5*2, 6*3 etc. 
data.frame(1:21, 1:3)
data.frame(a=1:21, b=1:3) #same as above but neater


#lists
#E.g. keeping metadata with data
#make sure to names things as locations might change (sort of like vlookup vs a cell ref)

list(1:50, c("red", "hotels"))

list(
  list(c("red", "hotels")),
  list(c(1:50))
)#This is a mess to read the output, therefore name things so the output is easier to read

list(
  firstlist=list(words=c("red", "hotels")),
  secondlist= list(numbers=c(1:50))
)

#doesn't work
#list(
#  ListOfLists=list(c  (`2017Data`),
#            list(c  (a),
#  list (c(ageweight))
#  )
  
  
data.frame (1:37, "a") #Look at the awful column headings
list(1:5, b=list(a=1, b=FALSE)) #look at this mix of lists some with names some without. 

c("a", "b", "d") %in% c("a", "c", "d") #compares each element with each
1:5^2
(1:5)^2 #: is below ^ in hierarchy

all.equal(10,20)
ls()


c(1, TRUE) #How is this storted and how to MAKE it be an integer.
is.integer(c(1, TRUE))
as.integer(c(1, TRUE))
is.integer(as.integer(c(1, TRUE)))

OrigVec<-c(1, TRUE) #How is this storted and how to MAKE it be an integer.
class (OrigVec)
is.integer(OrigVec)
OrigVec <-as.integer(OrigVec)
is.integer(OrigVec)
length (OrigVec)

mean(OrigVec)

paste (1:30, 1:3, sep="-", collapse=";")#look how I can play with numbers
paste0 (1:30, 1:3)

#concatData<- c(1:30, 1:3, sep="-", collapse=";",
 #             1:20, 1:2, sep="-", collapse=";") #broken

dir.create("data")
write.csv(incDF, file="data/simple.csv")
read.csv("data/simple.csv")


help("mean")
apropos("mean")
Sys.Date()
Sys.Date #Typing these without the extra bits brings up info about the function
mean
file.path #This one is recursive.

set.seed(123) #if you run this first you'll get the SAME "random" numbers.
rnorm(100, mean=10, sd=1) #generates test data
runif(50,1,50)

#To install packages I can go throuhg menus in packages or use function
#install.packages("tidyverse")

library(tidyverse)
stats::filter  #filter is diferent in the original package vs the new one.
#When uploading tidyverse it highlights this for e.g. dplyr
dplyr::filter

tidyverse::tidyverse_conflicts()  #see what the conflicts are. 
#Shows you how much you are using that package. 
#so if you are using unapproved code, after getting the end result you can find the unapproved bits to rewrite them. 


browseVignettes(package = "dplyr")
library("dplyr")


