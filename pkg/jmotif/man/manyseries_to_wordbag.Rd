% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{manyseries_to_wordbag}
\alias{manyseries_to_wordbag}
\title{Converts a set of time-series into a single wordbag}
\usage{
manyseries_to_wordbag(data, w_size, paa_size, a_size, nr_strategy, n_threshold)
}
\arguments{
\item{data}{the timeseries data, row-wise}

\item{w_size}{the sliding window size}

\item{paa_size}{the PAA size}

\item{a_size}{the alphabet size}

\item{nr_strategy}{the NR strategy}

\item{n_threshold}{the normalization threshold}
}
\description{
Converts a set of time-series into a single wordbag
}
\references{
Senin Pavel and Malinchik Sergey,
SAX-VSM: Interpretable Time Series Classification Using SAX and Vector Space Model.
Data Mining (ICDM), 2013 IEEE 13th International Conference on, pp.1175,1180, 7-10 Dec. 2013.

Salton, G., Wong, A., Yang., C.,
A vector space model for automatic indexing. Commun. ACM 18, 11, 613-620, 1975.
}

