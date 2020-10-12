n <- 500
lambda <- 5

x <- rpois(n, lambda)
for (i in 1:50000){
  pair <- sample(1:n, 2)
  rps <- sample(1:3, 1)
  if (rps == 1) {
    x[pair[1]] <- x[pair[1]] + 1
    x[pair[2]] <- max(x[pair[2]] - 1, 0)
  } else if (rps == 3) {
    x[pair[1]] <- max(x[pair[1]] - 1, 0)
    x[pair[2]] <- x[pair[2]] + 1
  }
}

hist(x, breaks = 15, freq = FALSE, col = "gray")