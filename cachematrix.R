## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       MyV <- NULL
       set <- function(z) {
              x <<- z
              MyV <<- NULL
       }
       get <- function() x
       setInverse <- function(inverse) MyV <<- inverse
       getInverse <- function() MyV
       list(set = set,
            get = get,
            setInverse = setInverse,
            getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       MyV <- x$getInverse()
       if (!is.null(MyV)) {
              message("is done")
              return(MyV)
       }
       NewM <- x$get()
       MyV <- solve(NewM, ...)
       x$setInverse(MyV)
       MyV
}
