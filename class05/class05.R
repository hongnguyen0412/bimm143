# Class 05 Data Visualization 

# This is the "base" R plot
plot(cars)

# We are going to get a new plotting package called ggplot2
# ggplot(cars)

# install.packages("ggplot2")
# Now we need to call/load the package
library(ggplot2)

# This sets up the plot
ggplot(cars)

gg <- ggplot(data=cars) + aes(x=dist, y=speed) + geom_point()
gg
# One last thing. lets add a line to the data

gg + geom_smooth()

# I want a linear model
gg + geom_smooth(method="lm", se=FALSE)

ggplot(data=cars) + 
  aes(x=dist, y=speed) + 
  geom_point() +
  geom_smooth(method="lm") 
  

# Add more layers
gg + labs(title = "Relationship between speed and distance for cars", 
          caption = "BIMM143") + 
  xlab("Distance (ft)") + 
  ylab("Speed (mph)")+
  theme_bw() +
  geom_smooth(method="lm", se = FALSE)

# RNASeq experiment dataset.

# Read the data into R
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

nrow(genes)

colnames(genes)

# I want to plot this result
ncol(genes)

table(genes$State)
round(table(genes$State)/nrow(genes) * 100, 1)

sum(genes$State == "up")

ggplot(genes) +
  aes(x=Condition1, y=Condition2, color = State)+
  geom_point() + labs(title="Condition 1 vs Condition 2")



