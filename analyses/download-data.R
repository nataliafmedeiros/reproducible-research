# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Natalia Medeiros <nataliaf.medeiros93@gmail.com>
# 2023/11/09

## Download PanTHERIA database ----

pantheria <- utils::download.file(dl_pantheria_data(overwrite = FALSE))

## Download WWF WildFinder database ----
ecoregions <- utils::download.file(ecoregions_data(overwrite = FALSE))

