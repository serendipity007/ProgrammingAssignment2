### Introduction

This second programming assignment inlcues an  R function that is able to cache potentially time-consuming computations.
In this Programming Assignment we take advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside  of an R object.

### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly. I write a pair of functions that cache the inverse of a matrix.

The following functions have been implemented:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

For this assignment, it is assumed that the matrix supplied is always invertible.



