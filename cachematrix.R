## Put comments here that give an overall description of what your

## functions do


## Write a short comment describing this function


makeCacheMatrix<-function(x=matrix()) {
  invs <-NULL
  set <- function(y) {
    x <<- y
    invs <<- NULL
  }
  get <- function() x
  setinverse<- function(inverse) inv <<- inverse
  getinverse<- function() invs
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
    invs <- x$getinverse()
    if(!is.null(invs)) {
        return(invs)
    }
    data <- x$get()
    invs <- solve(data)
    x$setinverse(invs)
    invs
}



