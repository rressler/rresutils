
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rresutils

<!-- badges: start -->
<!-- badges: end -->

The goal of rresutils is to support teaching of R and R Markdown topics.

## Installation

You can install the released version of rresutils from GitHub with:

devtools::install\_github(“rressler/rresutils”)

## Example

To use after installing this package

### knitr utilities

#### `rres_knit_solutions()`

-   This function outputs both two versions of a .Rmd file that has been
    configured to use a YAML parameter called `params:solutions` where
    the values are either `TRUE` or `FALSE`. These values turn code
    chunk options such as `eval` or `echo` on and off respectively.

Enter the following into the YAML header and then knit. It will use the
first output type in your YAML be it PDF or HTML. The file with the
solutions will have the word solutions in the file name. knit:
rresutils::rres\_knit\_solutions

#### `rres_knit_solutions_date()`

-   This function outputs both two versions of a .Rmd file that has been
    configured to use a YAML parameter called `params:solutions` where
    the values are either `TRUE` or `FALSE`. These values turn code
    chunk options such as `eval` or `echo` on and off respectively.

Enter the following into the YAML header and then knit. It will use the
first output type in your YAML be it PDF or HTML. The file with the
solutions will have the word solutions in the file name. Both files will
have the current date added to the file name. knit:
rresutils::rres\_knit\_solutions
