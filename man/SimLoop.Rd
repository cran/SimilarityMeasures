\name{SimLoop}
\alias{SimLoop}
\title{
Loop Over and Test Trajectories With Different Translations
}
\description{
Function to loop over and test the trajectories using the different translations in each dimension.  This is used by the LCSS function to test all of the n dimensional translations.  Do not call this function directly.
}
\usage{
SimLoop(traj1, traj2, pointSpacing, pointDistance, spacing, 
        similarity, translations, dimensions, 
        dimLeft=dimensions, currentTrans=rep(0, dimensions))
}
\arguments{
  \item{traj1}{
An m x n matrix containing trajectory1.  Here m is the number of points and n is the dimension of the points.
}
  \item{traj2}{
A k x n matrix containing trajectory2.  Here k is the number of points and n is the dimension of the points.  The two trajectories are not required to have the same number of points.
}
  \item{pointSpacing}{
An integer value of the maximum index difference between trajectory1 and trajectory2 allowed in the calculation.
}
  \item{pointDistance}{
A floating point number representing the maximum distance in each dimension allowed for points to be considered equivalent.
}
  \item{spacing}{
The integer spacing between each translation that will be tested.
}
  \item{similarity}{
A vector containing the current best similarity and translations calculated.
}
  \item{translations}{
A list of vectors containing the translations in each dimension.
}
  \item{dimensions}{
An integer representing the number of dimensions being used for the calculation.
}
  \item{dimLeft}{
An integer number of dimensions which have not been looped over yet.
}
  \item{currentTrans}{
A vector containing the current translation being tested.
}
}
\details{
This function is used to loop over the n dimensions for the \code{\link{LCSS}} function.  This function should not be called directly.
}
\value{
Returns the current best LCSS value and the translations that created this as a vector.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{LCSS}}, \code{\link{LCSSRatio}}, \code{\link{LCSSRatioCalc}}, \code{\link{LCSSTranslation}}, \code{\link{LCSSCalc}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the LCSS algorithm on the trajectories.
LCSS(path1, path2, 2, 2, 0.5)
}
