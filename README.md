# cranalysis

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

## Overview

The goal of cranalysis is to provide a few handy functions to analyse CRAN's PACKAGES file. Initially this is focused on providing a list of package dependencies for a given list of packages. This was hastily thrown together and needs quite a lot more work to make it robust and introduce some tests etc.

## Installation

You can install the development version of cranalysis from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("sellorm/cranalysis")
```

## Example

Update the cached PACKAGES.rds file:

``` r
update_cache()
```

Then get a list of imports for a given list of packages:

``` r
get_imports(c("plumber", "rmarkdown", "shiny"))
```
