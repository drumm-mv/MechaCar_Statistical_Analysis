# MechaCar_Statistical_Analysis
Apply understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry.

## Overview:
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.

Review the production data for insights that may help the manufacturing team.
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Results:

### Linear Regression to Predict MPG

![image_name](/Resources/Linear_Regression_to_Predict_MPG.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Based on the probability factor, the vehicle length and ground clearance are statistically most likely to provide non-random amounts of variance to the mpg values.

- Is the slope of the linear model considered to be zero? Why or why not?
  - No, the slope of this linear model is not zero. This can be seen in comparing the p-value to our assumed signifcance level of 0.05%.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, this linear model does predict mpg of MechaCar prototypes effectively.  This can be seen in the R-squared value being around 71%.

## Summary Statistics on Suspension Coils

### Total Summary
![image_name](/Resources/total_summary.png)

### Summary by Lot
![image_name](/Resources/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

The current manufacturing data meets this design specification based over all in total with a variance of only 62.29, but for each manufacturing lot individually (1-3), lot 3 exceeds this threshold having a variance of 170.29.

## Summary:
