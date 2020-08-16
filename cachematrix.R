## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function takes a matrix and sets value to a variable ,also a get funvtion is created which can be used for getting the value of matrix


makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get<-function()  x
setinverse <-function(inverse) m<<-inverse
getinverse<-function() m
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
  
}


## Write a short comment describing this function
##This function checks whether the inverse has been previously calculated or not.if it isnt then only it commputes the innverse else it will use the cached value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat<-x$get()
  m<-solve(mat,...)
  x$setinverse(m)
  m
}
