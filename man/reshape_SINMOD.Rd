% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SEDIMENT functions.R
\name{reshape_SINMOD}
\alias{reshape_SINMOD}
\title{Subset a SINMOD file to depth-averaged water velocities in an area.}
\usage{
reshape_SINMOD(path, file, out_dir, window)
}
\arguments{
\item{path}{a character string directing to the source file location.}

\item{file}{the name of a netcdf file to process.}

\item{out_dir}{a character string directing to the folder the new files should be written to.}

\item{window}{a named list containing `xmin`, `xmax`, `ymin`, `ymax`, the indices of the window to crop to.}
}
\value{
A netcdf file containing depth averaged UV water velocities cropped to the target window.
}
\description{
This function is a wrapper for system calls to NCO functions. A single SINMOD netcdf file contains a
large grid covering the Arctic with extra variables we don't need. This function crops the spatial extent,
performs a weighted average across depth layers, and limits to variables `u_east` and `v_north`.
}
\details{
Performing the reshaping directly on the netcdf files means I can host a small subset locally on my machine. This avoids
costly queries to the idrive later on. These files can also then be concatenated into a single netcdf file, allowing data
to be read into R pixel by pixel, unlike saving a clipped dataframe as a .rds object.
}
\seealso{
Other water movements: 
\code{\link{get_bed_shear_stress}()},
\code{\link{get_tides_ts}()},
\code{\link{get_waves_ts}()},
\code{\link{sample_tides_year}()},
\code{\link{sample_waves}()}
}
\concept{water movements}
