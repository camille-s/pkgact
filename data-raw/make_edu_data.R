edu <- c(age25plus = "B15003_001", bachelors = "B15003_022", masters = "B15003_023") %>%
  tidycensus::get_acs(geography = "county subdivision", year = 2016, variables = ., state = "09", county = "09") %>%
  dplyr::mutate(NAME = stringr::str_remove(NAME, " town,.+")) %>%
  dplyr::select(name = NAME, variable:moe) %>%
  dplyr::filter(name %in% c("New Haven", "Hamden", "West Haven", "East Haven", "Bethany"))

usethis::use_data(edu, overwrite = TRUE)

counties <- tidycensus::get_acs("county", variables = c(total_pop = "B01003_001"), state = "09", geometry = TRUE) %>%
  dplyr::rename_with(tolower) %>%
  dplyr::select(name, pop = estimate) %>%
  dplyr::mutate(area = sf::st_area(geometry),
                pop_density = as.numeric(pop / area * 1e3))

usethis::use_data(counties, overwrite = TRUE)
