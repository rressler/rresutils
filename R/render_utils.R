#' Render two versions of a file, with and without solutions
#'
#' This function assumes the YAML header of a .qmd file uses a parameter
#' called solutions, params: solutions which has two values, TRUE and FALSE.
#' The file may use this parameter to adjust the R markdown chunk options
#' such as eval or echo when rendering to output the solutions to exercises.
#'
#' The function works as a standalone function called in the console or script.
#'
#'
#' @param input text: the name of the file to be rendered
#' @param fext text for the file extension
#' @param ... text: other parameters to be passed to the render function
#'
#' @return creates two output files in the default directory. Both have the
#' current date appended to the file name. One has no solutions in the output
#' and the second has solutions and the word solutions in the output file name.
#' @export rres_render_solutions_date
#'
#' @examples
#' # rresutils::rres_render_solutions_date("my_path/file")
rres_render_solutions_date <- function(input, fext = "html", ...) {
  quarto::quarto_render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), "_solutions-", Sys.Date(), ".", fext
    ),
    execute_params = list(solutions = "false")
  )
  quarto::quarto_render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), "_student-", Sys.Date(), ".", fext
    ),
    execute_params = list(solutions = "false")
  )
}


#' Render two versions of a file, with and without solutions
#'
#' This function assumes the YAML header of a .qmd file uses a parameter
#' called solutions, params: solutions which has two values, TRUE and FALSE.
#' The file may use this parameter to adjust the R markdown chunk options
#' such as eval or echo when rendering to output the solutions to exercises.
#'
#' The function works as a standalone function called in the console or script.
#'
#'
#' @param input text: the name of the file to be rendered
#' @param fext text for the file extension
#' @param ... text: other parameters to be passed to the render function
#'
#' @return creates two output files in the default directory.
#' The one with no solutions in the output has the word student in the file name.
#' The one with solutions has the word solutions in the file name.
#' @export rres_render_solutions
#'
#' @examples
#' # rresutils::rres_render_solutions("my_path/file")
#'
rres_render_solutions <- function(input, fext = "html", ...) {
  quarto::quarto_render(
    input,
    output_file = paste0(xfun::sans_ext(input), "_solutions.", fext),
    execute_params = list(solutions = "true")
  )
  quarto::quarto_render(
    input,
    output_file = paste0(xfun::sans_ext(input), "_student.", fext),
    execute_params = list(solutions = "false")
  )
}
