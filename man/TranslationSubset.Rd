\name{TranslationSubset}
\alias{TranslationSubset}
\title{
Calculate the Subset of Translations for LCSS
}
\description{
A function for calculating the subsets of translations to be tested using the LCSS methods.
}
\usage{
TranslationSubset(traj1, traj2, pointSpacing, pointDistance)
}
\arguments{
  \item{traj1}{
A vector containing one dimension of trajectory1.
}
  \item{traj2}{
A vector containing one dimension of trajectory2.
}
  \item{pointSpacing}{
An integer value of the maximum index difference between trajectory1 and trajectory2 allowed in the calculation.
}
  \item{pointDistance}{
A floating point number representing the maximum distance in each dimension allowed for points to be considered equivalent.
}
}
\details{
This function is called by the \code{\link{LCSS}} method to calculate the translations required.
}
\value{
A vector of floating point numbers is returned containing the translations calculated.  This vector is sorted in ascending order.
}
\author{
Kevin Toohey
}
\seealso{
\code{\link{LCSS}}
}
