% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dump_concept.R
\name{dump_concept}
\alias{dump_concept}
\title{produce character stream for use with Protege entities/class hierarchy ingestion 
based on biocViews subgraphs}
\usage{
dump_concept(x, edob = edges(biocViewsVocab))
}
\arguments{
\item{x}{character(1) name of a node in the biocViewsVocab graph}

\item{edob}{a list as produced by graph::edges}
}
\value{
a character atom with x abutting left and edge targets tab-indented
}
\description{
produce character stream for use with Protege entities/class hierarchy ingestion 
based on biocViews subgraphs
}
\examples{
cat(substring(dump_concept("ResearchField"), 1, 152), "\n")
}
