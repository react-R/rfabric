#' Shiny Checkbox Input
#'
#' Input to provide an interface for a user to rate something often indicated by a star
#'
#' @param inputId \code{character} id for the input
#' @param default \code{logical} value for the initial checkbox value
#'
#' @return \code{shiny input}
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faCheckboxInput <- function(inputId, default = FALSE) {
  reactR::createReactShinyInput(
    inputId,
    "faCheckbox",
    list(
      htmltools::htmlDependency(
        name = "faCheckbox",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faCheckbox.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    list(),
    htmltools::tags$div
  )
}

#' Update Shiny Checkbox Input
#'
#' Allow changing or updating the configuration or value of a shiny checkbox input.
#'
#' @param session Shiny session
#' @param inputId \code{character} name/id for the shiny input checkbox to change
#' @param value \code{integer} value to assign
#' @param configuration \code{list} of 'props' to change the checkbox
#'
#' @export
updateFaCheckboxInput <- function(session, inputId, value = NULL, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
