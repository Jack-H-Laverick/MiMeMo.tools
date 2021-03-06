% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Boundary functions.R
\name{boundaries}
\alias{boundaries}
\title{Create a series of transects along the boundaries of model compartments}
\usage{
boundaries(domain, crs)
}
\arguments{
\item{domain}{An SF object containing polygons for the geographic extent of the inshore and offshore zones for the project.}

\item{crs}{The coordinate reference system for the project. This should be specified in the project region file.}
}
\value{
The function returns a dataframe containg SF boundary transects around the model domain, a length column is
included for weighting transects in future averaging functions.
}
\description{
This function takes the domain polygon file and returns transects for use when sampling
fluxes across boundaries between model compartments.
}
\details{
The function exposes the geometry for the domain polygons to the `to_segments` function.
`to_segments` converts the geometry into a collection of transects and passes them back to this function.
A unique id is added for each transect along with the length of the transect for use when
calculating weighted averages.
}
\seealso{
Other Boundary sampling functions: 
\code{\link{characterise_flows}()},
\code{\link{to_segments}()}
}
\concept{Boundary sampling functions}
