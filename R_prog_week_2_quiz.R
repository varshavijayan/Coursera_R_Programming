# Coursera: R Programming Quiz -2 
# Author: Varsha Vijayan

# execute function by function [RUN in console]

# Q1
cube <- function(x, n) {
  x^3
}

# cube(3) returns 27 without warning

# Q2
x <- 1:10
if(x > 5) {
  x <- 0
}

# 'x' is a vector of length 10 and 'if' can only test a single logical statement.

# Q3
f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

# z <- 10; f(3) returns value 10

# Q4
x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}

# value of y is 10

# Q5
h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}

# f is the free variable

# Q6
# environment in R: a collection of symbol/value pairs

# Q7
# R language uses what type of scoping rule for resolving free variables?
# lexical scoping

# Q8
# How are free variables in R functions resolved?
# The values of free variables are searched for in the environment in which the function was defined

# Q9
# What is one of the consequences of the scoping rules used in R?
# All objects must be stored in memory

# Q10
# In R, what is the parent frame?
# It is the environment in which a function was called
