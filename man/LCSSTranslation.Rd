\name{LCSSTranslation}
\alias{LCSSTranslation}
\title{
Create a Translation Vector Using LCSS
}
\description{
A function to return the best translation calculated using the LCSS method.  The vector created can be used to translate trajectory2's points to the position of the maximum LCSS found with trajectory1.
}
\usage{
LCSSTranslation(traj1, traj2, pointSpacing=-1, pointDistance=20, 
                errorMarg=2)
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
}
\details{
The LCSS function is called using the two trajectories along with the given variables.  The optimal translation vector is then returned from this result.  Please see the references for more information.
}
\value{
A vector of length n is returned containing the translation in each dimension.  If a problem occurs, then a string containing information about the problem is returned.
}
\references{
Vlachos, M., Kollios, G. and Gunopulos, D. (2002) Discovering similar multidimensional trajectories. Paper presented at the Data Engineering, 2002. Proceedings. 18th International Conference on.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{AveTranslate}}, \code{\link{StartEndTranslate}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the translation.
LCSSTranslation(path1, path2, 1, 1, 0.5)
}
