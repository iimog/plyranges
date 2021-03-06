% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io-wig.R
\name{read_wig}
\alias{read_wig}
\title{Read a WIG file}
\usage{
read_wig(file, genome_info = NULL, overlap_ranges = NULL)
}
\arguments{
\item{file}{A path to a file or a connection.}

\item{genome_info}{An optional character string or a Ranges object
that contains information about the genome build. For example the USSC identifier
"hg19" will add build information to the returned GRanges.}

\item{overlap_ranges}{An optional Ranges object. Only the intervals in the file
that overlap the Ranges will be returned.}
}
\value{
A GRanges object

A GRanges object
}
\description{
This is a lightweight wrapper to the import family
of functions defined in \pkg{rtracklayer}.
}
\examples{
test_path <- system.file("tests", package = "rtracklayer")
test_wig <- file.path(test_path, "step.wig")
gr <- read_wig(test_wig)
gr
gr <- read_wig(test_wig, genome_info = "hg19")
}
\seealso{
\code{\link[rtracklayer:WIGFile]{rtracklayer::WIGFile()}}
}
