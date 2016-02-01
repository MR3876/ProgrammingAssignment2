

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



# Write a short comment describing this function`cacheSolve`: 
#This function computes the inverse of the special
# "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then
# cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getsolve()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setsolve(i)
        i
}
