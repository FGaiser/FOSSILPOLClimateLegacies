library(tidyverse)

# load check list
depositional_environment_file <- list.files(here("Data",
                                                 "Input",
                                                 "Depositional_environment",
                                                 "Neotoma"))
dat_env <- readr::read_csv(here("Data",
                                "Input",
                                "Depositional_environment",
                                "Neotoma",
                                paste0(depositional_environment_file[[1]])))


#based on BIODYNAMICS
#exclude biological, terrestrial, riverine, archaeological
#marine other, spring, unknown, na, estuarine

exclude_4 <- c("Biological", "Terrestrial", "Riverine", "Archaeological", "Marine", "Estuarine",
              "Other", "Spring", "Unknown", NA)
exclude_2 <- c("Artificial Lake")
exclude_1 <- c("Fluvial Origin Lake", "Artificial Lake")
exclude_depenv <- c("Playa", "Proglacial Lake", "Coastal lagoon", "Artificial Lake", "Lacustrine Beach", "Fluvial Origin Lake")

dat_env_selected <- dat_env %>%
    dplyr::mutate(include = ifelse(dep_env_level_4 %in% exclude_4 |
                                     dep_env_level_2 %in% exclude_2 |
                                     dep_env_level_1 %in% exclude_1 |
                                     depositionalenvironment %in% exclude_depenv, FALSE, TRUE))

# save by overwriting the generated file
readr::write_csv(dat_env_selected,
                 here("Data",
                      "Input",
                      "Depositional_environment",
                      "Neotoma",
                      paste0(depositional_environment_file[[1]])))

