## Put comments here that give an overall description of what your
## functions do

## Creating "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y){
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set= set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


##  Computes the inverse.

cacheSolve <- function(x, ...) {
        a <- x$getinverse()
        if (!is.null(a)){
                message("getting cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data, ...)
        x$setinverse(i)
        a
}
        
}
