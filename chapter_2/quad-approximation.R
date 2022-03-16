# Playing around with quadratic approximation. ----------------------------

# Globe tossing problem:
# You toss a globe and catch it. Represent each try as W or L based on whether your index finger rests on water or land when you catch it.
# The proportion of W / (W + L) gives the proportion of water on the globe.
# We have been given W = 6 and L = 3.

library(rethinking)

globe_qa <- quap(alist(W ~ dbinom(W + L, p),
                       p ~ dunif(0, 1)),
                 data = list(W = 6, L = 3))

precis(globe_qa)
