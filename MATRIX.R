A <- matrix(c(10, 8,5, 12), ncol = 2, byrow = TRUE)
A
B <- matrix(c(5, 3, 15, 6), ncol = 2, byrow = TRUE)
B
A*B
A-B
A+B
t(A)
t(B)
3*A
3*B
#In R, a matricial multiplication can be performed with the %*% operator. The number of columns of the first matrix must be equal to the number of rows of the second.
A%%B
crossprod(A,B)
tcrossprod(A,B)

library(matrixcalc)    

matrix.power(A, 2)
det(A)
det(B)

#diag function you can also make a diagonal matrix, passing a vector as input of the function.
diag(c(7, 9, 2))

#Identity matrix in R
diag(4)

#the eigenvalues and eigenvectors of a matrix can be calculated in R with the eigen function.
eigen(A)$vectors
eigen(B)$vectors

#Singular value decomposition of A
svd(A)

#calculate the inverse of a matrix in R you can make use of the solve function.

M <- solve(A)
M










