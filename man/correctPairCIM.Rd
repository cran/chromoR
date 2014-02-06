\name{correctPairCIM}
\alias{correctPairCIM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Corrects a pairwise CIM
}
\description{
This function applies a wavelet based correction to remove bias and noise, 
typical of Hi-C data, from pairwise chromosomal interaction maps(CIM).
}
\usage{
correctPairCIM(m, isCis)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
 A 	pairwise (i.e between 2 chromosomes) CIM (matrix), where the cell m[i,j] 
 is the interaction frequency between the genomic region i and the genomic 
 region j.
}
\item{isCis}{
A boolean specifying whether this matrix describes cis (the same chromosome) 
or trans (different chromosomes) pairwise contacts.
}
}
\value{
Returns the corrected CIM
}
\references{
http://www.cl.cam.ac.uk/~ys388/chromoR/
}
\author{
Yoli Shavit
}
\seealso{
See Also \code{\link{correctCIM}}, \code{\link{compareCIM}}
}
\examples{
# correction of a single pair
data(imr90.1.obs)
data(seg.imr90.obs)
# take a pairwise matrix and correct it 
indices = which(seg.imr90.obs$chr == "chr1")
i1 = indices[1]
iN = indices[length(indices)]
indices = which(seg.imr90.obs$chr == "chr2")
j1 = indices[1]
jN = indices[length(indices)]
m.1.2 = imr90.1.obs[i1:iN, j1:jN]
# set isCis to FALSE because we correct for a pair of different chromosomes
m.1.2.corrected = correctPairCIM(m.1.2, FALSE)
m.1.2.corrected
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
