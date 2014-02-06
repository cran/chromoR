\name{correctCIM}
\alias{correctCIM}
\title{
Corrects a chromosomal interactions map  (CIM)
}
\description{
This function applies a wavelet based correction to remove bias and noise, typical of Hi-C data, from a chromosomal interactions map (CIM).
}
\usage{
correctCIM(m, seg, removeUncovered = FALSE)
}
\arguments{
  \item{m}{
 A 	CIM (matrix), where the cell m[i,j] is the interaction frequency between the
 genomic region i and the genomic region j.
}
  \item{seg}{
A data table definding a genome segmentation, giving the genomic coordinates of 
each row/col in the given CIM. The data table should include the following columns 
for each region: chromosome name, start position and end position.
}
  \item{removeUncovered}{
Optional: a boolean specifying whether regions that are uncovered 
(i.e. no interaction with other regions) should be removed before correction.
set to FALSE by default.
}
}
\value{
Returns a list with the following objects:
 \item{mCorrected }{the corrected contat map}
\item{seg }{a data table defining the genomic coordinates of each row/col in the 
corrected map (if removeUncoevered is set to FALSE, this would be the same as the input segmentation)}
}
\references{
http://www.cl.cam.ac.uk/~ys388/chromoR/ (including more examples and data sets)
}
\author{
Yoli Shavit
}
\seealso{
See Also \code{\link{correctPairCIM}}, \code{\link{compareCIM}}
}
\examples{
# correction
data(imr90.1.obs) #contact map of imr90 (replicate 1) 
                  #for chromosomes 1 and 2, before correction 
data(seg.imr90.obs) 
head(seg.imr90.obs)
res = correctCIM(imr90.1.obs, seg.imr90.obs, removeUncovered = TRUE)
# the corrected CIM - look at the first cell in the matrix.
# Note the difference in dimensions 
#(with respect to imr90.1.orig) since we set removeUncevered to TRUE
(res$mCorrected)[1,1]
dim(res$mCorrected)
# the coordinates for the corrected matrix 
head(res$seg)
nrow(res$seg)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
