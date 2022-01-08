library(dplyr)

mc_df = read.csv("MechaCar_mpg.csv", header=TRUE)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,mc_df))


