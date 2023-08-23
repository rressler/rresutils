
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rresutils

<!-- badges: start -->
<!-- badges: end -->

The goal of rresutils is to support teaching of R and R Markdown topics.

## Installation

You can install the released version of rresutils from GitHub with:

devtools::install_github(“rressler/rresutils”)

## Examples

The package has two sets of similar functions. These are based on ideas
and code samples in section 17.5 of the [R Markdown
Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html)

### `quarto_render()` Functions

#### `rres_render_solutions()`

- This function outputs two versions of an .qmd file that has been
  configured to use a YAML parameter called `params:solutions` where the
  values are either `true` or `false`. These values turn code chunk
  options such as `eval`, `echo`, or `include` on and off respectively.

Use the console to run
`rresutils::rres_render_solutions("my_path/file.qmd")`.

- The file with solutions will have “\_solutions” in the file name.
- The file without solutions will have “\_student” in the file name.

The default file extension is “html” but you can change to another
extension with argument `fext = "pdf"`.

#### `rres_render_solutions_date()`

This function operates the same as `rres_render_solutions()` but it
appends the `Sys.Date()` value at the end of the file name.

Use the console to run
`rresutils::rres_knit_solutions_date("my_path/file.qmd")`.

### `rmarkdown::render()` Functions

#### `rres_knit_solutions()`

- This function outputs two versions of an .Rmd file that has been
  configured to use a YAML parameter called `params:solutions` where the
  values are either `TRUE` or `FALSE`. These values turn code chunk
  options such as `eval` or `echo` on and off respectively.

Enter the following into the YAML header and then knit. It will use the
first output type in your YAML be it PDF or HTML. The file with
solutions will have the “\_solutions” in the file name.

      knit: rresutils::rres_knit_solutions
      

#### `rres_knit_solutions_date()`

This function operates the same as `rres_knit_solutions()` but it
appends the `Sys.Date()` value at the end of the file name.

Enter the following into the YAML header and then knit. It will use the
first output type in your YAML be it PDF or HTML. The file with the
solutions will have “\_solutions” in the file name. Both files will have
the current date added to the file name.

      knit: rresutils::rres_knit_solutions_date
      
