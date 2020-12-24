#' Read hyperfine timing results in JSON format
#'
#' @param filename : a JSON file in the format written by hyperfine
#'
#' @return a tibble with two columns
#' @export
#' @importFrom checkmate assert_file_exists
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#'

read_hyperfine_json <- function(filename)
{
  checkmate::assert_file_exists(filename, access = "r")
  jsn <- jsonlite::fromJSON(filename)
  times_list <- jsn$results$times
  cmd_list <- jsn$results$command
  tibble::tibble(times=unlist(times_list),
                 command=unlist(cmd_list))
}
