#' Shiny Rating Input
#'
#' Input to provide an interface for a user to rate something often indicated by a star
#'
#' @param inputId \code{character} id for the input
#' @param default \code{integer} value for the initial rating value
#' @param configuration \code{list} of initial 'props' for the rating input
#'
#' @return \code{shiny input}
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faRatingInput <- function(inputId, default = NULL, configuration = list()) {
  reactR::createReactShinyInput(
    inputId,
    "faRating",
    list(
      htmltools::htmlDependency(
        name = "faRating",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faRating.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    configuration,
    htmltools::tags$div
  )
}

#' Update Shiny Rating Input
#'
#' Allow changing or updating the configuration or value of a shiny rating input.
#'
#' @param session Shiny session
#' @param inputId \code{character} name/id for the shiny input rating to change
#' @param value \code{integer} value to assign
#' @param configuration \code{list} of 'props' to change the rating
#'
#' @export
updateFaRatingInput <- function(session, inputId, value = NULL, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
