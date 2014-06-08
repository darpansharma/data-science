## These functions are to proxy to solve function
## usage : cacheSolve ( makeCacheMatrix ( your_inversible_matrix ) )

## Caches the passed in matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        get <- function() x
        setmatrix <- function(mtx) m <<- mtx
        getmatrix <- function() m
        list(get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}


## returns the inverse of the passed in makeCacheMatrix
## checks if passed in makeCacheMatrix object already has the cached inverse and returns if it has
## computes solve on matrix of makeCacheMatrix, set it to makeCacheMatrix and return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m		
}
