## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##There are two functions makeCacheMatrix,makeCacheMatrix
##makeCacheMatrix consists of set,get,setinv, getinv
##library(MASS) is used to calculate inverse for non squared as well as square matrices
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                        x<<-NULL    
                        }
get<-function()x
setinv<-function(inverse)inv<<-inverse
getinv<-function(){
                  inver<-ginv(x)
                  inver%%x
                  }
 list(set = set, get = get,
      setinv = setinv,
      getinv = getinv)
}


## Write a short comment describing this function
##This is used to get the cache data

cacheSolve <- function(x, ...) {
        inv<-x$getinv()
        if(!is.null(inv)){
                           message("getting of cache data!")
                           return(inv)
 }
 data<-x$getinv()
 inv<-solve(data,...)
 x$setinv(inv)
 inv     ## Return a matrix that is the inverse of 'x'
}
