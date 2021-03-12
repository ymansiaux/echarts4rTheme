usethis::use_build_ignore(files = "dev_history.R")
usethis::use_gpl3_license()


usethis::use_pipe()

usethis::use_package("glue")
usethis::use_package("htmlwidgets")

#
devtools::check()
devtools::build(vignettes = TRUE)
devtools::install()

pkgload::load_all()
