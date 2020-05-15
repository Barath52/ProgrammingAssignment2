## This file contains a pair of functions which is coded to cache the inverse of a matrix and return the cached matrix.


## The below written function sets a matrix and then cache's the inverse
## The get function stores the matrix under the label get
## The setinv functions sets the inverse
## The getinv function gets the inverse
## Overall this function creates a list containing the matrix, the inverse,etc.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  w<-solve(x)
  setinv <- function(w) m <<- w
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}




## The below written function is for claculating the inverse
## If this function is called it looks out wheteher the inverse is previously 
## calculated or not.
## In case it is not calculated, it calculates and returns
## else it returns the cached inverse
cacheSolve <- function(x, ...) {m <- x$getinv()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinv(m)
m
        ## Returns a matrix that is the inverse of 'x'
}

## However these both functions must be used together.