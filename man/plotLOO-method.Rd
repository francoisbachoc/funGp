% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/7_plottingFunctions.R
\name{plotLOO,fgpm-method}
\alias{plotLOO,fgpm-method}
\title{Leave-one-out calibration plot for a funGp model}
\usage{
\S4method{plotLOO}{fgpm}(model, ...)
}
\arguments{
\item{model}{an object of class \linkS4class{fgpm} corresponding to the funGp model to validate.}

\item{...}{additional arguments affecting the plot. The following typical graphics parameters are
valid entries: \emph{xlim}, \emph{ylim}, \emph{xlab}, \emph{ylab}, \emph{main}.}
}
\value{
None.
}
\description{
This method provides a diagnostic plot for the validation of a funGp Gaussian process model.
  It displays a calibration plot based on the leave-one-out predictions of the output at the points
  used to train the model.
}
\examples{
# generating input and output data for training
set.seed(100)
n.tr <- 25
sIn <- expand.grid(x1 = seq(0,1,length = sqrt(n.tr)), x2 = seq(0,1,length = sqrt(n.tr)))
fIn <- list(f1 = matrix(runif(n.tr*10), ncol = 10), f2 = matrix(runif(n.tr*22), ncol = 22))
sOut <- fgp_BB3(sIn, fIn, n.tr)

# building the model
m1 <- fgpm(sIn = sIn, fIn = fIn, sOut = sOut)

# plotting the model
plotLOO(m1)

}
\seealso{
\strong{*} \link[funGp]{fgpm} for the construction of funGp models;

\strong{*} \link[funGp]{plotPreds} for prediction plots;

\strong{*} \link[funGp]{plotSims} for simulation plots.
}
\author{
José Betancourt, François Bachoc and Thierry Klein
}
