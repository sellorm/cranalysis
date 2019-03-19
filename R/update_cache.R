#' update cached CRAN PACKAGES file
#'
#' @description Downloads a CRAN packages file from the specified CRAN repo.
#'
#' @param force logical indicating whether to force an update
#' @param repo CRAN repo URL to use
#'
#' @export
#'
update_cache <-
  function(force = FALSE,
           repo = options()$repos['CRAN']) {
    if (!dir.exists("~/.cranalysis")) {
      dir.create("~/.cranalysis/")
    }

    if (!force) {
      if (file.exists("~/.cranalysis/PACKAGES.rds")) {
        if (file.mtime("~/.cranalysis/PACKAGES.rds") > (Sys.time() - 604800)) {
          warning("Cached PACKAGES.rds is less than 7 days old - skipping update")
          return(FALSE)
        }
      }
    }
    dl_PACKAGES(repo, destfile = "~/.cranalysis/PACKAGES.rds")
    return(TRUE)
  }
