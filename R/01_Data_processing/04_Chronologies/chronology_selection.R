library(tidyverse)

# load check list
chron_file <- list.files(here("Data",
                                  "Input",
                                  "Chronology_setting",
                                  "Chron_control_point_types"))
dat_chron <- readr::read_csv(here("Data",
                                  "Input",
                                  "Chronology_setting",
                                  "Chron_control_point_types",
                                  paste0(chron_file[[1]])))

# apply
include_in <- c("Annual laminations (varves)",
                "Annual laminations (varves)/Sedimentation rate",
                "Collection date", "Core top", "Core top, estimated", "Guess",
                "Historical documentation", "Historical fire", "Lead-210",
                "Optically stimulated luminescence", "Oxygen-18", "Palaeomagnetic",
                "Radiocarbon", "Radiocarbon, average of two or more dates", 
                "Radiocarbon, calibrated", "Radiocarbon, calibrated from calendar years",
                "Radiocarbon, calibrated, Bayesian modelled", "Radiocarbon, infinite",
                "Radiocarbon, reservoir correction", "Section top", "Tephra", "Uranium-series")
calibrate_in <- c("Radiocarbon, reservoir correction", "Radiocarbon, average of two or more dates",
                  "Radiocarbon")
dat_chron_selected <- dat_chron %>%
    dplyr::mutate(include = ifelse(chroncontroltype %in% include_in, TRUE, FALSE),
                  calibrate = ifelse(chroncontroltype %in% calibrate_in, TRUE, FALSE))

# save by overwriting
readr::write_csv(dat_chron_selected,
                 here("Data",
                      "Input",
                      "Chronology_setting",
                      "Chron_control_point_types",
                      paste0(chron_file[[1]])))