library(dplyr)

mc_df = read.csv("MechaCar_mpg.csv", header=TRUE)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,mc_df))

###############################################################

sc_data = read.csv("Suspension_Coil.csv",header=TRUE)

total_summary = sc_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary = sc_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
