## the functións is to cache the inverse of an matrix

## create a matrix to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <- function(y) {
    x<<-y
    m<<-NULL
  }
  get<- function() x
  setinv<- function(solve) m<<- solve
  getinv<- function() m
  list(set = set, get= get,
       setinv = setinv,
       getinv = getinv)
}

## this function caches the inversed matrix of makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m<- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data<- x$get()
  m<-solve(data,...)
  x$setinv(m)
  m
}
