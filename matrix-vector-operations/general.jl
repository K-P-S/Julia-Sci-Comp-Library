#=
  Inner product (dot algorithm)
  Outer product (cross algorithm)
  Generate identity matrix or a given size
  Generate zeroes matrix of a given size
  calculate determinant of a triangular matrix
  calculate determinant via minors
  calculate determinant via Cramers Rule
=#

function identityMatrix(m)
  A = spzeroes(m,m)
  for i = 1:m 
    A[i,i] = 1
  end
  return A


function zeroesMatrix(m,n)
  A = spzeroes(m,n)
  return A


function checkCompatability(A,B)
  if lenth(A)[2] == length(B)[1]
    return true
  else 
    return false
  end


function dot(a,b)
  #equal size
  try
    for i=1:size(a)
      x = a[i] * b[i]
    end
  finally
    return e
  end
  #print error: dimensions


function cross(a,b)
  #produces a by b matrix
  A = zeroesMatrix(length(a),length(b))
  for i = 1:length(b)
    for j = 1:length(a)
      A[j,i] = b[i] * a[j]
    end
  end
  return A


function multiply(A,B)
  if checkCompatability(A,B) == true
    continue
  else 
    return error e
  end
  C = new zeroesMatrix(length(A)[1],length(B)[2])
  #columns of B
  for i = 1:length(B)[2]
    #rows of A
    for j = 1:length(A)[1]
      C[i,j] = dot(A[j,:],B[:,i])
    end
  end
  return C


function determinantTriangular(A)
  a = 1
  i = 1
  while i !> length(A[:,1]) & i !> length(A[1,:])
    a *= A[i,i]
    i + 1
  end
  return a
  
    
function determinantCofactors(A)
  a = 0
  #down column one
  for i = 1:length(A)[:,1]
    if length(B)[1,:] != 2
      a += B[] * (-1)^ * determinantCofactors(reshape(B, ))
    else
      return (B[1,1] * B[2,2]) - (B[2,1] * b[1,2])
    end
  end
  return a
                
                  
  
           
    
       
                    
  

  
  
  

