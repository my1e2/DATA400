set.seed(123)  # For reproducibility
par(mfrow = c(4, 4), mar = c(2, 2, 2, 1))  # 4 rows, 4 columns

n_values <- c(1, 5, 30, 100)  # sample sizes
reps <- 10000  # number of repetitions

# Row 1: Binomial(10, 0.9)
for (n in n_values) {
  means <- replicate(reps, mean(rbinom(n, size = 10, prob = 0.9)))
  hist(means, main = bquote(n == .(n)), xlab = "", ylab = "", breaks = 10)
}

# Row 2: Poisson(2)
for (n in n_values) {
  means <- replicate(reps, mean(rpois(n, lambda = 2)))
  hist(means, main = "", xlab = "", ylab = "", breaks = 10)
}

# Row 3: Exponential(1)
for (n in n_values) {
  means <- replicate(reps, mean(rexp(n, rate = 1)))
  hist(means, main = "", xlab = "", ylab = "", breaks = 10)
}

# Row 4: Beta(0.8, 0.8)
for (n in n_values) {
  means <- replicate(reps, mean(rbeta(n, shape1 = 0.8, shape2 = 0.8)))
  hist(means, main = "", xlab = "", ylab = "", breaks = 10)
}