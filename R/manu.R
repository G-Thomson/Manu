#' Complete list of palettes
#'
#' These are colour palettes derived from photos of birds native to New Zealand. Use \code{\link{get_pal}} extract palettes.
#'
#' @export
manu_palettes <- list(
  Hihi = c("#070604", "#F9E211", "#797A87", "#A8ACAD", "#D6CBB5"),
  Hoiho = c("#CABEE9", "#7C7189", "#FAE093", "#D04E59", "#BC8E7D", "#2F3D70"),
  Kaka =  c("#A7473A", "#4B5F6C", "#B09B37", "#955F47", "#A8B9CB"),
  Kakapo = c("#7D9D33", "#CED38C", "#DCC949", "#BCA888", "#CD8862", "#775B24"),
  Kakariki =  c("#44781E", "#A1B654", "#2C3B75", "#B8321A", "#565052"),
  Kea = c("#6C803A", "#7B5C34", "#AB7C47", "#CCAE42", "#D73202",  "#272318", "#D3CDBF"),
  Kereru = c("#325756", "#7d9fc2", "#C582B2", "#51806a", "#4d5f8e", "#A092B7"),
  Kereru_orig  =  c("#5a8b8a", "#337166", "#2C5F44", "#c47c94", "#43394C"),
  Korimako = c("#757b16","#4F651D",  "#798C8B", "#2F638F", "#091A26", "#490B0A"),
  Korora = c("#85BEDC",  "#3A383F", "#A6B0BB", "#CCBBCD", "#647588"),
  Kotare = c("#214d65", "#287DAB", "#E5BF86", "#B09771", "#624B27", "#CACFD0"),
  Putangitangi = c("#AA988A", "#B66A40", "#2F414B", "#2B4B3C", "#7A3520", "#7B8BA5"),
  Takahe = c("#DD3C51", "#313657", "#1F6683", "#6C90B9", "#D1C7B5"),
  Takapu = c("#DEB478", "#976533", "#D3D5D0","#76716E","#272623"),
  Titipounamu = c("#3E4331", "#AD6B17", "#66743B", "#D0C471", "#CCB62F", "#BAC4C2"),
  Tui = c("#7ACCD7", "#115896", "#7C6C65", "#4C4C53", "#BA2F00", "#21282F"),
  Pepetuna = c("#719E56", "#71702F", "#947163", "#623711", "#425266"),
  Pohutukawa = c("#5FA1F7", "#83A552", "#3D4928", "#9B1F1A", "#B19F8E", "#4E0B0C"),
  Gloomy_Nudi = c("#3399ff", "#666600", "#003399", "#999900")
)

#' Select Manu palette
#'
#' This function returns colour palettes derived from photos of birds native to New Zealand
#'
#' @param name Name of desired palette. Choices are: \code{Hihi}, \code{Hoiho}, \code{Kaka}, \code{Kakariki}, \code{Kea}, \code{Kereru}, \code{Kereru_orig}, \code{Korimako}, \code{Korora}, \code{Kotare}, \code{Putangitangi}, \code{Takahe}, \code{Takapu}, \code{Titipounamu}, \code{Tui}, \code{Pepetuna}, \code{Gloomy_Nudi} and \code{Pohutukawa}
#'
#' @return A vector of colours.
#' @export
#' @examples
#' get_pal("Hoiho")
#' get_pal("Takahe")
#' get_pal("Kereru")
get_pal <- function(name) {

  pal <- manu_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  pal
}

#' Plots a colour palette
#'
#' @param x a vector of colours
#' @export
#' @importFrom graphics par image
print_pal <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
}
