# Adapted FOSSILPOL Workflow
This is an adapted version of the [FOSSILPOL workflow](https://github.com/HOPE-UIB-BIO/FOSSILPOL-workflow) used for preprocessing [Neotoma](https://www.neotomadb.org/) fossil pollen data for the manuscript **Climate legacies accelerated global rates of vegetation change over the last 21,000 years**.

Adaptions of the FOSSILPOL Workflow template comprise:
- [selection of depositional environments](R/01_Data_processing/01_Neotoma_source/depositional_environments.R)
- [selection of ecological groups](R/01_Data_processing/01_Neotoma_source/ecological_groups.R)
- [definition of regional age limits](R/01_Data_processing/01_Neotoma_source/regional_age_limits.R)
- [selection of chronologies](R/01_Data_processing/04_Chronologies/chronology_selection.R)
- [harmonisation settings](R/01_Data_processing/05_Harmonisation/Harmonisation_preparation.R)

Scripts to select and define parameters accordingly can be run once the respective step of the workflow was executed and a .csv file generated.

