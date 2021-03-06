#' Create a Framework7 chips
#'
#' Build a Framework7 chips
#'
#' @param label Chip label.
#' @param img Chip image, if any.
#' @param icon Icon, if any. IOS and Material icons available.
#' @param outline Whether to outline chip. FALSE by default.
#' @param status Chip color: see here for valid colors \url{https://framework7.io/docs/chips.html}.
#' @param icon_status Chip icon color: see here for valid colors \url{https://framework7.io/docs/chips.html}.
#' @param closable Whether to close the chip. FALSE by default.
#'
#' @note Not ready for production (need to handle javascript close)
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(shinyF7)
#'
#'  shiny::shinyApp(
#'   ui = f7Page(
#'     title = "My app",
#'     f7Chip(label = "Example Chip"),
#'     f7Chip(label = "Example Chip", outline = TRUE),
#'     f7Chip(label = "Example Chip", icon = "add_round", icon_status = "pink"),
#'     f7Chip(label = "Example Chip", img = "http://lorempixel.com/64/64/people/9/"),
#'     f7Chip(label = "Example Chip", closable = TRUE),
#'     f7Chip(label = "Example Chip", status = "green")
#'   ),
#'   server = function(input, output) {}
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7Chip <- function(label = NULL, img = NULL, icon = NULL, outline = FALSE,
                   status = NULL, icon_status = NULL, closable = FALSE) {

  chipCl <- "chip"
  if (outline) chipCl <- paste0(chipCl, " chip-outline")
  if (!is.null(status)) chipCl <- paste0(chipCl, " color-", status)

  iconTag <- if (!is.null(icon)) {
    shiny::tags$div(
      class = if (!is.null(status)) {
        paste0("chip-media bg-color-", status)
      } else {
        "chip-media"
      },
      shiny::tags$i(class = "icon f7-icons ios-only", icon),
      shiny::tags$i(class = "icon material-icons md-only", icon)
    )
  }

  imageTag <- if (!is.null(img)) {
    shiny::tags$div(
      class = "chip-media",
      shiny::img(src = img)
    )
  }

  shiny::tags$div(
    class = chipCl,
    if (!is.null(img)) imageTag,
    if (!is.null(icon)) iconTag,
    shiny::tags$div(
      class = "chip-label",
      label
    ),
    if (closable) shiny::a(href = "#", class = "chip-delete")
  )
}
