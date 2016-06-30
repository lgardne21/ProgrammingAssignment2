## These functions will get/set matrix and the inverse. Cache the data.

## get/set matrix and the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
        set = function(y) {
              x <<- y
              inv <<- NULL
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse
        getinv = function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## This function will return the inverse of the matrix 'x'

cacheSolve <- function(x, ...) {
        inv = x$getinv()
        
    ## if data is cached the message will be return and the inverse will be returned
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
    ## if the data has not been cached this code will be executed
        mat.data = x$get()
        inv = solve(mat.data, ...)
        x$setinv(inv)
        reutrn(inv)
       
}
