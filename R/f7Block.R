#' Create a Framework7 block
#'
#' Build a Framework7 block
#'
#' @param ... Block content. Also for \link{f7BlockHeader} and \link{f7BlockFooter}.
#' @param hairlines Whether to allow hairlines. TRUE by default.
#' @param strong Whether to put the text in bold. FALSE by default.
#' @param inset Whether to set block inset. FALSE by default.
#' @param tablet Whether to make block inset only on large screens. FALSE by default.
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(shinyF7)
#'
#'  shiny::shinyApp(
#'   ui = f7Page(
#'     title = "My app",
#'     f7Block(
#'      f7BlockHeader(text = "Header"),
#'      "Here comes paragraph within content block.
#'      Donec et nulla auctor massa pharetra
#'      adipiscing ut sit amet sem. Suspendisse
#'      molestie velit vitae mattis tincidunt.
#'      Ut sit amet quam mollis, vulputate
#'      turpis vel, sagittis felis.",
#'      f7BlockFooter(text = "Footer")
#'     ),
#'     f7Block(
#'      strong = TRUE,
#'      f7BlockHeader(text = "Header"),
#'      "Here comes paragraph within content block.
#'      Donec et nulla auctor massa pharetra
#'      adipiscing ut sit amet sem. Suspendisse
#'      molestie velit vitae mattis tincidunt.
#'      Ut sit amet quam mollis, vulputate
#'      turpis vel, sagittis felis.",
#'      f7BlockFooter(text = "Footer")
#'     ),
#'     f7Block(
#'      inset = TRUE,
#'      f7BlockHeader(text = "Header"),
#'      "Here comes paragraph within content block.
#'      Donec et nulla auctor massa pharetra
#'      adipiscing ut sit amet sem. Suspendisse
#'      molestie velit vitae mattis tincidunt.
#'      Ut sit amet quam mollis, vulputate
#'      turpis vel, sagittis felis.",
#'      f7BlockFooter(text = "Footer")
#'     ),
#'     f7Block(
#'      tablet = TRUE,
#'      f7BlockHeader(text = "Header"),
#'      "Here comes paragraph within content block.
#'      Donec et nulla auctor massa pharetra
#'      adipiscing ut sit amet sem. Suspendisse
#'      molestie velit vitae mattis tincidunt.
#'      Ut sit amet quam mollis, vulputate
#'      turpis vel, sagittis felis.",
#'      f7BlockFooter(text = "Footer")
#'     ),
#'     f7Block(
#'      inset = TRUE,
#'      hairlines = FALSE,
#'      f7BlockHeader(text = "Header"),
#'      "Here comes paragraph within content block.
#'      Donec et nulla auctor massa pharetra
#'      adipiscing ut sit amet sem. Suspendisse
#'      molestie velit vitae mattis tincidunt.
#'      Ut sit amet quam mollis, vulputate
#'      turpis vel, sagittis felis.",
#'      f7BlockFooter(text = "Footer")
#'     )
#'   ),
#'   server = function(input, output) {}
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7Block <- function(..., hairlines = TRUE, strong = FALSE, inset = FALSE,
                    tablet = FALSE) {

  blockCl <- "block"
  if (!hairlines) blockCl <- paste0(blockCl, " no hairlines")
  if (strong) blockCl <- paste0(blockCl, " block-strong")
  if (inset) blockCl <- paste0(blockCl, " inset")
  if (tablet) blockCl <- paste0(blockCl, " tablet-inset")

 shiny::tags$div(
   class = blockCl,
   shiny::p(...)
 )
}



#' Create a Framework7 block title
#'
#' Build a Framework7 block title
#'
#' @param title Block title.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7BlockTitle <- function(title = NULL) {
  shiny::tags$div(class = "block-title", title)
}



#' Create a Framework7 block header
#'
#' Build a Framework7 block header
#'
#' @param text Header text.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7BlockHeader <- function(text = NULL) {
  shiny::tags$div(class = "block-header", text)
}


#' Create a Framework7 block footer
#'
#' Build a Framework7 block footer
#'
#' @param text Footer text.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7BlockFooter <- function(text = NULL) {
  shiny::tags$div(class = "block-footer", text)
}
