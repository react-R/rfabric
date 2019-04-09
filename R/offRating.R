#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
offRatingInput <- function(inputId, default = "") {
  reactR::createReactShinyInput(
    inputId,
    "OffRating",
    list(
      htmltools::htmlDependency(
        name = "offRating-input",
        version = "1.0.0",
        src = "www/officeInputs/offRating",
        package = "officeInputs",
        script = "offRating.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    list(),
    htmltools::tags$div
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateOffRatingInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
