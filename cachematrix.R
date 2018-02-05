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

  # get currnet state of inversion
  m_inv <- x$get_inverse()
  
  # if matrix has been computer ('not null'), return the inversion
  if(!is.null(m_inv)) {
    message('getting cached data')
    return(m_inv)
    
  }
  
  # if inverse is null, get the matrix
  mat <- x$get()
  
  # compute the inverse
  m_inv <- solve(mat, ...)
  
  # cache the inverse
  x$set_inverse(mat)
  
  # return the inverted matrix
  return(m_inv)
  
  # cachemean <- function(x, ...) {
  #   m <- x$getmean()
  #   if(!is.null(m)) {
  #     message("getting cached data")
  #     return(m)
  #   }
  #   data <- x$get()
  #   m <- mean(data, ...)
  #   x$setmean(m)
  #   m
  # }    
}
