
x <- rnorm(50)
y1 <- x + 0.5 * runif(50)

tau <- function(x, y){
  S <- 0
  mx <- 0
  my <- 0
  
  for (i in seq(1, length(x) - 1)){
    for (j in seq(i + 1, length(x))){
      if (isTRUE(all.equal(x[i], x[j]))){
        next()
      } else if (isTRUE(all.equal(y[i], y[j]))){
        next()
      } else {
        S <- S + sign((x[i] - x[j]) * (y[i] - y[j]))
        mx <- mx + 1
        my <- my + 1
      }
    }
  }
  S / sqrt(mx * my)
}

tau(x, y1)
