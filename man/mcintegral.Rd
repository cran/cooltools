% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcintegral.R
\name{mcintegral}
\alias{mcintegral}
\title{Monte Carlo and Quasi-Monte Carlo integration in any dimension}
\usage{
mcintegral(f, a, b, n = 1e+05, qmc = FALSE, seed = NULL, warn = TRUE)
}
\arguments{
\item{f}{scalar function of a D-vector to be integrated numerically; for fast performance, this function should be vectorized, such that it returns an N-element vector if it is given an N-by-D matrix as argument. An automatic warning is produced if the function is not vectorized in this manner.}

\item{a}{D-vector with lower limit(s) of the integration}

\item{b}{D-vector with upper limit(s) of the integration}

\item{n}{approximate number of random evaluations. (The exact number is max(1,round(sqrt(n)))^2.)}

\item{qmc}{logical flag. If false (default), pseudo-random numbers are used; if true, quasi-random numbers from a D-dimensional Halton sequence are used.}

\item{seed}{optional seed for random number generator. Only used if \code{qmc} is false.}

\item{warn}{logical flag. If true (default), a warning is produced if the function f is not vectorized.}
}
\value{
Returns a list of items:
\item{value}{the best estimate of the integral.}
\item{error}{an estimate of the statistical 1-sigma uncertainty.}
\item{iterations}{exact number of evaluations (close to n).}
}
\description{
Numerical integration using a Monte Carlo (MC) or Quasi-Monte Carlo (QMC) algorithm, based on a Halton sequence. These algorithms are of low order (1/sqrt(n) for MC, log(n)/n for QMC in one dimension) compared to the typical orders of 1D deterministic integrators, such as those available in the \code{integrate} function. The MC and QMC integrators are suitable to compute D-dimensional integrals with D>>1, since the order of most deterministic methods deteriorates exponentially with D, whereas the order of MC remains 1/sqrt(n), irrespective of D, and the order of QMC only deteriorates slowly with D as log(n)^D/n.
}
\examples{

## Numerically integrate sin(x)
f = function(x) sin(x)
m = mcintegral(f,0,pi)
cat(sprintf('Integral = \%.3f\u00B1\%.3f (true value = 2)\n',m$value,m$sigma))

## Numerically compute the volume of a unit sphere
sphere = function(x) as.numeric(rowSums(x^2)<=1) # this is vectorized
vmc = mcintegral(sphere,rep(-1,3),rep(1,3),seed=1)
vqmc = mcintegral(sphere,rep(-1,3),rep(1,3),qmc=TRUE)
cat(sprintf('Volume of unit sphere = \%.3f\u00B1\%.3f (MC)\n',vmc$value,vmc$error))
cat(sprintf('Volume of unit sphere = \%.3f\u00B1\%.3f (QMC)\n',vqmc$value,vqmc$error))
cat(sprintf('Volume of unit sphere = \%.3f (exact)\n',4*pi/3))

}
\author{
Danail Obreschkow
}
