% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulating.R
\name{simulate_mixtur}
\alias{simulate_mixtur}
\title{Generate simulated data from mixture models}
\usage{
simulate_mixtur(n_trials, model, kappa, p_u, p_n, K, set_size)
}
\arguments{
\item{n_trials}{an integer indicating how many trials to simulate}

\item{model}{a string indicating the model to be fit to the data. Currently
the options are "2_component", "3_component", "slots", and "slots_averaging".}

\item{kappa}{a numeric value indicating the concentration parameter of the
von Mises distribution to use in the simulations. Note, when simulating from
the 2_component or 3_component model, if multiple values are provided to
the set_size argument, kappa must be a vector of parameter values to use
for each set size).}

\item{p_u}{a numeric value indicating the probability of uniform guessing to
use when simulating from the 2_component and 3_component models. Note, when
simulating from the 2_component or 3_component model, if multiple values are
provided to the set_size argument, p_u must be a vector of parameter values
to use for each set size).}

\item{p_n}{a numeric value indicating the probability of a non-target
response when simulating from the 3_component model. Note, when simulating
from the 2_component or 3_component model, if multiple values are provided
to the set_size argument, p_n must be a vector of parameter values to use
for each set size).}

\item{K}{a numeric value indicating the capacity value to use when
simulating from the slots and slots_averaging models.}

\item{set_size}{a numeric value (or vector) indicating the set size(s) to
use in the simulations}
}
\value{
Returns a data frame containing simulated responses from the
requested model per set-size (if applicable).
}
\description{
Generate simulated data from mixture models
}
\examples{

# simulate from the slots model
\donttest{
slots_data <- simulate_mixtur(n_trials = 1000,
                             model = "slots",
                             kappa = 8.2,
                             K = 2.5,
                             set_size = c(2, 4, 6, 8))
}

# simulate one set size from the 3_component model
\donttest{
component_data <- simulate_mixtur(n_trials = 1000,
                                 model = "3_component",
                                 kappa = 8.2,
                                 p_u = .1,
                                 p_n = .15,
                                 set_size = 4)
}

# simulate multiple set sizes from the 3_component model
\donttest{
component_data_multiple_sets <- simulate_mixtur(n_trials = 1000,
                                               model = "3_component",
                                               kappa = c(10, 8, 6),
                                               p_u = c(.1, .1, .1),
                                               p_n = c(.1, .15, .2),
                                               set_size = c(2, 4, 6))
}
}
