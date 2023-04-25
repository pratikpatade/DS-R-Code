Ages = c(21,32,24,45,36,52,50,44,37,29)
plot(Ages)

salary = c(20000,30000,23000,43000,55000,38000,67000,70000,48000,50000)
plot(salary)

plot(Ages,salary) # ages on x axis
plot(salary,Ages) # salary on x axis

help(plot)

# Air quality = read.csv()

airquality = datasets::airquality
head(airquality,10)
tail(airquality)
View(airquality) # Entire data set is visible.
names(airquality)  # Column names of th data set.

airquality[,c(1,2)]  # Show all rows and first two columns.

df = airquality[,-6]  # 6th column is eliminated.
df

summary(airquality[,1])  # Summery statistics for column one

airquality$Wind # Display column values

summary(airquality$Temp)
summary(airquality[,4])

#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_

###           Visualization                 ###
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p") #type=p i.e point will be shown in graph
plot(airquality$Temp,type = "l")    # l denotes line
plot (airquality,col = "red")  # Scatter plot
plot(airquality$Temp,type = "b")    # b denotes both line and point

plot(airquality$Wind,
     xlab = "Ozone Concentration",
     ylab = "No of Instances",
     main = "Ozone levels in NY city",
     col = "yellow",
     type = "l")

# Orizontal bar plot
barplot(airquality$Ozone,
        main = "Ozone Concentration in air",
        ylab = "Ozone Levels",
        col = "blue",
        horiz = T,     # Bars will be horizontal
        axes=T)    #  Scale will be seen on graph
help(barplot)


# Histograpm
hist(airquality$Temp)

hist(airquality$Ozone,
  main = "Ozone Concentration in air",
  ylab = "Ozone Levels",
  col = "yellow",
 border = "pink")

help(hist)


# Boxplot
help("boxplot")

boxplot(airquality$Wind,
        main="Boxplot",
        col = "orange",
        border = "red",
        horizontal = T )

boxplot.stats(airquality$Wind)$out # To find the values of Outlier

boxplot(airquality$Temp,
        main="Boxplot",
        col = "orange",
        border = "red",
        horizontal = F )

boxplot.stats(airquality$Temp)$out   # No outliers in Temperature data

# Multiple Box Plots
boxplot(airquality[,],        # Select all rows and all columns
        main = "Multiple Box Plots",
        horizontal = T,
        col = "pink")

# Margin of the grid(mar)(bottom,left,top,right),
# No of rows and column(mfrow),
# Whether a border is to be included(bty),
# and Position of the 
# Labels
# las = las: 1 for horizontal, las: 0 for vertical,
# bty = box around the plot (o,n,7,L,C,U)
help(par)

par(mfrow = c(3,3), mar = c(5,7,5,2), las=0 , bty = "o" )
warnings()
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Temp, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone,
        main = "Ozone Concentration in air",
        ylab = "Ozone Levels",
        col = "blue",
        horiz = T,
        axes = T)
hist(airquality$Ozone,
     main = "Ozone Concentration in air",
     ylab = "Ozone Levels",
     col = "yellow",
     border = "pink")
boxplot(airquality[,],        
        main = "Multiple Box Plots",
        horizontal = T,
        col = "pink")
 
# Here we can draw many graphs as per we mention in mfrow 
# condition . In above example we have given permission to
# draw graph in 3 rows and 3 columns.

# Considering NA Values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)

mean(airquality$Solar.R,na.rm = T)    # na.rm = T i.e.remove NA values
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

# Google following functions as variance in R, etc

# var
# skewness
# kurtosis
# density plot

var(airquality$Ozone,na.rm = T)
sd(airquality$Wind)
sd(airquality$Ozone,na.rm = T)

skewness(airquality$Ozone,na.rm = T) # Error
kurtosis(airquality$Ozone,na.rm = T) # Error

# Installing Packages
# go to packages , select on install , search in packages 
# & select it.

# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm = T))



## In Class Exercixe
e_quakes = datasets::quakes










