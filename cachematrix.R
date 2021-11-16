## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    # set value of matrix
    m <- NULL
    set <- function(y) {
        x <<- y 
        m <<- NULL
    }
    
    # get value of matrix 
    get <- function() x 
    
    # set value of the inverse
    setInv <- function(solve) m <<- solve
    
    # get value of the inverse
    getInv <- function() m 
    
    # return
    list(set = set, get = get, 
         setInv = setInv, getInv = getInv)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
    m <- x$getInv()
    
    # check to see if inverse has already been calculated
    if(!is.null(m)){
        # if yes, skip calc and retrieve cached matrix
        message("getting cached data...")
        return(m)
    } 
    # if no, calculate inverse, then set value of inverse in the cache
    # via setinv function
    data <- x$get()
    m <- solve(data, ...)
    x$setInv(m)
    m
       
}
