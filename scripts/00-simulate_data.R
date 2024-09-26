#### Preamble ####
# Purpose: Simulates data set about total public complaints filed with the Office of the Independent Police Review Director
# Author: Sarah Ding
# Date: 23 September 2024
# Contact: sarah.ding@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(lubridate)

#### Simulate data ####
set.seed(123)

#Set the number of rows to simulate
n <- 150

#Simulate years between 2014 to 2023
year <- sample (2014:2023, n, replace = TRUE)

#Simulate type of complaints
complaint_type <- c("Investigated Complaints", "Not Investigated Complaints")
complaints_type <- sample(complaint_type, n, replace = TRUE)

#Simulate subtype of complaints
complaint_subtype <- c("Withdrawn", "Service", "Policy", "Not Directly Affected", "Frivolous", "Unlawful")
complaints_subtype <- sample(complaint_subtype, n, replace = TRUE)

#Simulate count of complaints
complaint_count <- sample (0:450, n, replace = TRUE)

# Combine into simulated dataset
simulated_data <- data.frame(
  YEAR = year,
  COMPLAINTS_TYPE = complaints_type,
  COMPLAINTS_SUBTYPE = complaints_subtype,
  COMPLAINT_COUNT = complaint_count
)

head(simulated_data)


