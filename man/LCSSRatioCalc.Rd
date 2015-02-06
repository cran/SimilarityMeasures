\name{LCSSRatioCalc}
\alias{LCSSRatioCalc}
\title{
Find the LCSS Ratio using Two Trajectories Without Translations
}
\description{
A function to calculate the longest common subsequence ratio using two trajectories.  This function does not calculate translations and only uses the given trajectories and optional translation.
}
\usage{
LCSSRatioCalc(traj1, traj2, pointSpacing=-1, pointDistance=20, 
              trans=rep(0.0, (dim(traj1)[2])))
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
  \item{pointDistance}{
A floating point number representing the maximum distance in each dimension allowed for points to be considered equivalent.
}
  \item{trans}{
A vector containing translations in each dimension to be applied to trajectory2 in this calculation.
}
}
\details{
The LCSS algorithm calculates the largest number of equivalent points between the two trajectories when traversed in a monotone way.  The ratio of this value to the smallest number of points out of the two trajectories is then calculated.  If a translation is given then this is applied before the calculation is done.  Please see the references for more information.
}
\value{
A floating point value is returned.  This represents the maximum LCSS ratio obtained using the variables provided.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Vlachos, M., Kollios, G. and Gunopulos, D. (2002) Discovering similar multidimensional trajectories. Paper presented at the Data Engineering, 2002. Proceedings. 18th International Conference on.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{LCSS}}, \code{\link{LCSSRatio}}, \code{\link{LCSSCalc}}, \code{\link{LCSSTranslation}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the LCSS ratio algorithm on the trajectories.
LCSSRatioCalc(path1, path2, 2, 2, c(0, 3))
}