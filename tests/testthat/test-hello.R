
context("Testing hello() function.")

test_that("We can call the simile hello function",{

  x <- c(1:100)
  out1 <- hello(x, run.parallel = FALSE, run.parallel.cores = NULL)

  expect_equal(out1, 3.14)

})
