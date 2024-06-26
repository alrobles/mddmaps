% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_mdd_order.R
\name{get_mdd_order}
\alias{get_mdd_order}
\title{Function to return mammal shapefiles of Rodentia order}
\source{
Expert range maps of global mammal distributions harmonised to
three taxonomic authorities
\doi{doi:10.5281/zenodo.10806734}
}
\usage{
get_mdd_order(order, version, dir = NULL)
}
\arguments{
\item{order}{The mammal order want to  download}

\item{version}{The taxonomy version}

\item{dir}{A directory where to write the output}
}
\value{
A SpatVector object with mammal shapefiles
}
\description{
Function to return mammal shapefiles of Rodentia order
}
\examples{
get_mdd_order(version = "test")
}
