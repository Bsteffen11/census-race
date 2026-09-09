library(tidyverse)
library(tidycensus)

# Table P2 provides Hispanic ethnicity and race breakdowns
race_vars <- c(
  hispanic = "P2_002N",
  white    = "P2_005N",
  black    = "P2_006N",
  asian    = "P2_008N"
)

# Download 2020 Decennial Census tract-level data for Sarasota County, FL
sarasota_race <- get_decennial(
  geography = "tract",
  variables = race_vars,
  state = "FL",
  county = "Sarasota",
  year = 2020
)

# Save downloaded data to the data directory
write_rds(sarasota_race, "data/sarasota_race.rds")
