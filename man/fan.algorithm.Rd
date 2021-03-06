% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fan_algorithm.R
\name{fan.algorithm}
\alias{fan.algorithm}
\title{Grows fast-and-frugal trees using the fan algorithm}
\usage{
fan.algorithm(formula, data, max.levels = 5, algorithm = "ifan",
  goal = "wacc", goal.chase = "bacc", sens.w = 0.5, cost.outcomes = c(0,
  1, 1, 0), cost.cues = NULL, numthresh.method = "o",
  stopping.rule = "exemplars", stopping.par = 0.1, rounding = NULL,
  progress = TRUE, repeat.cues = TRUE)
}
\arguments{
\item{formula}{formula. A formula}

\item{data}{dataframe. A dataset}

\item{max.levels}{integer. The maximum number of levels in the tree(s)}

\item{algorithm}{character. A string indicating how to rank cues during tree construction. "ifan"  (independent fan) means that cues will only be ranked once with the entire training dataset "dfan" (dependent fan) means that cues will be ranked after each level in the tree with the remaining unclassified training exemplars.}

\item{goal}{character. A string indicating the statistic to maximize: "acc" = overall accuracy, "bacc" = balanced accuracy, "wacc" = weighted accuracy, "bacc" = balanced accuracy}

\item{goal.chase}{character. A string indicating the statistic to maximize when constructing trees: "acc" = overall accuracy, "wacc" = weighted accuracy, "bacc" = balanced accuracy}

\item{sens.w}{numeric. A number from 0 to 1 indicating how to weight sensitivity relative to specificity.}

\item{cost.outcomes}{numeric. A vector of length 4 specifying the costs of a hit, false alarm, miss, and correct rejection rspectively. E.g.; \code{cost.outcomes = c(0, 10, 20, 0)} means that a false alarm and miss cost 10 and 20 respectively while correct decisions have no cost.}

\item{cost.cues}{dataframe. A dataframe with two columns specifying the cost of each cue. The first column should be a vector of cue names, and the second column should be a numeric vector of costs. Cues in the dataset not present in \code{cost.cues} are assume to have 0 cost.}

\item{numthresh.method}{character. How should thresholds for numeric cues be determined? \code{"o"} will optimize thresholds, while \code{"m"} will always use the median.}

\item{stopping.rule}{character. A string indicating the method to stop growing trees. \code{"levels"} means the tree grows until a certain level, \code{"exemplars"} means the tree grows until a certain number of unclassified exemplars remain. \code{"statdelta"} means the tree grows until the change in the criterion statistic is less than a specified level.}

\item{stopping.par}{numeric. A number indicating the parameter for the stopping rule. For stopping.rule == \code{"levels"}, this is the number of levels. For stopping rule \code{"exemplars"}, this is the smallest percentage of examplars allowed in the last level.}

\item{rounding}{integer. How much should threshold parameters be rounded? Default is}

\item{progress}{logical. Should tree growing progress be displayed?}

\item{repeat.cues}{logical. Can cues occur multiple times within a tree?}

\item{...}{Currently ignored}
}
\value{
A definition of an FFT
}
\description{
Grows fast-and-frugal trees using the fan algorithm
}
