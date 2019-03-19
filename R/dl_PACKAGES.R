#' Download a CRAN PACKAGES file
#'
#' @description Downloads a CRAN packages file from the specified CRAN repo.
#'
#' @param repourl A CRAN repository URL
#' @param destfile the destination file
#'
#' @export
#'
dl_PACKAGES <- function(repourl, destfile = "./PACKAGES.rds") {
  pkgs_file_url <- paste0(repourl, "/src/contrib/PACKAGES.rds")
  utils::download.file(pkgs_file_url, destfile = destfile)
}
