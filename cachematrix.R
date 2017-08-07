## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix is a function that takes a matrix as an input, sets the value of the matrix,
#gets the value of the matrix, sets the inverse Matrix and finally gets the inverse Matrix. The matrix object
#can cache its own object. 

#The <<- operator is used to assign a value to an object in an environment that is different 
#from the current environment.

makeCacheMatrix <- function(x = matrix()) {
        
        invMatrix <- NULL
        
        setMatrix <- function(y) {
                x <<- y
                invMatrix <<- NULL
        }
        
        getMatrix <- function() x                              
        setInverse <- function(inverse) invMatrix <<- inverse  
        getInverse <- function() invMatrix                     
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setInverse, getInverse = getInverse)
        
}


## Write a short comment describing this function
## cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as an 
# input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        invMatrix <- x$getInverse()
        if(!is.null(invMatrix)) {                       
                message("Getting Cached Invertible Matrix")    
                return(invMatrix)                             
        }
        
        #if value of the invertible matrix is NULL then  
        MatrixData <- x$getMatrix()                     
        invMatrix <- solve(MatrixData, ...)             
        x$setInverse(invMatrix)                         #set the invertible matrix 
        return(invMatrix)                               #return the invertible matrix
}

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
