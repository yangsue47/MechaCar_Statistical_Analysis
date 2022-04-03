library(dplyr)
MechaCar <- read.csv(file= 'MechaCar_mpg.csv', check.names=F, stringsAsFactors= F)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #generate summary statistics

Suspension_Coil <- read.csv(file= 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

Suspension_Coil_Pop <- read.csv('Suspension_Coil.csv', check.name= F, stringsAsFactors = F)
sample_coil <- Suspension_Coil_Pop %>% sample_n(50)
t.test(Suspension_Coil_Pop$PSI, mu=1500)

t.test(subset(Suspension_Coil_Pop, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil_Pop, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil_Pop, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
