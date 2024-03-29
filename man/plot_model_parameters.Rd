% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot_model_parameters}
\alias{plot_model_parameters}
\title{Plot best-fitting parameters of model fit}
\usage{
plot_model_parameters(
  model_fit,
  model,
  id_var = "id",
  set_size_var = NULL,
  condition_var = NULL,
  n_col = 2,
  return_data = FALSE,
  palette = "Dark2"
)
}
\arguments{
\item{model_fit}{The model fit object containing the parameters to be
plotted.}

\item{model}{A string indicating the model that was fit to the data. Currently
the options are "2_component", "3_component", "slots", and "slots_averaging".}

\item{id_var}{The column name coding for participant id.}

\item{set_size_var}{The column name (if applicable) coding for the set
size of each response.}

\item{condition_var}{The column name (if applicable) coding for the
condition of each response.}

\item{n_col}{An integer controlling the number of columns in the resulting
plot.}

\item{return_data}{A boolean (TRUE or FALSE) indicating whether the data for
the plot should be returned.}

\item{palette}{A character stating the preferred colour palette to use. To
see all available palettes, type?scale_colour_brewer into the console.}
}
\value{
If \code{return_data} is set to \code{FALSE} (which it is by
default),the function returns a ggplot2 object visualising the mean model
parameters across participants (if applicable) per set-size (if applicable)
and condition (if applicable).

If \code{return_data} is set to \code{TRUE}, the function returns a
list with two components:

 \itemize{
 \item \code{plot:} The ggplot2 object.
 \item \code{data:} A data frame with the data used to generate the plot.
 }
}
\description{
Function to plot the best-fitting parameters of either the 2-component or
3-component model. .
}
