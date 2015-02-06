\name{EditDist}
\alias{EditDist}
\title{
Run the Edit Distance Algorithm on Two Trajectories
}
\description{
A function to calculate the edit distance between two trajectories.
}
\usage{
EditDist(traj1, traj2, pointDistance=20)
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
  \item{pointDistance}{
A floating point number representing the maximum distance in each dimension allowed for points to be considered equivalent.
}
}
\details{
The edit distance algorithm calculates the minimum number of edits required to allow the two trajectories to be considered equivalent.  This function uses Edit Distance on Real sequence (EDR) as described by Chen et al. (2005).  Please see the references for more information.
}
\value{
An integer representing the minimum number of edits required is returned.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Chen, L., Ozsu, M. T. and Oria, V. (2005) Robust and fast similarity search for moving object trajectories. Paper presented at the Proceedings of the 2005 ACM SIGMOD international conference on Management of data, Baltimore, Maryland. 
}
\author{
Kevin Toohey
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the edit distance algorithm with point distance 
# set to 2.
EditDist(path1, path2, 2)
}