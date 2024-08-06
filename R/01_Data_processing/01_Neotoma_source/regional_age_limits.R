library(tidyverse)

# load check list
reagelim_file <- list.files(here("Data",
                                  "Input",
                                  "Regional_age_limits"))
dat_reagelim <- readr::read_csv(here("Data",
                                     "Input",
                                     "Regional_age_limits",
                                     paste0(eco_group_file[[1]])))

# apply
dat_reagelim$young_age <- -Inf
dat_reagelim$old_age <- Inf  
dat_reagelim$end_of_interest_period <- 1000

# save by overwriting
readr::write_csv(dat_reagelim,
                 here("Data",
                      "Input",
                      "Regional_age_limits",
                      paste0(eco_group_file[[1]])))
