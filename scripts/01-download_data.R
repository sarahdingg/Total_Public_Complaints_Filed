#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Sarah Ding
# Date: 23 September 2024
# Contact: sarah.ding@mail.utoronto.ca
# License: MIT
# Pre-requisites:simulation of data
# Any other information needed? N/A

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("police-annual-statistical-report-total-public-complaints")
package

# get all resources for this package
resources <- list_package_resources("police-annual-statistical-report-total-public-complaints")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
raw_data

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "inputs/data/raw_data.csv") 

         
