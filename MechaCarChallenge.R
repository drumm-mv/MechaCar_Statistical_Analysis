#load dplyr package
library(dplyr)

# Read in the CSV file for MechaCar_mpg.csv
mechaCar_mpg_data <- read.csv(file="Resources/MechaCar_mpg.csv")

### Preview tibble
head(mechaCar_mpg_data)

#linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechaCar_mpg_data) #generate multiple linear regression model

#Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechaCar_mpg_data)) #generate summary statistics
