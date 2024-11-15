makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  # Initialize the inverse to NULL
    
    set <- function(y) {
        x <<- y     # Assign the new matrix to x
        inv <<- NULL # Reset the inverse cache when a new matrix is set
    }
    
    get <- function() x  # Return the matrix
    
    setInverse <- function(inverse) inv <<- inverse  # Cache the inverse
    getInverse <- function() inv                     # Return the cached inverse
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
