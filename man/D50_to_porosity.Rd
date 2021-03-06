% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SEDIMENT functions.R
\name{D50_to_porosity}
\alias{D50_to_porosity}
\title{Calculate sediment porosity}
\usage{
D50_to_porosity(D50, p1 = -1.035, p2 = -0.314, p3 = -0.435, p4 = 0.302)
}
\arguments{
\item{D50}{The median grain size at a location.}

\item{p1}{A parameter in the relationship.}

\item{p2}{A parameter in the relationship.}

\item{p3}{A parameter in the relationship.}

\item{p4}{A parameter in the relationship.}
}
\value{
A numeric vector containing estimates of sediment porosity in % (can be length 1).
}
\description{
This function takes median grain size at a location and returns a measure of porosity. The default
parameterisation comes from Matt Pace's thesis for fine sediments. The numerical order of parameters
has been changed from Matt's to be consistent with StrathE2E.
}
\examples{
data <- data.frame(D50 = seq(0, 1, length.out = 1000)) \%>\%
mutate(Porosity = D50_to_porosity(D50))

ggplot(data) +
geom_line(aes(x = D50, y = Porosity)) +
scale_x_continuous(trans = "log", breaks = c(0.001,0.01,0.1,1))
}
\seealso{
Other Sediment properties: 
\code{\link{mud_to_permeability}()}
}
\concept{Sediment properties}
