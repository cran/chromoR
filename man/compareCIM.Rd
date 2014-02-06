\name{compareCIM}
\alias{compareCIM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compares 2 CIMs
}
\description{
Finds regions pairs that present significantly different interaction frequency 
between 2 chromosomal interactions maps (CIMs). Specifically, a Bayes Factor 
(BF) term is calculated for each pair and pairs with a BF score above a given 
threshold are reported.
}
\usage{
compareCIM(m1, m2, seg, bfThreshold = 6.1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m1}{
The first CIM (matrix) to be compared, where the cell m[i,j] is the interaction
 frequency between the genomic region i and the genomic region j.
}
  \item{m2}{
The second CIM (matrix) to be compared, where the cell m[i,j] is the interaction
frequency between the genomic region i and the genomic region j. 
(m1 and m2 should be of the same dimensions)
}
  \item{seg}{
A data table definding a genome segmentation, giving the genomic coordinates of 
each row/col in the given CIM. The data table should include the following 
columns for each region: chromosome name, start position and end position.
Users may also provide additional properties in the the next columns such as 
gene expression or cytogenetic band.
}
  \item{bfThreshold}{
Optional: the Bayes Factor cuttoff (set to 6.1 by default).
}
}
\value{
Returns a list with the following objects:
\item{sigChanges}{a data table listing all significant changes: the corrdinates 
of each region, the Bayes Factor value, the original and 
standartized values of the region pair in m1 and m2}
\item{mBf}{the Bayes Factor matrix giving the Bayes Factor value for each 
regions pair}
}
\references{
http://www.cl.cam.ac.uk/~ys388/chromoR/ (including more examples and data sets)
}
\author{
Yoli Shavit
}
\seealso{
See Also \code{\link{segmentCIM}}
}
\examples{
data(imr90.1) # corrected contact map of imr90 (replicate 1) for chromosomes 1,2 
data(imr90.2) # corrected contact map of imr90 (replicate 2) for chromosomes 1,2 
data(seg)
# compare replicates of the same celll type
res = compareCIM(imr90.1, imr90.2, seg) 
# no significant changes identified
res$sigChanges
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
