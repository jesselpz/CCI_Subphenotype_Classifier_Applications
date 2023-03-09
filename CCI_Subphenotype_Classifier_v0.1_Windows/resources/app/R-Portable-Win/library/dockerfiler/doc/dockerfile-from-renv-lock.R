## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dockerfiler)

## ----dock_from_renv, eval = FALSE---------------------------------------------
#  # A temporary directory
#  dir_build <- tempfile(pattern = "renv")
#  dir.create(dir_build)
#  
#  # Create a lockfile
#  the_lockfile <- file.path(dir_build, "renv.lock")
#  custom_packages <- c(
#    # attachment::att_from_description(), # build from a DESCRIPTION file
#    "renv",
#    "cli", "glue", "golem", "shiny", "stats", "utils",
#    "testthat",
#    "knitr"
#  )
#  renv::snapshot(
#    packages = custom_packages,
#    lockfile = the_lockfile,
#    prompt = FALSE)
#  
#  # Create Dockerfile
#  dock_from_renv(lockfile = the_lockfile,
#                 distro = "focal",
#                 FROM = "rstudio/verse",
#                 out_dir = dir_build
#                )
#  
#  # rstudioapi::navigateToFile(file.path(dir_build, "Dockerfile"))
#  unlink(dir_build)

