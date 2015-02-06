\name{DistanceCheck}
\alias{DistanceCheck}
\title{
Check if Two Points Lie Within some Distance in All Dimensions
}
\description{
A function to check whether two points lie within some distance in every dimension.
}
\usage{
DistanceCheck(point1, point2, dist, dimensions=length(point1))
}
\arguments{
  \item{point1}{
An n dimensional vector representing point1.
}
  \item{point2}{
An n dimensional vector representing point2.
}
  \item{dist}{
A floating point number representing the maximum distance in each dimension allowed for points to be considered equivalent.
}
  \item{dimensions}{
An integer representing the number of dimensions being checked.  This defaults to the length of the first vector.
}
}
\value{
A boolean value is returned.  The value is true if the points are within the distance in every dimension and false if not.
}
\author{
Kevin Toohey
}
\examples{
# Creating two points.
point1 <- c(0, 2, 4, 6)
point2 <- c(0, 1, 2, 3)

# Running the check with distances 1 and 3 in 4 dimensions.
DistanceCheck(point1, point2, 1, 4)
DistanceCheck(point1, point2, 3, 4)
}
