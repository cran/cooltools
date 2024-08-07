% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rasterflip.R
\name{rasterflip}
\alias{rasterflip}
\title{Flip array to be displayed with rasterImage()}
\usage{
rasterflip(A)
}
\arguments{
\item{A}{n-by-m array of a monochromatic image or n-by-m-by-k array of a color image (where k is 3 or 4)}
}
\value{
A m-by-n array of a monochromatic image or m-by-n-by-k array of a color image.
}
\description{
Flips the array A to be displayed with rasterImage, such that the first index runs from left to right and second index runs from bottom to top, like in standard Cartesian coordinates. In this way \code{rasterImage(rasterflip(A))} has the same orientation as \code{image(A)}.
}
\author{
Danail Obreschkow
}
