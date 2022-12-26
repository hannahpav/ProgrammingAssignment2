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
      getinv <- function() {
            inverse <- ginv(x)  # calculate inverse of matrix and assign to inverse
            inverse%*%x  # creates the matrix 
      }  #function to get matrix inverse
      
      list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { ## to retrieve cache data
      inv <- x$getinv()
      if(!is.null(inv)) {  # check if its NULL
            message("getting cached data")
            return(inv) #returns inverse
      }
      data <- x$get()
      inv <- solve(data,...)
      x$setinv(inv)
      inv
      ## Return a matrix that is the inverse of 'x'
}
