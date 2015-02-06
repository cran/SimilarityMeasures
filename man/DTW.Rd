\name{DTW}
\alias{DTW}
\title{
Run the Dynamic Time Warping Algorithm on Two Trajectories
}
\description{
A function to calculate the dynamic time warping value between two trajectories.
}
\usage{
DTW(traj1, traj2, pointSpacing=-1)
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
  \item{pointSpacing}{
An integer value of the maximum index difference between trajectory1 and trajectory2 allowed in the calculation.  A negative value sets the point spacing to unlimited.
}
}
\details{
The dynamic time warping algorithm (DTW) calculates the smallest warp path for the two trajectories.  This is the DTW version discussed by Berndt & Clifford (1994).  Several variations of calculating the warping cost exist.  In this version, the warping path is equal to the sum of the distances at each point along the path.  Please see the references for more information.
}
\value{
A floating point value representing the smallest warp path is returned.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Berndt, D. and Clifford, J. (1994) Using Dynamic Time Warping to Find Patterns in Time Series. Paper presented at the KDD workshop.
}
\author{
Kevin Toohey
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the dynamic time warping algorithm with point spacing 
# set to 4.
DTW(path1, path2, 4)
}