\name{FrechetCheck}
\alias{FrechetCheck}
\title{
Checks a Frechet Leash Distance
}
\description{
A function to check whether a Frechet leash distance is successful or not.  This is used by the Frechet calculation and does not need to be called directly.
}
\usage{
FrechetCheck(traj1, traj2, leash, dist1, dist2, distSq12)
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
  \item{leash}{
A numeric leash value to be checked by the function.
}
  \item{dist1}{
A vector containing the distance between each successive two points in trajectory1.
}
  \item{dist2}{
A vector containing the distance between each successive two points in trajectory2.
}
  \item{distSq12}{
A matrix containing the distance between each pair of two points where 1 point lies in trajectory1 and the other in trajectory2.
}
}
\details{
This function is required by \code{\link{Frechet}} and in general does not need to be called directly.
}
\value{
A boolean value is returned.  A value of true is returned if the leash is successful and false if not.
}
\references{
Alt, H. and Godau, M. (1995) Computing the Frechet distance between two polygonal curves. \emph{International Journal of Computational Geometry & Applications}, \bold{5(01n02)}, 75--91.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{Frechet}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the Frechet distance algorithm with a test leash of 2.
Frechet(path1, path2, 2)
}