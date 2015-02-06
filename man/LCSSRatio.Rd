\name{LCSSRatio}
\alias{LCSSRatio}
\title{
Find the LCSS Ratio using Two Trajectories Allowing Translations
}
\description{
A function to calculate the longest common subsequence ratio using two trajectories.  This calculation automatically uses translations to find the largest value.
}
\usage{
LCSSRatio(traj1, traj2, pointSpacing=-1, pointDistance=20, 
          errorMarg=2, returnTrans=FALSE)
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
  \item{errorMarg}{
A floating point error margin used to scale the accuracy and speed of the calculation.
}
  \item{returnTrans}{
A boolean value to allow the best translation found to be returned as well as the LCSS value if set to true.
}
}
\details{
The LCSS algorithm calculates the largest number of equivalent points between the two trajectories when traversed in a monotone way.  The ratio of this value to the smallest number of points out of the two trajectories is then calculated.  Possible translations are calculated in each dimension and used to provide the maximum LCSS.  The accuracy of the algorithm can be varied to provide faster or slower calculations.  Please see the references for more information.
}
\value{
A floating point value is returned.  This represents the maximum LCSS ratio obtained using the variables provided.  If returnTrans is set to TRUE, then the LCSS ratio and the translations are returned as a vector.  The first value of this vector is the LCSS ratio and the translations follow directly afterwards.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Vlachos, M., Kollios, G. and Gunopulos, D. (2002) Discovering similar multidimensional trajectories. Paper presented at the Data Engineering, 2002. Proceedings. 18th International Conference on.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{LCSSCalc}}, \code{\link{LCSS}}, \code{\link{LCSSRatioCalc}}, \code{\link{LCSSTranslation}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the LCSS ratio algorithm on the trajectories.
LCSSRatio(path1, path2, 2, 2, 0.5)

# Running the LCSS ratio algorithm on the trajectories
# and returning the translation as well.
LCSSRatio(path1, path2, 2, 2, 0.5, TRUE)
}
