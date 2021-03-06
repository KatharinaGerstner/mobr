% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/mobr.R
\name{expS_negbin}
\alias{expS_negbin}
\title{Expected number of species from negative binomial}
\usage{
expS_negbin(rsad, n_indiv, k)
}
\arguments{
\item{rsad}{relative species abundance distribution (p_i's)}

\item{n_indiv}{how many individuals are sampled}

\item{k}{aggregation parameter (e.g., see Green & Plotkin 2007)
k cannot be between [-max(sad) * n_indiv, 0].}
}
\value{
the average expected number of species under the
negative binomial distribution for a sample size of n_indiv
}
\description{
assuming that there is a common aggregation parameter k
that does not change with scale.
}
\examples{
sad = rpois(100, 5)
rsad = sad / sum(sad)
expS_negbin(rsad, 1:10, 0.5)
}

