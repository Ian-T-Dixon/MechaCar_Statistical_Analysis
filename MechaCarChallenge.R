#import DPLYR library
library(dplyr)

#Deliverable 1:

#import the MechaCar MPG data
mechacarMPG <- read.csv('MechaCar_mpg.csv')

#perform linear regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacarMPG)
print(model)

#get summary of model
summary(model)

# Deliverable 2:

#import the MechaCar Suspension data
mechacarSUS <- read.csv('Suspension_Coil.csv')

#create total_summary dataframe
total_summary <- mechacarSUS %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI))
total_summary

#create lot_sumamry dataframe
lot_summary <- mechacarSUS %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI), .groups = 'keep')
lot_summary

# Deliverable 3:

#use t.test()  to determine if the PSI across all mfr lots is statistically different from the pop. mean of 1,500 PSI
t.test(mechacarSUS$PSI, mu=1500)

#use t.test() to determine if the PSI for each mfr lot is statistically different from the pop. mean of 1500 PSI.
t.test(subset(mechacarSUS, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(mechacarSUS, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(mechacarSUS, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
