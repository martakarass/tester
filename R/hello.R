


#' Title
#'
#' @param x Lorem Ipsum is simply dummy text of the printing and typesetting
#' @param multiply.by.vec ndustry. Lorem Ipsum has been the industry's standard dummy
#' @param run.parallel text ever since the 1500s, when an unknown printer took a gal
#' @param run.parallel.cores type and scrambled it to make a type specimen book. It
#'
#' @import future
#' @importFrom utils globalVariables
#' @return ypesetting, remaining essentially unchanged. It was popularise
#' @export
#'
hello <- function(x,
                  multiply.by.vec = c(1:100),
                  run.parallel = FALSE,
                  run.parallel.cores = 2) {
  v <- NULL ## To please R CMD check

  # https://github.com/r-lib/devtools/issues/1714

  print(x[1:10])
  print(multiply.by.vec[1:10])
  print(run.parallel)
  print(run.parallel.cores)

  # globalVariables(c("v"))
  plan(multiprocess, workers = run.parallel.cores)
  v %<-% {
    cat("Hello world!\n")
    3.14
  }

  return(v)
}

