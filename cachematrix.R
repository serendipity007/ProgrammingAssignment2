

## The first function, makeCacheMatrix creates a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse 
## get the value of the inverse
## This function uses lexical scoping rules of R

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    z < - list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
    return(z) 
}



## This function calculates and caches the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    return (inv)
  }

