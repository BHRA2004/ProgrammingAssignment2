cacheSolve <- function(x, ...) {
    inv <- x$getInverse()  # Check if inverse is already cached
    
    # If cached inverse exists, return it
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    # Otherwise, calculate the inverse
    mat <- x$get()          # Get the matrix
    inv <- solve(mat, ...)  # Compute the inverse
    x$setInverse(inv)       # Cache the inverse
    inv
}
