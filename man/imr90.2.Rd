\name{imr90.2}
\alias{imr90.2}
\docType{data}
\title{
A  CIM of replicate 2 of IMR90, for chromosomes 1 and 2
}
\description{
A corrected chromosomal interaction map (CIM) for replicate 2 of IMR90, 
for chromosomes 1 and 2, generated from a publicly available Hi-C data set [1].
This matrix was built with BuildCIM given Hi-C mapped positions 
(publicly available from 
http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE35156) and then further 
corrected with CorrectCIM.
}
\usage{data(imr90.2)}
\format{
  A matrix
  }
\references{
[1] J. R. Dixon, S. Selvaraj, F. Yue, A. Kim, Y. Li, Y. Shen, M. Hu, J. S. Liu 
and B. Ren, Nature, 2012, 485, 376. 

See also http://www.cl.cam.ac.uk/~ys388/chromoR/ for the genome wide CIM.  
}
\examples{
data(imr90.2)
}
\keyword{datasets}