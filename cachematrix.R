## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # set inverse to null
  mat_inv <- NULL
  
  # 
  set <- function(y) {
    x <<- y
    mat_inv <<- NULL
  }

  # get the value of the matrix (not inverse)
  get <- function() x
  
  # set the inverse
  set_inverse <- function(inverse) mat_inv <<- inverse
  
  # get the inverse
  get_inverse <- function() mat_inv
  
  # return a list 
  return(list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse))
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
