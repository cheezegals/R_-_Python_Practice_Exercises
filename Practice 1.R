# redo ,5
# 1 Without executing the code, can you tell what the value of answer is? Now execute the code. What is the value of answer? Explain why. In particular, it does not compute the average of the positive numbers in x. Write code to compute it.
x <- c(0.07, -0.42, 0.48, -0.14, 0.20, -0.44, 0.27, 0.05)
answer <- mean(x > 0)
answer
# 2. Execute the following code and understand what is going on.
x <- 1:10
x
dim(x) <- c(2, 5)
x
dim(x) <- c(5, 2)
x
dim(x) <- NULL
x
# # 3. Create the following matrix.
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    2    3    4    5
# [2,]    2    2    3    4    5
# [3,]    3    3    3    4    5
# [4,]    4    4    4    4    5
# [5,]    5    5    5    5    5

a = matrix (5,5,5)
a[1:4,4] = 4
a[1:3,3] = 3
a[4,3] = 4
a[1:2,2] = 2
a[3:5,2] = c(3,4,5)
a[1:4,1] = c(1,2,3,4)
a

# 4.Write an R script that takes a number score between 0 and 100 and output a letter grade according to the following table
score <- 55
if (score <= 49 ){
  l = "F"
} else if (score < 60) {
  l = "E"
} else if (score < 70) {
  l = "D"
} else if (score < 80) {
  l = "C"
} else if (score < 90) {
  l = "B"
} else  {
  l = "A"
}

l

#5.Write a nested FOR loops to obtain the upper triangular matrix of m. In other words, it sets all the elements of m that are below the diagonal to 0. Do not use any IF statement or any R’s built-in function such as lower.tri().
d <- 6
m <- matrix(1:(d*d), d, d)

for (row in 2:d){
  for (col in 1: (row-1)){
    m[row,col] = 0
  }
}
print(m)

#6.Write an R program that takes an atomic variable v and a vector y, and returns TRUE if v is an element of y, and FALSE otherwise. You should use the break keyword somehwere in your code. Do not use any R’s built-in function such as is.element() or %in%.
v <- 0
y <- c(-1,0, 1)

answer = F

for (i in 1:length(y)) {
  if (v ==y[i]) {
    answer =T
    break
  }
}
answer
#7.Write an R program to mimic the built-in R function is.element(x, y) of two vectors x and y. In other words, your program returns a vector answer of the same length as x, and answer[i] is TRUE if and only if x[i] is an element of y. (Hint: Use the code from the previous question. Use logical() for initialization.)

x <- c(-1, 0, -2, 0)
y <- c(-1, 0, 1)

answer = rep(F, times = length(x))

for ( i in 1 : length (x)) {
  for ( k in 1 :length(y)) {
    if (x[i] == y[k])
    answer[i] = T
  }
}
answer

#Exercises 3.2
#1. The factorial of a natural number n is defined as n!=n×(n−1)×(n−2)×⋯×1. Moreover, we define 0!=1. Write an R program that takes a non-negative integer n and computes its factorial n!. Do not use any R’s built-in function such as factorial().

n <- 3
answer = 1

while (n >1 ) {
  answer = answer * n
  n = n-1
}
answer


#2.palindrome is a sequence of characters which reads the same forward or backward. For example, the word “radar”. Write an R program that takes a string and checks if it is a palindrome. Do not make any copy of the sequence of characters. Do not use any R’s built-in function such as rev(), all(), or any(). (Hint: Use strsplit(s, "")[[1]] to split a string into a vector of characters.)
# compare character one by one
s <- "radar"
k = strsplit(s, "")[[1]] ; k
n = length(k) ; n
#create reverse string
m = k[n:1] ; m
#init
answer = TRUE
#loop original string
for (i in 1:n) {
  #loop reverse string only the one oberserve with original
  for (j in i:i) {
    #compare
    if (k[i] != m[j]){
      answer = FALSE
      break
  }
  }
}
answer
# 3. A prime number is a natural number greater than 1 that is not disivible 
# by other numbers except for 1 and itself. Write an R program that takes 
# a natural number n and checks if it is a prime number. 
# (Hint: Check if n is divisible by any of 2,…,n−1. Actually, is it necessary to check all of them?)

n= 1249
#init
answer = TRUE

#write for loop
for (i in 2:(n-1)) {
  if (n == 2){
    answer = TRUE
    break
  } else if (n%% i ==0) {
      answer = FALSE
  }
  }
answer

# 4.Write an R program that takes two (compatible) matrices A and B 
# and performs matrix multiplication. Do not use any 
# R’s built-in function such as sum() or %*%. Recall that














