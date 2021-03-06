% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compareModules.R
\name{compareModules}
\alias{compareModules}
\title{compareModules}
\usage{
compareModules(corr, model, test_modules, plot = TRUE)
}
\arguments{
\item{corr}{A correlation matrix or a 3D array of landmarks. If 3D then a correlation matrix
is calculated with \link[paleomorph]{dotcorr}}

\item{model}{Either a vector of numbers describing a model of modules, or a 2 column dataframe
with the first bein landmark names and the second being the module definitions.}

\item{test_modules}{A vector of two module numbers to compare, or if the modules are named, the names
of those two modules.}

\item{plot}{Logical - if TRUE the plot is drawn.}
}
\value{
A list with two elements - the first is the result of an ANOVA compaing the mean
correlations within- and between-modules, and the second is the results of a TukeyHSD test on
that ANOVA. If plot = TRUE a plot showing these results is called.
}
\description{
This takes a correlation matrix or 3D landmark array, a model definition, and then two module
numbers or names to compare. It plots (if plot = TRUE) a figure of three boxplots - the first
two are the correltions within each of the two modules, and the third is the between-module
correlations. These boxes are coloured such that matching colours are not significantly
different according to a Tukey HSD test. The results of the anova and tukey HSD test are
also returned.
}
\examples{
data(macacaCorrel)
data(macacaModels)
# Pick a model to draw modules from - as a vector.
model <- macacaModels$Goswami
compareModules(corr = macacaCorrel, model = model, test_modules = c(2, 5))

# Or as a 2 column dataframe...
model <- macacaModels[ , c(1, 4)]
compareModules(corr = macacaCorrel, model = model, test_modules = c(2, 5))
}
