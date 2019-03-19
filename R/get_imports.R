#' Get a list of package imports
#'
#' @description Returns a vector containing the packages that are listed as imports for the input vector of packages
#'
#' @param packages A list of packages to report on
#' @param pkgs The content of the PACKAGES.rds file to report from
#'
#' @export
#'
get_imports <-
  function(packages,
           pkgs = readRDS("~/.cranalysis/PACKAGES.rds")) {
    all_deps <- unlist(lapply(packages, function(x) {
      get_deps(pkgs, x)
    }))
    all_deps <- unique(all_deps)
    sort(all_deps)
  }
