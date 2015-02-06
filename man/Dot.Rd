\name{Dot}
\alias{Dot}
\title{
Calculate the Dot Product Between Two Vectors
}
\description{
A function to calculate the dot product between two vectors.  This is used in the Frechet algorithm and does not need to be called directly.
}
\usage{
Dot(vect1, vect2, dimensions=length(vect1))
}
\arguments{
  \item{vect1}{
An n dimensional vector representing the first vector.
}
  \item{vect2}{
An n dimensional vector representing the second vector.
}
  \item{dimensions}{
An integer representing the number of dimensions being used for the dot product calculation.  This defaults to the length of the first vector.
}
}
\details{
This function is called by the \code{\link{Frechet}} function.
}
\value{
A floating point value is returned, representing the dot product between the two vectors.
}
\author{
Kevin Toohey
}