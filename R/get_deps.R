get_deps <- function(pkgs, package) {
  # get imports for plumber
  imps <- pkgs[which(pkgs[, "Package"] == package), "Imports"]

  # split into chunks
  split_imps <- unlist(strsplit(x = imps, ","))
  # strip version numbers
  split_imps <- sub("\\(.*\\)", "", split_imps)
  # remove \n newlines
  split_imps <- sub("\n", "", split_imps)
  # remove rogue spaces
  split_imps <- gsub(" *", "", split_imps)
  # return split imps
  split_imps
}
