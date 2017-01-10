#=
  Singular Value Decomposition
  Condition Number of Matrix    
  Pseudoinverse of Matrix
  Eigen Decomposition
  LU Decomposition
  P-LU Decomposition    
  Check Symmetric-Positive-Definite
  Cholesky Decomposition
  QR Decomposition
=#

function singularValueDecomposition(A)
  # accepts matrix A
  U = eigenvectors(A * transpose(A))
  V = eigenvectors(transpose(A) * A)
  #determine E
  v = cond(A)
  E = zeroesMatrix( , )
  for i = 1:length(v)
    E[i,i] = v[i]
  end
  println(U)
  print(E)
  print(transpose(V))


function condfromSVD(E)
  x = 0
  for i = length(E)[1] : -1 : 1
    if E[i,i] == 0
      continue
    else
      x = E[i,i]
      break
    end
  end
  return E[1,1] / x


function nullityfromSVD(E)
  x = 0
  for i = length(E)[1] : -1 : 1
    if E[i,i] == 0
      x + 1
    else
      return x
    end
  end


  function inversefromSVD(U,C,B,v)
    println(V)
    D = copy(E)
    for i = 1:length(v)
      D[i,i] = 1/E[i,i]
    end
    print(D)
    print(transpose(U))
  
    
function eigenDecomposition(A)
  # accepts
  B = eigenvectors(A)
  v = eigenvalues(A)
  for i = 1:length(v)
    #initialize matrix of zeroes size length(v) by length(v)
    C[i,i] = v[i]
  end
  println(B)
  print(C)
  print(inverse(B))

  
function luDecomposition(A)
  # admits square matrix
  B = copy(A)
  x = 0
  a = size(A)[1]
  #rows in A
  #construct identity matrix C of equal dimenstions
  
  for i=1:a #or use here
    for j = i+1 : a # and here
      x = B[i,i] / B[i,j]
      B[j,:] -= (x * B[i,:])
      C[i,j] = x
      
      
      C[i,j] = #sub value
      A[j,:] - #sub value

function luSolve(A,b)
  luDecomposition(A)
  y = solve(L,c)
  x = solve(U,y)
  return x


function pluSOlve(A,b)
  pluDecomposition(A)
  c = transpose(P) * b
  y = solve(L,c)
  x = Solve(U,x)
  return x
    

function checkSPD(A)
  # accepts matrix


function CholeskyDecomposition(A)
  # accepts SPD matrix A
  if checkSPD(A) = true
    continue
  else
    #try catch error here
  end
  
  
function QRDecomposition(A)
  # accepts ___ mxn
  B = copy(A)
  
  for i = 2:n
    a = B[:,i]
    for j = 1:i-1
      a - (dot(a,Q[:,j]) * Q[:,j])
    end
    Q[:,i] = normalize(a)
  end
  #TODO: R
  
