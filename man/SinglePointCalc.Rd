\name{SinglePointCalc}
\alias{SinglePointCalc}
\title{
Calculate Frechet Distance With a Single Point Trajectory
}
\description{
A function to calculate the Frechet distance between two trajectories.  This function is called by the frechet function when one trajectory consists of a single point.  This function does not need to be directly called.
}
\usage{
SinglePointCalc(traj1, traj2)
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
This calculates the longest distance to the single point trajectory.  This is the Frechet distance for such a pair of trajectories.  This function is automatically called if required by the \code{\link{Frechet}} function, therefore it does not need to be called directly.
}
\value{
A floating point value representing the Frechet distance is returned.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{Frechet}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1), 1)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the Frechet distance algorithm which will
# automatically call this function.
Frechet(path1, path2)
}
