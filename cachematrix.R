## Thus is for calculating the inverse via Cache method


## The below written function sets a matrix and then cache's the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  w<-solve(x)
  setmean <- function(w) m <<- solve(x)
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}




## The below written function is for claculating the inverse
cacheSolve <- function(x, ...) {m <- x$getmean()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setmean(m)
m
        ## Returns a matrix that is the inverse of 'x'
}
