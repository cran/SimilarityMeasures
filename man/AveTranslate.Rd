\name{AveTranslate}
\alias{AveTranslate}
\title{
Create an Average Point Translation Vector
}
\description{
A function to calculate a translation vector for trajectory2 using the average of the two trajectories.  The vector created can be used to translate the average of trajectory2's points to that of trajectory1.
}
\usage{
AveTranslate(traj1, traj2)
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
The average of each dimension of both trajectories is calculated.  The required translation is then calculated from the difference between them.
}
\value{
A vector of length n is returned containing the translation in each dimension.  If there is a problem this returns a string of information instead.
}
\author{
Kevin Toohey
}

\seealso{
\code{\link{LCSSTranslation}}, \code{\link{StartEndTranslate}}
}
\examples{
# Creating two trajectories.
path1 <- matrix(c(0, 1, 2, 3, 0, 1, 2, 3), 4)
path2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7), 4)

# Running the translation.
AveTranslate(path1, path2)
}

