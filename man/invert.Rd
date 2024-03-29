% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/invert.R
\name{invert}
\alias{invert}
\title{Invert and shift colors of an image}
\usage{
invert(
  img = NULL,
  invert = TRUE,
  colshift = 0,
  blur = 0,
  file.in = "",
  file.out = "",
  format = "png",
  show.image = TRUE
)
}
\arguments{
\item{img}{n-by-m-by-3 array or n-by-m-by-4 array representing an rgb(+alpha) image}

\item{invert}{logical flag indicating whether the channel-brightness should be inverted}

\item{colshift}{numerical value between 0 and 1 setting the circular shift of the hue value. If \code{invert=TRUE}, choosing \code{colshift=0.5} preserves the colors, while inverting black and white.}

\item{blur}{numerical value >=0 defining the standard deviation of an optional Gaussian blur.}

\item{file.in}{optional input filename, which can be used to load an image instead of providing it via \code{img}. This filename is ignored if \code{img} is specified.}

\item{file.out}{optional output filename.}

\item{format}{one of "png" or "jpg" specifying the file format of the input and output image.}

\item{show.image}{logical flag specifying whether the image is displayed in the R console.}
}
\value{
Returns an n-by-m-by-3 array or n-by-m-by-4 array of the processed image.
}
\description{
Invert the brightness of each color channel in an image and/or circularly shifts the hue value. Optionally, a Gaussian blur can be applied.
}
\examples{

img = yinyangyong # this is an example image included in the package

# invert brightness of all channels
invert(img)

# invert brightness, but preserve hue
invert(img, colshift=0.5)

}
\author{
Danail Obreschkow
}
