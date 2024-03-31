# Question 3
# install.packages("nloptr")

library(nloptr)

# Question 4.
# Set the seed for reproducibility
set.seed(100)

# Define dimensions
N <- 100000
K <- 10

# Generate normally distributed random numbers
X <- matrix(rnorm(N * (K - 1)), ncol = K - 1)

# Add a column of 1's at the beginning
X <- cbind(1, X)

# Define parameters
sigma_squared <- 0.25

# Generate random numbers
eps <- rnorm(N, mean = 0, sd = sqrt(sigma_squared))

# Define vector β
beta <- c(1.5, -1, -0.25, 0.75, 3.5, -2, 0.5, 1, 1.25, 2)

# Generate Y
Y <- X %*% beta + eps

# Question 5.
# Compute beta_hat_OLS
beta_hat_OLS <- solve(t(X) %*% X) %*% t(X) %*% Y


# Question 6.
# Set the learning rate
learning_rate <- 0.0000003

# Initialize beta_hat_OLS with zeros
beta_hat_OLS <- rep(0, length(beta))

# Define the gradient function
gradient <- function(X, Y, beta_hat_OLS) {
  gradient_vec <- -2 * t(X) %*% (Y - X %*% beta_hat_OLS)
  return(gradient_vec)
}

# Perform gradient descent
max_iterations <- 1000  # Maximum number of iterations
tolerance <- 1e-6  # Tolerance for convergence
iteration <- 0
converged <- FALSE

while (!converged && iteration < max_iterations) {
  # Compute gradient
  grad <- gradient(X, Y, beta_hat_OLS)
  
  # Update beta_hat_OLS
  beta_hat_OLS <- beta_hat_OLS - learning_rate * grad
  
  # Check for convergence
  if (sqrt(sum(grad^2)) < tolerance) {
    converged <- TRUE
  }
  
  # Increment iteration count
  iteration <- iteration + 1
}

# Output the estimated beta_hat_OLS
print(beta_hat_OLS)


# Question 7-1.
library(nloptr)

# Define the objective function (squared loss)
objective <- function(beta) {
  sum((Y - X %*% beta)^2)
}

# Initial guess for beta
initial_guess <- rep(0, ncol(X))

# Set optimization parameters
opt_par <- list("algorithm" = "NLOPT_LN_SBPLX",
                "xtol_rel" = 1.0e-6)

# Perform optimization
opt_result <- nloptr(x0 = initial_guess, 
                     eval_f = objective, 
                     opts = opt_par)

# Extract the optimized beta_hat_OLS
beta_hat_OLS <- opt_result$solution

# Output the estimated beta_hat_OLS
print(beta_hat_OLS)

# Question 7-2.
# Define the objective function (squared loss)
objective <- function(beta) {
  sum((Y - X %*% beta)^2)
}

# Initial guess for beta
initial_guess <- rep(0, ncol(X))

# Perform optimization using the Nelder-Mead algorithm
opt_result <- optim(par = initial_guess, 
                    fn = objective,
                    method = "Nelder-Mead")

# Extract the optimized beta_hat_OLS
beta_hat_OLS <- opt_result$par

# Output the estimated beta_hat_OLS
print(beta_hat_OLS)

# Question 8.
gradient <- function(theta,Y,X){
grad.    <- as.vector(rep(0,length(theta)))
beta.    <- theta[1:(length(theta)-1)]
sig.     <- theta[length(theta)]
grad[1:(length(theta)-1)] <- -t(X) %*% (Y - X %*% beta.)/(sig.^2)
grad[length(theta)]       <- dim(X)[1]/sig - crossprod(Y - X %*% beta.)/(sig.^3)
return (grad)
}

# Question 9-1.
lm(Y ~ X - 1)

# Question 9-2.
# Load required packages
library(modelsummary)

model <- lm(Y ~ X - 1)
summary <- modelsummary(model)

# Output the summary
print(summary)
                    


