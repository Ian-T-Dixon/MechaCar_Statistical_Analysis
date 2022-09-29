# MechaCar_Statistical_Analysis
R Statistical Analysis of the MechaCar


## Linear Regression to Predict MPG
![Linear Regression MPG](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/LinRegressMPG.PNG)

<b>- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b>

Based off of the Linear Regression results, it appears that vehicle length and ground clearance contribute significantly to the mpg values. This is due to the P values being close to 0. When a P-Value is close to 0, it means that those variables are statistically unlikely to contribute randomly to variance.  th
  
<b>- Is the slope of the linear model considered to be zero? Why or why not?</b>

Based off the results, the intercept has a significant value, and is not zero. This indicates that there may be additional variables not included in our model that could also be significant or that these 2 variables need to be scaled or transformed. 

<b>- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>

This linear model does predict MPG effectively based off the r-squared value of 0.7149. Generally values over .70 indicate a strong correlation. However, only 2 of the variables are significant. The lack of significant variables is evidence of overfitting, which means that the performance of the model performs well with a current dataset, but fails to generalize and predict future data correctly. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  
![Total Summary](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/PSI_Summary.PNG) 
   
- Total Manufacturing PSI: Total Manufaccturing PSI = 62.29 which is below 100, therefore total manufacturing PSI does meet specifcications.

![Lot Summary](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/lot_summary.PNG)
  
- Lot 1: Manufaccturing PSI = 0.98 which is well below 100, therefore <b>lot 1 manufacturing PSI does meet specifcications.</b>
  
- Lot 2: Manufaccturing PSI = 7.47 which is well below 100, therefore <b>lot 2 manufacturing PSI does meet specifcications.</b>
  
- Lot 3: Manufaccturing PSI = 170.29 which is well above 100, therefore <b>lot 3 manufacturing PSI does NOT meet specifcications.</b>

## T-Tests on Suspension Coils
Based on a significance level of .05, and using the p-values: we can determine that the group of lots are not statistically different from the population mean of 1,500 pounds per square inch. On an individual basis <b>lots 1 and 2 are not statistically different because of their p-values (> .05), but lot 3 is.(< .05)</b>

![T.Test total](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/t.test_total.PNG)

![T.Test Lot 1](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/t.test_lot1.PNG)

![T.Test Lot 2](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/t.test_lot2.PNG)

![T.Test Lot 3](https://github.com/Ian-T-Dixon/MechaCar_Statistical_Analysis/blob/main/Figures/t.test_lot3.PNG)
  
