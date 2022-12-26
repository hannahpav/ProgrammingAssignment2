## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL # set inverse as NULL
      set <- function(y) {
            x <<- y   #sets y to be x
            inv <<- NULL  #set the inverse as NULL
      }
      
      get <- function() x  #function to get matrix x
      setinv <- function(inverse) inv <<- inverse
      getinv <- function() inverse #function to get matrix inverse
      list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      inv <- x$getinv()
      if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- inverse(data,...)
      x$setmean(m)
      m
      ## Return a matrix that is the inverse of 'x'
}
