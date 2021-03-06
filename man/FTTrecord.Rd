% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FTT.R
\docType{class}
\name{FTTrecord}
\alias{FTTrecord}
\title{A Reference Class for storing and manipulating the results and data from a four taxon test.}
\description{
A Reference Class for storing and manipulating the results and data from a four taxon test.
}
\section{Fields}{

\describe{
\item{\code{P1}}{Character The population which forms the P1 taxon in the four taxon test.}

\item{\code{P2}}{Character The population which forms the P2 taxon in the four taxon test.}

\item{\code{P3}}{Character The population which forms the P3 taxon in the four taxon test.}

\item{\code{A}}{Character The population which forms the ancestral/outgroup taxon in the 
four taxon test.}

\item{\code{numBlocks}}{integer The number of blocks the DNA sequence alignment was split 
into in order to perform the test.}

\item{\code{blockLength}}{integer The number of base pairs to each block the DNA sequence 
alignment was split into to perform the test.}

\item{\code{ABBA}}{numeric The global sum of ABBA sites. 
Given by \eqn{(1 - Pr_1) * Pr_2 * Pr_3 * (1 - Pr_4)}. 
Where \eqn{Pr_i} is the frequency of the derived allele in the i'th population.}

\item{\code{ABBA}}{numeric The global sum of BABA sites. 
Given by \eqn{Pr_1 * (1 - Pr_2) * Pr_3 * (1 - Pr_4)}.
Where \eqn{Pr_i} is the frequency of the derived allele in the i'th population.}

\item{\code{ABBAcount}}{integer The number of sites for which ABBA was greater than BABA.}

\item{\code{BABAcount}}{integer The number of sites for which BABA was greater than ABBA.}

\item{\code{globalX2}}{numeric A chi squared value computed during the four taxon test. 
Used to assess whether ABBAcount and BABAcount are significantly different,
based on the binomial distribution.}

\item{\code{X2_P}}{numeric A p-value computer by the Fisher combined probability
test based on globalX2. Indicates whether ABBAcount and BABAcount differ significantly.}

\item{\code{D_jEstimate}}{numeric Patterson's D estimate based on jackknifeing the blocks of data.}

\item{\code{Fd_1DD4_jEstimate}}{numeric A jackknifed estimate of Fd for complete introgression 
between populations 2 and 3.}

\item{\code{Fd_D2D4_jEstimate}}{numeric A jackknifed estimate of Fd for complete introgression 
between populations 1 and 3.}

\item{\code{D_jVariance}}{numeric Variance of Pattersons D estimates from jackknife.}

\item{\code{Fd_1DD4_jVariance}}{numeric Variance of Fd estimates from jackknife.
Where Fd is for total introgression between Populations 2 and 3.}

\item{\code{Fd_D2D4_jVariance}}{numeric Variance of Fd estimates from jackknife.
Where Fd is for total introgression between Populations 1 and 3.}

\item{\code{D_jSD}}{numeric Standard deviation of Patterson's D estimates from jackknife.}

\item{\code{Fd_1DD4_jSD}}{numeric Standard deviation of Fd estimates from jackknife.
Where Fd is for total introgression between Populations 2 and 3.}

\item{\code{Fd_D2D4_jSD}}{numeric Standard deviation of Fd estimates from jackknife.
Where Fd is for total introgression between Populations 1 and 3.}

\item{\code{D_jZ}}{numeric The Z score of Patterson's D, computed from the jackknife data.}

\item{\code{Fd_1DD4_jZ}}{numeric The Z score of Fd, computed from the jackknife data.
Where Fd is calculated for complete introgression between populations 2 and 3.}

\item{\code{Fd_D2D4_jZ}}{numeric The Z score of Fd, computed from the jackknife data.
Where Fd is calculated for complete introgression between populations 1 and 3.}

\item{\code{tableFile}}{character A character string indicating the temporary file
used to store the dataframe accessed with the table field.}

\item{\code{table}}{function An accessor function used to access a table of results stored
in a temporary file on disk. The location of this file is indicated by the tableFile
field.}
}}

\section{Methods}{

\describe{
\item{\code{blankTable()}}{Method clears the table.}

\item{\code{getPops()}}{Gets the population names from the result.}

\item{\code{getTable(includeGlobal, neat)}}{Gets the results table for the blocks used to analyze the data.}

\item{\code{globallySignificant()}}{Returns true if the test is significant according to the binomial.}

\item{\code{initialize(p1, p2, p3, a, HCDir)}}{Initialize the result object.}

\item{\code{noTestPerformed()}}{Returns true if a test has not been performed yet.}
}}

