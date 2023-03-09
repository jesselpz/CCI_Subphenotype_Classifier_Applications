## ----setuprmd, include = FALSE------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(attachment)

## ---- eval=FALSE--------------------------------------------------------------
#  att_amend_desc()

## -----------------------------------------------------------------------------
# Copy package in a temporary directory
tmpdir <- tempfile(pattern = "insidermd")
dir.create(tmpdir)
file.copy(system.file("dummypackage",package = "attachment"), tmpdir, recursive = TRUE)
dummypackage <- file.path(tmpdir, "dummypackage")
# browseURL(dummypackage)
att_amend_desc(path = dummypackage, inside_rmd = TRUE)

# Clean temp files after this example
unlink(tmpdir, recursive = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  att_amend_desc(dummypackage) %>%
#    set_remotes_to_desc()

## ----eval=TRUE----------------------------------------------------------------
find_remotes(pkg = c("attachment", "desc", "glue"))

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_description() %>%
#    find_remotes()

## ---- eval=FALSE--------------------------------------------------------------
#  find_remotes(list.dirs(.libPaths(), full.names = FALSE, recursive = FALSE))

## ---- eval=FALSE--------------------------------------------------------------
#  # From GitHub
#  remotes::install_github("ThinkR-open/fusen",
#                          quiet = TRUE, upgrade = "never")
#  attachment::find_remotes("fusen")
#  #> $fusen
#  #> [1] "ThinkR-open/fusen"
#  
#  # From r-universe as default repos
#  install.packages("fusen", repos = "https://thinkr-open.r-universe.dev")
#  attachment::find_remotes("fusen")
#  #> r-universe: need to set options to repos="https://thinkr-open.r-universe.dev"

## ---- eval=FALSE--------------------------------------------------------------
#  create_dependencies_file()

## ---- eval=FALSE--------------------------------------------------------------
#  # No Remotes ----
#  # remotes::install_github("ThinkR-open/fcuk")
#  # Attachments ----
#  to_install <- c("covr", "desc", "devtools", "glue", "knitr", "magrittr", "rmarkdown", "stats", "stringr", "testthat", "utils")
#  for (i in to_install) {
#    message(paste("looking for ", i))
#    if (!requireNamespace(i)) {
#      message(paste("     installing", i))
#      install.packages(i)
#    }
#  }

## ---- eval=TRUE---------------------------------------------------------------
dummypackage <- system.file("dummypackage", package = "attachment")

att_from_rscripts(path = file.path(dummypackage, "R"))
att_from_rmds(path = file.path(dummypackage, "vignettes"), inside_rmd = TRUE)

