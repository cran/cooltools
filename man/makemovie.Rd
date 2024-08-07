% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makemovie.R
\name{makemovie}
\alias{makemovie}
\title{Produce a movie from frame-drawing function}
\usage{
makemovie(
  frame.draw,
  frame.index,
  output.path,
  output.filename,
  width = 1080,
  height = 720,
  fps = 60,
  keep.frames = FALSE,
  quiet = FALSE,
  separator = "/",
  ffmpeg.cmd = "ffmpeg",
  ffmpeg.opt = "-vcodec libx264 -crf 18 -pix_fmt yuv420p",
  manual = FALSE,
  cex = 1,
  oversampling = 1,
  first.index = 1,
  last.index = length(frame.index)
)
}
\arguments{
\item{frame.draw}{function that plots an individual frame. This function must have exactly one  argument 'x', which can be integer (e.g. a simple frame index) or real (e.g. a time).}

\item{frame.index}{list of frame indices 'x' to be included in the movie}

\item{output.path}{character specifying the directory, where the movie and temporary frames are saved}

\item{output.filename}{movie filename without path. This filename should end on the extension '.mp4'.}

\item{width}{integer number of pixels along the horizontal axis}

\item{height}{integer number of pixels along the vertical axis}

\item{fps}{number of frames per second}

\item{keep.frames}{logical flag specifying whether the temporary directory with the individual frame files should be kept. If \code{manual} is set to \code{TRUE}, the frames are always kept.}

\item{quiet}{logical flag; if true, all console outputs produced by 'ffmpeg' are suppressed}

\item{separator}{filename separate of the system ('/' for Mac, Linux, Unix; '\' for Windows)}

\item{ffmpeg.cmd}{command used to call ffmpeg form a terminal. Normally, this is just 'ffmpeg'.}

\item{ffmpeg.opt}{compression and formatting options used with ffmpeg}

\item{manual}{logical flag; if true, ffmpeg is not called from within the code and the frames are never deleted. The suggested linux command line is returned as output.}

\item{cex}{number defining the overall scaling of line widths, font sizes, etc.}

\item{oversampling}{integer specifying the oversampling factor along both dimensions. If larger than 1, frames are plotted with (width*oversampling)-by-(height*oversampling) pixels and then resized back to width-by-height. This can be used to make line objects and text move more smoothly.}

\item{first.index}{integer specifying the first index of the vector frame.index to consider. Choosing a value larger than the default (1) can be used to continue a previously interrupted call of makemovie and/or to call makemovie from different R sessions in parallel.}

\item{last.index}{integer specifying the last index of the vector frame.index to consider. Choosing a value smaller than the default (length(frame.index)) can be used to continue a previously interrupted call of makemovie and/or to call makemovie from different R sessions in parallel.}
}
\value{
Linux command line to convert frames into movie using ffmpeg.
}
\description{
Generates an MP4-movie provided a custom function that plots individual frames. The routine has been developed and tested for MacOS and it requires on a working installation of ffmpeg.
}
\examples{

## Example: Movie of a manual clock

# Function to draw a single clock face with two hands
frame = function(time) {
  oldpar = graphics::par(mar=c(0,0,0,0))
  nplot(xlim=c(-1.1,1.1),ylim=c(-1.1,1.1),pty='s')
  plotrix::draw.circle(0,0,1,col='#aaaaff')
  radius = c(0.5,0.9)
  speed = 2*pi/c(720,60)
  lwd = c(4,2)
  graphics::arrows(0,0,radius*sin(speed*time),radius*cos(speed*time),lwd=lwd)
  graphics::par(oldpar)
}

# Produce movie
\dontrun{
makemovie(frame,seq(0,60,0.5),'~/testmovie','movie.mp4',200,200)
}

}
\seealso{
\code{\link{makeframe}}
}
\author{
Danail Obreschkow
}
