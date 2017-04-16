#=
runtime: in O(n^2.81)
accepts square matrices A,B (assumes nxn, mxm where n,m are powers of two)
returns matrix C
=#

function partition(A)
  #add try-catch
  #accepts square matrix A (assumes nxn, where n is power of two)
  n = length(A)[1]
  
  W = new matrix(  )
  X = new matrix(  )
  Y = new matrix(  )
  Z = new matrix(  )
  
  return W, X, Y, Z
end
    

function recursiveMultiply(A,B)
  n = length(A)[1]
  
  #matrix C
  C = new zeroesMatrix( length(A)[1,:],length(B)[:,1] )
  
  if n == 1
     return A[1:1] * B[1:1]
  else
    partition(A)
    partition(B)
    
    #create 10 matrices (= Theta(n^2))
    S1 = B12 - B22
    S2 = A11 + A22
    S3 = A21 + A22
    S4 = B21 - B11
    S5 = A11 + A22
    S6 = B11 + B12
    S7 = A11 - A22
    S8 = B21 + B22
    S9 = A11 - A21
    S10 = B11 + B12
    
    #multiplications
    P1 = recursiveMultiply(A11, S1)
    P2 = recursiveMultiply(S2, B22)
    P3 = recursiveMultiply(S3, B11)
    P4 = recursiveMultiply(A22, S4)
    P5 = recursiveMultiply(S5, S6)
    P6 = recursiveMultiply(S7, S8)
    P7 = recursiveMultiply(S9, S10)
    
    #defining C
    C11 = P5 + P4 - P2 + P6
    C12 = P1 + P2
    C21 = P3 + P4
    C22 = P5 + P1 - P3 - P7
    return #build via blocks
  end
end

    
    
    
  
 

