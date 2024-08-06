library(tidyverse)

# load check list
eco_group_file <- list.files(here("Data",
                                  "Input",
                                  "Eco_group"))
dat_ecogroup <- readr::read_csv(here("Data",
                                 "Input",
                                 "Eco_group",
                                 paste0(eco_group_file[[1]])))

# apply selection (terrestrial pollen from vascular plants)
inc <- c("PALM", "PLNT", "TRSH", "PCON", "SEED", "ANAC",
             "UPHE", "VACR", "VASC", "SUCC", "EMBR", "EUDI")

dat_ecogroup_selected <- dat_ecogroup %>%
  dplyr::mutate(include = ifelse(ecologicalgroup %in% inc, TRUE, FALSE))

# save by overwriting
readr::write_csv(dat_ecogroup_selected,
                 here("Data",
                      "Input",
                      "Eco_group",
                      paste0(eco_group_file[[1]])))
