## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    # set value of matrix
    
    # get value of matrix 
    
    # set value of the inverse
    
    # get value of the inverse
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    # check to see if inverse has already been calculated
        # if yes, skip calc and retrieve cached matrix
        # if no, calculate inverse, then set value of inverse in the cache
            # via setinv function
}
