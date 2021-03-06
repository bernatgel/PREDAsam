\name{PREDAResults-class}
\Rdversion{1.1}
\docType{class}
\alias{PREDAResults-class}
\title{Class "PREDAResults" ~is used to manage the PREDA analysis output }
\description{this class is used to manage the basic PREDA analysis output including smoothened statistic, pvalues and qvalues.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("PREDAResults", ids, chr, start, end, strand, chromosomesNumbers, chromosomesLabels, position, optionalAnnotations, optionalAnnotationsHeaders, analysesNames, testedTail, smoothStatistic, pvalue, qvalue)}.
}
\section{Slots}{
  \describe{
    \item{\code{analysesNames}:}{Object of class \code{"character"} a character vector of unique names associated to each column of smoothStatistic, pvalue and qvalue matrices.
                 This is just a name that is used to identify each analysis.}
    \item{\code{testedTail}:}{Object of class \code{"character"} a character describing what tail of the statistic distribution will be analyzed during PREDA analysis.
              Possible values are "upper", "lower" or "both". Anyway we strongly recommend using PREDA analysis only }
    \item{\code{smoothStatistic}:}{Object of class \code{"matrix"} a numeric matrix containing smoothed observed statistics as obtained from PREDA analysis.
             The smoothed statistics must be provided as a matrix of numeric values,
             with a number of rows equal to the length of "ids" slot and a number of columns equal
             to the length of "analysesNames" slot. }
    \item{\code{pvalue}:}{Object of class \code{"matrix"} a numeric matrix containing unadjusted gene-centered pvalues as obtained from PREDA analysis.
             The pvalue matrix must be provided as a matrix of numeric values,
             with a number of rows equal to the length of "ids" slot and a number of columns equal
             to the length of "analysesNames" slot. }
    \item{\code{qvalue}:}{Object of class \code{"matrix"} a numeric matrix containing adjusted gene-centered pvalues as obtained from PREDA analysis:
          i.e. usually FDR adjusted pvalues, but other multiple testing methods could be adopted as well
          The qvalue matrix must be provided as a matrix of numeric values,
          with a number of rows equal to the length of "ids" slot and a number of columns equal
          to the length of "analysesNames" slot. }
    \item{\code{position}:}{Object of class \code{"integer"} a numeric vector of reference genomic positions that will be associated and used for each genomic feature under investigation for smoothing data during PREDA analysis. }
    \item{\code{ids}:}{Object of class \code{"character"} a character vector of unique identifiers for the genomic features under investigation }
    \item{\code{chr}:}{Object of class \code{"integer"} a numeric vector representing the chromosome where each ids is mapped. 
            Please note that chromosome usually not represented with a number must will be comverted to a number as well. 
            e.g. for Human, chromsomomees X and Y will be converted to chromsomes 23 and 24 respectively.
            User defined options will allow this conversion during GenomicAnnotations objects initialization. }
    \item{\code{start}:}{Object of class \code{"integer"} a numeric vector of start genomic position for each genomic feature under investigation (i.e. gene, transcript, SNP or other elements). }
    \item{\code{end}:}{Object of class \code{"integer"} a numeric vector of end genomic position for each genomic feature under investigation (i.e. gene, transcript, SNP or other elements). }
    \item{\code{strand}:}{Object of class \code{"numeric"} a numeric vector of strand genomic position for each genomic feature under investigation: value 1 is used for "plus" (forward) strand and value -1 for "minus" (reverse) strand.
          User defined options will allow the conversion to this format during GenomicAnnotations objects initialization. }
    \item{\code{chromosomesNumbers}:}{Object of class \code{"numeric"} a numeric vector containing the list of chromosomes for which genomic annotations are provided in the GenomicAnnotations object.
                      Each chromosome is represented just once in increasing order. Please note that chromosome usually not represented with a number must will be comverted to a number as well.
                      e.g. for Human, chromsomomees X and Y will be converted to chromsomes 23 and 24 respectively. }
    \item{\code{chromosomesLabels}:}{Object of class \code{"character"} a character vector containing the list of chromosomes for which genomic annotations are provided in the GenomicAnnotations object.
                     Each chromosome is represented just once in the same order as reported in chromosomesNumbers slot.
                     This slot is actually used just to provide a label for each associated chromosome number, in case that some non numeric chromsome is used
                     (e.g. to preserve the correspondence between chr 23 and the actual chr X in Human) }
    \item{\code{optionalAnnotations}:}{Object of class \code{"matrix"} optional annotations associated to the genomic features can be managed along with genomic positions annotations.
                       E.g. GeneSymbol or EntrezGene ids can be associated to gene realted GenomicAnnotaitons objects.
                       These additional annotations are not mandatory (the default value for this slot is NULL)
                       The additional annotations must be provided as a matrix of character,
                       with a number of rows equal to the length of "ids" slot and a number of columns equal
                       to the length of "optionalAnnotationsHeaders" slot. }
    \item{\code{optionalAnnotationsHeaders}:}{Object of class \code{"character"} character vector containing the names associated to optional annotations. Please avoid using spaces in annotations names. }
  }
}
\section{Extends}{
Class \code{"\linkS4class{GenomicAnnotationsForPREDA}"}, directly.
Class \code{"\linkS4class{GenomicAnnotations}"}, by class "GenomicAnnotationsForPREDA", distance 2.
}
\section{Methods}{
  \describe{
    \item{GenomicAnnotationsSortAndCleanNA}{\code{signature(.Object = "PREDAResults")}: sort annotations according to selected chromosomes and to remove genes containing any NA annotation field }
    \item{initialize}{\code{signature(.Object = "PREDAResults")}: initialize method for PREDAResults objects }
    \item{PREDAResults2dataframe}{\code{signature(.Object = "PREDAResults")}: extact preda results statistics as a data frame object }
    \item{PREDAResults2GenomicRegions}{\code{signature(.Object = "PREDAResults")}: identify significant genomic regions from a PREDAResults object }
    \item{PREDAResults2GenomicRegionsSingle}{\code{signature(.Object = "PREDAResults")}: identify significant genomic regions from a single analysis in a PREDAResults object }
    \item{PREDAResults2PREDADataAndResults}{\code{signature(.Object = "PREDAResults")}: merge PREDAResults and input statistics to create a PREDADataAndResults object }
    \item{PREDAResultsGetObservedFlags}{\code{signature(.Object = "PREDAResults")}: extract genomic positions with significant alterations as a matrix of flags from a PREDAResults object }
	 }
}
\author{ Francesco Ferrari }
\note{ This class is better described in the package vignette}
\seealso{
\code{"\linkS4class{GenomicAnnotations}"}, \code{"\linkS4class{GenomicAnnotationsForPREDA}"},
\code{\link{GenomicAnnotationsSortAndCleanNA}}, \code{\link{PREDAResults2dataframe}},
\code{\link{PREDAResults2GenomicRegions}}, \code{\link{PREDAResults2GenomicRegionsSingle}},
\code{\link{PREDAResults2PREDADataAndResults}}, \code{\link{PREDAResultsGetObservedFlags}}
}
\examples{
showClass("PREDAResults")
}
\keyword{classes}
