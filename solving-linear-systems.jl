#=
  solve Upper Trianglar Matrices
  solve Lower Triangular Matrices
  Solve via Augmented Guassian Elimination
  Inverse via Augmented Guassian Elimination
  Solve via Inverse Linear Transformation Matrix
  Linear Least Squares Fitting
  Polynomial Least Squares Fitting
=#

function upTri(A, b)
  # accepts upper triangular matrix and vector b
  #TODO: use newtons 
  

function lowTri(A)
  # accepts lower triangular matrix and vector b


function GuassSolve(A, b)
  # square matrix A, vector b
  return upTri(Guass([A b]))


function inverse(A)
  # try all
  r = remotecall(1, ,A)
  s = remotecall(2, ,A)
  t = remotecall(3, ,A)


function InverseSolve(A, b)
  return inverse(A) * b
  

function augGuassInverse()
  for i = 1:size(A)[1]
  
  
function solveviaCramers(A,b)
  B = copy(A)
  x = 
  a = determinant(B)
  for i = 1:length(B)[1]
    C = copy(B)
    for j = 1:length(b)
      C[j,i] = b[j]
    end
    x[i] = determinant(C)
  end
  return a / x


function pseudo(A)
  B = transpose(A)
  try
    C = transpose(A) * (A * transpose(A))
    return C
  try 
    C = (transpose(A) * A) * transpose(A)
    return C
  catch e
    println e
  end


function linearLS(A)
  # accepts 2 by n matrix 
  # t
  # y
  T = [1 transpose(A[2,:])]
  y = transpose(A[1,:])
  Tpseudo = pseudo(T)
#complete via notes


function polyLS(A)
  #TODO: complete
