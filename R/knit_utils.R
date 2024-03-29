#' Render two versions of a file, with and without solutions
#'
#' This function assumes the YAML header of an R Markdown file uses a parameter called solutions, params: solutions which has two values, TRUE and FALSE. The file may use this parameter to adjust the r markdown chunk options such as eval or echo when rendering to output the solutions to exercises or not.
#'
#' The function may be placed in the YAML header of an R Markdown document where it will be invoked on the first output type.
#'
#' See Rmarkdown Cookbook Section 17.5 as a reference
#' https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html
#'
#' @param input text: the name of the file to be rendered
#' @param ... text: other parameters to be passed to the render function
#'
#' @return creates two output files in the default directory. both have the current date appended to the file name. One has no solutions in the output and the second has solutions and the word solutions in the output file name.
#' @export rres_knit_solutions_date
#'
#' @examples
#' # Use the following YAML setting after removing the leading comment
#' # knit: rresutils::rres_knit_solutions_date

rres_knit_solutions_date <- function(input, ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '_solutions-', Sys.Date()),
    envir = globalenv(),
    params = list(solutions = TRUE)
  );
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '-', Sys.Date()),
    envir = globalenv(),
    params = list(solutions = FALSE)
  )
}


#' Render two versions of a file, with and without solutions
#'
#' This function assumes the YAML header of an R Markdown file uses a parameter called solutions, params: solutions which has two values, TRUE and FALSE. The file may use this parameter to adjust the r markdown chunk options such as eval or echo when rendering to output the solutions to exercises or not.
#'
#' The function may be placed in the YAML header of an R Markdown document where it will be invoked on the first output type.
#'
#' See Rmarkdown Cookbook Section 17.5 as a reference
#' https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html
#'
#' @param input text: the name of the file to be rendered
#' @param ... text: other parameters to be passed to the render function
#'
#' @return creates two output files in the default directory. . One has no solutions in the output and the second has solutions and the word solutions in the output file name.
#' @export rres_knit_solutions
#'
#' @examples
#' # Use the following YAML setting after removing the leading comment
#' # knit: rresutils::rres_knit_solutions
#'
rres_knit_solutions <- function(input, ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '_solutions'),
    envir = globalenv(),
    params = list(solutions = TRUE)
  );
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input)),
    envir = globalenv(),
    params = list(solutions = FALSE)
  )
}
