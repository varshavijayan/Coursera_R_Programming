makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set_mat <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get_mat <- function() x
  set_inv <- function(inv_matrix) inv <<- inv_matrix
  get_inv <- function() inv
  list(set_mat = set_mat, get_mat = get_mat,
       set_inv = set_inv, get_inv = get_inv)
}



cacheSolve <- function(x, ...) {
  inv <- x$get_inv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get_mat()
  inv <- solve(data, ...)
  x$set_inv(inv)
  inv
}