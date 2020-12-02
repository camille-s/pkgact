#' Education levels
#'
#' Educational attainment data for adults ages 25 and over for 5 New Haven-area towns, 2016. `edu` is an abridged version with just counts of adults with Bachelor's and Master's degrees. `edu_detail` contains detailed education levels from no schooling through Doctorate.
#'
#' @format A tibble with 4 columns. For `edu`, 15 rows; for `edu_detail`, 125 rows.
#' \describe{
#'   \item{name}{Town name}
#'   \item{variable}{Education level}
#'   \item{estimate}{Estimated count}
#'   \item{moe}{Margin of error of estimates}
#' }
#' @source US Census Bureau, American Community Survey 2016 5-year estimates
#' @name edu
"edu"
