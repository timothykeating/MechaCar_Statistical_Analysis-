library(dplyr)

mc_df = read.csv("MechaCar_mpg.csv", header=TRUE)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,mc_df))

###############################################################

sc_data = read.csv("Suspension_Coil.csv",header=TRUE)

total_summary = sc_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary = sc_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

###############################################################

t.test(sc_data$PSI, mu=1500)

lot1= sc_data[sc_data$Manufacturing_Lot=="Lot1",]
lot2= sc_data[sc_data$Manufacturing_Lot=="Lot2",]
lot3= sc_data[sc_data$Manufacturing_Lot=="Lot3",]


t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
