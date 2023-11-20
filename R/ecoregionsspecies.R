#' Download WWF WildFinder dataset - Association ecoregions and species
#'
#' @description 
#' This function downloads the WWF WildFinder dataset - Association ecoregions and species (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. The file
#' won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The file `data/wildfinder/wildfinder-ecoregions_species.csv` will be stored in 
#' `data/ecoregions_species/`. This folder will be created if required.
#' 
#' @param overwrite a `logical`. If `TRUE`, the file will be downloaded again 
#'   and the previous version will be replaced.
#'
#' @return No return value.
#' 
#' @export


ecoregionsspecies_data <- function(overwrite = FALSE) {
  
  ## Destination ---- 
  path <- here::here("data", "ecoregionsspecies")
  
  ## File name ----
  filename <- "data/wildfinder/wildfinder-ecoregions_species.csv"
  
  ## GitHub URL ----
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_species.csv",
                "data/ecoregionsspecies/")
  
  if (file.exists(file.path(path, filename)) && !overwrite) {
    
    ## Check if exists locally ----
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
    
  } else {
    
    ## Create destination folder ----
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    ## Download file ----
    utils::download.file(url      = paste0(url, filename),
                         destfile = file.path(path, filename),
                         mode     = "wb")
  }
  
  invisible(NULL) 
}
