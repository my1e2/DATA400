# Define a discrete distribution
x <- c(1, 3, 5)
px <- c(0.6, 0.3, 0.1)

# Set seed for reproducibility
set.seed(123)

# Generate 200 samples of size 5 and compute sample means
# you can change 5 and choose a large number then the graph will be similar to a normal
sample_means <- replicate(200, {
  sample_values <- sample(x, size = 5, replace = TRUE, prob = px)
  mean(sample_values)
})

# Plot histogram of the sample means
hist(sample_means,
     main = "Histogram of Sample Means (n = 5)",
     xlab = "Sample Mean",
     col = "lightblue",
     border = "black")

