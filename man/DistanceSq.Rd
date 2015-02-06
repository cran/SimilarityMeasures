\name{DistanceSq}
\alias{DistanceSq}
\title{
Calculate the Square Distance Between Two Points
}
\description{
A function to calculate the square of the distance between two points.
}
\usage{
DistanceSq(point1, point2, dimensions=length(point1))
}
\arguments{
  \item{point1}{
An n dimensional vector representing point1.
}
  \item{point2}{
An n dimensional vector representing point2.
}
  \item{dimensions}{
An integer representing the number of dimensions being used for the distance square calculation.  This defaults to the length of the first vector.
}
}
\value{
A floating point value is returned, representing the square of the distance between the two points.
}
\author{
Kevin Toohey
}
\examples{
# Creating two points.
point1 <- c(0, 2, 4, 6)
point2 <- c(0, 1, 2, 3)

# Calculating the square distance between the two points 
# in 4 dimensions.
DistanceSq(point1, point2, 4)
}