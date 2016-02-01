## this function is to create a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  get <- function() {
    x
  }
  set <- function(newMatrix) {
    x <<- newMatrix
    inverseMatrix <<- NULL
  }
  getInverse <- function() {
    inverseMatrix
  }
  setInverse <- function(solvedMatrix) {
    inverseMatrix <<- solvedMatrix
  }
  list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}
}


## this function is to compute the inverse of the matrix
## if the inverse was to compute the previous one then return the previous matrix
##if ont, then it will recalculate the inverse

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        } else {
                inverse <- solve(x$get())
                x$setinverse(inverse)
                return (inverse)
        }
}
