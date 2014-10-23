## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse1 <- NULL
  get <- function(){
    x
  }
  set <- function(y){
    x <<- y
    inverse1 <<- NULL
  }
  getinverse <- function(){
    inverse1
  } 
  setinverse <- function(){
    inverse1 <<- solve(x)
  }
  list(get = get, getinverse = getinverse, 
       set = set, setinverse = setinverse)   
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse1 <- x$getinverse()
  if(!is.null(inverse1)){
    print("getting catched data")
    return(inverse1)
  }
  inverse2 <- x$setinverse()
  inverse2
}
