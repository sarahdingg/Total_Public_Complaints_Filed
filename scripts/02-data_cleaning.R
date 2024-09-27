#### Preamble ####
# Purpose: Clean raw dataset for data analysis 
# Author:  Sarah Ding
# Date: 09-27-2024
# Contact: sarah.ding@mail.utoronto.ca
# License: MIT
# Pre-requisites: Simulate data and raw data downloaded

#### Workspace setup ####
library(tidyverse)
library(dplyr)


#Read raw data
total_complaints <- read_csv("data/raw_data/raw_data.csv")

#Clean data in descending order of number of complaints.
descending_order <- total_complaints %>%
  arrange(desc(COUNT_))
  arrange(desc(SUBTYPE))

#Save data
write_csv(descending_order, "data/analysis_data/analysis_data.csv")

