\name{Frechet}
\alias{Frechet}
\title{
Run the Frechet Calculation Algorithm on Two Trajectories
}
\description{
A function to calculate the Frechet distance between two trajectories.  The function can also be used to test leash values.
}
\usage{
Frechet(traj1, traj2, testLeash=-1)
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
  \item{testLeash}{
A numeric leash value, which if positive, checks whether the leash can be used between the two trajectories.  If this value is negative, then it is not used and the standard calculation is performed.
}
}
\details{
This algorithm calculates the Frechet distance.  The Frechet metric (or distance) is generally described in the following way: A man is walking a dog on a leash, the man walks on one curve while the dog walks on the other (Alt & Godau, 1995).  The dog and the man are able to vary their speeds, or even stop, but not go backwards.  The Frechet metric is the minimum leash length required to complete the traversal of both curves.  Please see the references for more information.
}
\value{
A floating point value representing the Frechet distance is returned.  If a test leash is given, then a boolean value is returned as true if the leash was successful and false if not.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Alt, H. and Godau, M. (1995) Computing the Frechet distance between two polygonal curves. \emph{International Journal of Computational Geometry & Applications}, \bold{5(01n02)}, 75--91.
}
\author{
Kevin Toohey
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the Frechet distance algorithm.
Frechet(path1, path2)
}