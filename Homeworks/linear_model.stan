data {
  int<lower=0> n;          // number of data points
  vector[n] x;             // predictor
  vector[n] y;             // outcome
}
parameters {
  real intercept;         
  real slope;             
  real<lower=0> sigma;     // residual standard deviation
}
model {
  y ~ normal(intercept + slope * x, sigma); // Likelihood is a normal distribution
}
// If we do not explicitly define a prior in the model block, 
// Stan then uses a Uniform distribution like Laplace