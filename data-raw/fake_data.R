## code to prepare `fake_data` dataset goes here
laus_codes <- data.frame(
  area = c("Connecticut", "Fairfield County", "Hartford County"),
  code = c("ST0900000000000", "CN0900100000000", "CN0900300000000")
)
usethis::use_data(laus_codes, internal = TRUE, overwrite = TRUE)

# Updating sysdata with objects you've created just now
decennial_nums <- c("H002", "H003", "H004", "H005", "H006")
sysdata_filenames <- load("R/sysdata.rda")
save(list = c(sysdata_filenames, "decennial_nums"), file = "R/sysdata.rda")
