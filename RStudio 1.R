# Use for comment. 

# For output text
"Good Morning Everyone"   # "abc" & 'abc' both will run.

# For Output numbers
1
20
20 40 60 # There should not spacing between numbers. Error will occured.

# Variable

name = "Pratik"
name = 'Aniket'   # latest data will be saved.
name            # Case sensitive.
name1 = "Pratik"
age = 20
num = "25" # Value is assigned.  By writing in double inverted commas number will use as string. 
num # Shows what is the value of num in data
NUM = num+age  # Ans will be in environment.
4+8  # will work as calculator.

text = "Akshar Niketan"
paste(text,"is best.")   # Concatenate /combine text using paste() function.
paste(text,"in Nashik.")
help(paste)  # Use help function for detail info of that command.

# Assign same value to multiple variables in one line.
Var1 = Var2 = Var3 = "Prasad"

# Legal Variable Names For R

myname = "abc"
my_name = "pqr" 
my.name = "xyz"
myName = "uvw"
.myname = "lmn"
myname2 = "hij"
MYNAME = "123abc"

# Illegal variables Names For R

_myname = "abc"
1myname = "qwe"
my name = "uio"

# Data types in R

# Numerical/Float - Decimal Whole Positive Negative
 X = 10
class(X) 

# Integer- Whole Positive Negative
Y = 1000L  # Use L to show that number is integer.
class(Y)

# Character /String                                      # Class is used to identify data type.
Z = "Bright Future"
class(Z)

# Boolean / Logical
A = TRUE   # Only T can also be used. Other Logical values are F,T,TRUE,FALSE.
class(A)

3>5
5>3
5==5   # == is used for comparative operator.
1!=6   # != is used for not equal to each other.

# Arithmatic Operators
 
S = 40
U = 30

S+U
S-U
S*U
S/U  # Decimal Result
S^2
S %% U  # Modulus / Remainder
S %/% U # Integer Division / Quotient
 
2 * pi * 100

??Constants                          # For Help Purpose.

# Assignment Operator
X = 50
50 = X  # Number cant be assign to the letter.

# Built in Math Function

max(25,78,10)  # Maximum
min(2,3,1.9)  # Minimum
sqrt(121)  # Square
abs(-3.3) # Absolute Value

# Data Structures : Vectors , Dataframes
# Homogeneous Vectors

# Vectors of Strings = To add multiple info vector is used.
fruits = c("Banana","Apple","Orange","Pomogrenete")
class(fruits)

# Vector of Numerical
n1 = c(1,2,3,4)
class(n1)

n2 = c(T,F,TRUE,FALSE)
class(n2)

# Heterogeneous Vectors
mix = c(81,"ABC",T,5L) # Priority = 1) Character 2) Numeric 3) Integer 4) Logical
class(mix)

# Sequence
 1:110   # By default the value increase by 1.
49:123

seq(25,100,5)  # Start value, End value, Increment value.
seq(12,96,by = 12)
seq(100,20,-5)

No1 = 1.5:8.5
No1

# Repetition
rep(121,11) # Repetition of 121 , 11 times.
rep("Pratik",15)

#Random Sample
sample(1:50,8)  # Any 8 numbers from 1 to 50.
sample(1:10,200)  # 200 numbers can not be selected.
sample(1:10,200,replace = T)
sample(c("HP","Lenovo","Dell"),4,replace = T)

# Indexing / Accessing vector element
X = c(23,34,42,5,66)

X[1]
X[5]

X[c(1)]
X[-1]
X[-3]  # Exclude 3rd element from vector.

X[1] = 55 # Change ! st element.
X[-1] = 10 # Every value will be 10 other than 1st because we excluded it.
X[c(1,3)] # 1st and 3rd element is shown.

y = c(5,2,2,2,2)
y<9
y>4
y[Y>1] = 8

y[Y<16] = 99
y[c(1,3)] # 1st and 3rd element will be displayed.
y[1,3] # Error will occur.

y[y<6] = 22
y

# Relational Operation with Vectors

marks = c(60,70,80,40)
marks >50
marks[marks>50]
marks==80

names = c("Pratik","Prasad","Viral")
"Prasad" %in% names
"Aniket" %in% names

# Slicing
 marks
 marks[1:6]
marks[4]
 
marks[4] = 82 
marks 

marks[-3] 
marks[5] = 78

price = c(2424,979,594,920,440,3645,2443,643,789,9578)
price[2:4]

price[price>1000] 

sort(price) 

sort(price,decreasing = T) 

help(sort)
help(mean) 

help(paste) 

length(marks)

paste(1:12)

nth = paste(1:12, c("st","nd","rd",rep("th",9)))
nth

month.name
month.abb
paste(month.abb,"is the",nth,"month of the year.")

# Basic Functions on Vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)


# Data Frames
# Slicing Data Frames
a = c(23,34,41,86,49)
b = c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)

df1 = data.frame(Training = c("Strength","Stamina","Other"),
                 Pulse = c(100,120,125),
                 Duration = c(45,35,60))

df1

df1[,1]  # Blank means all rows and 1 column only.
df1[2,] # 2nd row and all columns.
df1[,] # All rows and all  columns.

df1$Training # Values related to training will be showed.





df2 = data.frame(Name = c("DVLM","Hardwell","David Guetta","Martin Garrix"),
                 Rankings = c(3,4,1,2),
                 Country = c("Belgium","Netherland","USA","Europe"),
                 Genre = c("House","Big Room","Future Rave","PSY" ))

food = data.frame(Name = c("Pav Bhaji","Paneer Masala","Kaju Katali","Butter Chicken","Gulabjamun",
                  "Biryani"),
                  Type = c("Veg","Veg","Veg","Nonveg","Veg","Veg"),
                  Taste = c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                  Price = c(120,320,450,550,400,650))
food

# Display Food items which are Veg
                  
food[food$Type=="Veg",]  # $ is used to choose particular column.

# Food names and prices of all non veg items

food[food$Type== "Nonveg",c(1,4)]
# OR
food[food$Type== "Nonveg",c("Name","Price")]

# All Spicy food with price less than 425

food[food$Taste== "Spicy" & food$Price<425,]  # comma is used to cover all rows.

food[food$Taste== "Spicy" | food$Price<425,]

# Orange, mtcars are built in data set. Learn with this data set.
Orange
mtcars

dim(mtcars)  # No of Rows & no of Columns
nrow(mtcars) # No of Rows
ncol(mtcars) # No of Columns
str(mtcars) # Structure - column names data type & Value
summary(mtcars)

help(mtcars) # Info of data set.
mtcars$cyl # Individual col cyl values
table(mtcars$cyl) # There are 11 cars having 4 cylinders, 7 cars of 6 cyl & 14 cars of 8 cyl.
table(mtcars$gear)

# USA Arrests - another data set.
USArrests
help("USArrests")
View(USArrests)

head(USArrests) # By Default shows first 6 records
tail(USArrests)
head(USArrests,7)
tail(USArrests,12)
 
# Check all available data sets
data()
