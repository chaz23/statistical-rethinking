# Playing around with grid approximation. ---------------------------------

# Globe tossing problem:
# You toss a globe and catch it. Represent each try as W or L based on whether your index finger rests on water or land when you catch it.
# The proportion of W / (W + L) gives the proportion of water on the globe.
# We have been given W = 6 and L = 3.

# Grid.
# This is a vector of possible proportions of water on the globe.

grid_points <- 30
p_grid <- seq(from = 0, to = 1, length.out = grid_points)

# Prior.
prior <- rep(1, grid_points)

# Likelihood.
# Binomial probability density function.
likelihood <- dbinom(x = 6, size = 9, prob = p_grid)

# Product of likelihood and prior.
unstd_posterior <- likelihood * prior

# Standardized posterior.
posterior <- unstd_posterior / sum(unstd_posterior)

plot(p_grid, likelihood, type = "b")

