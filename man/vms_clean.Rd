% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vms_clean.R
\name{vms_clean}
\alias{vms_clean}
\title{Fixing dates and column names}
\usage{
vms_clean(path_to_data)
}
\arguments{
\item{path_to_data}{it can be a path to the file downloaded or the data object itself.
If function is used with a path it adds a \code{file} column to the returning data.frame object that
stores the name of the file as a reference.}
}
\value{
A data.frame
}
\description{
This function cleans raw Vessel Monitoring System, VMS, data column files,
eliminate NULL values in coordinates, parse dates, and returns a \code{data.frame}.
}
\details{
It takes a raw data file downloaded using the \code{vms_download()} function by
specifying directly its path or by referencing a data.frame already stored as an R object.
If path is used, column with the name of the raw file is conveniently added as future reference.
It also split date into three new columns \code{year}, \code{month}, \code{day}, and retains the original \code{date} column.
This function can be used with \code{apply} functions over a list
of files or it can be paralleled using \code{furrr} functions.
}
\examples{

# Using sample dataset, or a data.frame already stored as an object
# It is possible to use a path directly as argument

data("sample_dataset")
cleaned_vms <- vms_clean(sample_dataset)
head(cleaned_vms)

}
