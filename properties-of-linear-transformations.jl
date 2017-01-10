#=
  Eigenvalues
  Eigenvectors
  l1 Norm
  l2 Norm
  loo Norm
  Apply Guassian Elimination
  Apply Guassian Elimination with Pivots
  Reduced-Row-Eschelon Form
  Determine Linear Transformation Matrix
  Rank and Nullity
=#

function eigenvalues(A)
  Lambda = identityMatrix(length(A)[:,1])
  'x' * Lambda
  Lambda -= A
  #TODO:fixed point iteration


function eigenvectors(A)
  Eigenvalues(A)
  Axb(A-   , ,0)
  

function cond(A)
  #determines condition numebr
  v = eigenvalues(A) 
  #returns vector of Eigenvalues
  return abs(loo(v) / loo(1 / v))
  # largest over smallest
    

function l1(a)
  #accepts vector of n space
  x = 0
  for i=1:length(a)
    x += a[i]
  end
    

function l2(a)
  #accepts vector of n space
  x = 0
  for i = 1:length(a)
    x += a[i] * a[i] 
  end
  return sqrt(x)

    
function loo(a)
  x = 0
  for i = 1:length(a)
    if abs(a[i]) > x
      x = abs(a[i])
    else
      continue
    end
  end
  return x


function induced_l1(A)
  #accepts matrix 
  x = l1(A[:,1])
  for i = 2:length(A)[1,:]
    if l1(A[:,i]) > x
      x = l1(A[:,i])
    else
      continue
    end
  end
  return x


function induced_l2(A)
  #accepts matrix
  return loo(condition(A))
  #TODO: check negative case


function induced_loo(A)
  #accepts matrix
  x = l1(A[1,:])
  for i = 2:length(A)[:,1]
    if l1(A[i,:]) > x
      x = l1(A[i,:])
    else
      continue
    end
  end
  return x


function guass(A)
  # accepts m by n matrix
  B = copy(A)
  x = 0
  if m > n
    x = m 
  else
    x = n
  end
  for i = 1:x
    for j = i+1:m
      B[j,:]- ((B[i,j] / B[i,i]) * B[i,:])
    end
  end
  return B
      
      
function pivGuass(A) # maybe unessesary
  x = 0
  a = []
  y = 0
  for i=1:(smaller)
    for j=i:m
      x = lcm(A[i,i] , A[j,i])
      a[y] = x
      A[j,:]-
    end
  end


function ltToMatrix(A,B)
  # accepts mxn set a and mxn set LT(a)
  C = [A B]
  D = rref(C)
  return 


function rref(A)
  # accepts m by n matrix
  B = copy(A)
  if length(B)[1,:] > length(B)[:,1]
    x = length(B)[:,1]
  else
    x = legnth(B)[1,:]
  end
  for i = 1:x
    B[i,:] /= B[i,i] 
    for j = (1 : i-1) & (i+1 : m) #make sure logic


      
    end
  end
  return B


function nullity(A)
  rank = 0
  nullity = 0
  B = rref(A)
  for i=1:length(A)[:,1]
    #need to fix n length issues
    if B[i,:] = 0
      nullity += 1
    else
      continue
    end
  end
  return nullity


function rank(A)
  #via rank-nullity theorem
  return length(A)[1,:] - nullity(A)

