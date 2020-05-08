## Put comments here that give an overall description of what your
## functions do

##this function set the value of the vector,get the value of the vector,set the value of the matrix and get the value of the matrix 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<- function(y){
    x<<-y
    m<-NULL
  }
  get <- function() x
  setmatrix <- function(Solve) m<<-Solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## this function calculates the inverse of the matrix but first checks if it already exists

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m<-solve(data)
        x$setmatrix(m)
        m
}