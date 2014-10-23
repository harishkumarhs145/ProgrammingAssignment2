## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  ## inverse1 is the inverse of the matrix x
  inverse1 <- NULL ## Here temporarily set to NULL
  ## the get() function fetches the matrix
  get <- function(){
    x
  }
  ## set() function sets the matrix passed through it to x
  set <- function(y){
    x <<- y
    inverse1 <<- NULL ## set to NULL for time being.
  }
  ## getinverse() function fetches the inverse of the matrix
  getinverse <- function(){
    inverse1
  } 
  ## setinverse() function calculates the inverse of the matrix
  setinverse <- function(){
    inverse1 <<- solve(x)
  }
  list(get = get, getinverse = getinverse, 
       set = set, setinverse = setinverse)   
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## first inverse is checked by calling getinverse() function
  inverse1 <- x$getinverse()
  ## if there inverse is calculated then we get cached data
  if(!is.null(inverse1)){
    print("getting catched data")
    return(inverse1) ## we exit the cacheSolve() function here
  }
  ## otherwise we calculate by calling the setinverse() function
  inverse2 <- x$setinverse()
  inverse2  ## returning the inverse of a matrix
}
