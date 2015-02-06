\name{TrajCheck}
\alias{TrajCheck}
\title{
Checking Two Trajectories are Matrices of N Dimensional Points
}
\description{
This function checks whether two trajectories are compatible with the functions provided.  They are first checked if they are represented as matrices.  They are then checked to ensure that points in both trajectories have the same dimensions.
}
\usage{
TrajCheck(traj1, traj2)
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
}
\details{
This function is useful for determining if the trajectories are compatible with the many functions provided.  This function is performed at the start of most other functions to ensure that no major errors can occur and that the results make sense.
}
\value{
If there is a problem with one of the checks then a string containing information is returned.  If all of the checks pass then -1 is returned.
}
\author{
Kevin Toohey
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)
path3 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 2)

# Running the trajectory check on the trajectories.
TrajCheck(path1, path2)
TrajCheck(path1, path3)
}