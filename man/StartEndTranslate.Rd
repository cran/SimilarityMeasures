\name{StartEndTranslate}
\alias{StartEndTranslate}
\title{
Translate a Trajectory Based on Start and End Points
}
\description{
A function to translate, rotate and scale the points of trajectory2 using trajectory1.  The new trajectory will have the same start and end points as trajectory1.
}
\usage{
StartEndTranslate(traj1, traj2)
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
Every point of trajectory2 is rotated, scaled and translated so that the start and end points of the two trajectories match.  The new variation of trajectory2 is returned as a matrix. 
}
\value{
An m x n matrix containing the new variation of trajectory2 is returned.  Here m is the number of points and n is the dimension of the points.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{LCSSTranslation}}, \code{\link{AveTranslate}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the translation.
StartEndTranslate(path1, path2)
}
