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

# Read in the CSV file for Suspension_Coil.csv
Suspension_Coil_data <- read.csv(file="Resources/Suspension_Coil.csv")

# get the "Total" mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- summarize(Suspension_Coil_data, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# get the individual "Lot" mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- Suspension_Coil_data %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil_data$PSI, mu=1500)

t.test(subset(Suspension_Coil_data$PSI, Suspension_Coil_data$Manufacturing_Lot == "Lot1"), mu=1500)

t.test(subset(Suspension_Coil_data$PSI, Suspension_Coil_data$Manufacturing_Lot == "Lot2"), mu=1500)

t.test(subset(Suspension_Coil_data$PSI, Suspension_Coil_data$Manufacturing_Lot == "Lot3"), mu=1500)


