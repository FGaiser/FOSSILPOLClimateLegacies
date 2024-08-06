library(tidyverse)
library(here)

directory_to_harmonise <- here("Data", 
                               "Input",
                               "Harmonisation_tables") 
files_to_harmonise <- list.files(directory_to_harmonise)
#do not harmonise ----
for(f in files_to_harmonise){
  dat_to_harm <- readr::read_csv(here("Data", 
                                      "Input",
                                      "Harmonisation_tables",
                                      paste0(f)))
  dat_to_harm$level_1 <- dat_to_harm$taxon_name
  readr::write_csv(dat_to_harm,
                   here("Data", 
                        "Input",
                        "Harmonisation_tables",
                        paste0(f)))
  
}

