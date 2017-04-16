#=
inputs matrices A,B
outputs a matrix C
Steps
  check compatibility
  create nxn matrix C
  partition the three matrices into n/2 x n/2 submatrices (O(1) work/span)
  create 10 matrices S1..S10 of size n/2 x n/2 and sum or difference of two partitions
    via doubly nested parallel for loops
  recursively spawn the computation of seven n/2 x n/2 matrix products
  compute submatrices of C by adding subtracting various of the above 
    via doubly nested parallel for loops (Theta(n^2) work, Theta(logn) span)
