#=
  Lagrange Interpolation
  Newton forward difference interpolation
  Trapezoidal Quadrature
  Simpsons Quadrature
  Composite Trapezoidal Rule Quadrature 
  Composite Simpsons Rule Quadrature
=#

function Lagrange(n,x,y)
  #accepts a 2 by n matrix
  #evalates at x
  for i = [2,1]:[2,n]
    a = 1
    k = i
    for j = 1:
      if k == j
        continue
      else 
        a *= ((x-x[j]) / (x[k]-x[j]))
      end
    end
    f[i] = a * y[i]
    for i = 1:n-1
      sum += f[i]
    end
  end
  return sum


function Newton(n,x,y)
  #accepts x,y vectors
  for j = 1:n-1
    for i = n-1:-1:j
      y[i] = (y[i]-y[i-1]) / (x[i]-x[i-j-1])
    end
    for i = n-1:-1:0
      a = 1;
      for j= 1:i-1
          a *= a - x[j]
      end    
      a *= y[j]
      sum += a
    end
  end
  return sum


function trapezoidalRule(p,a,b)
  #equally spaced nodes
  return h * (y[1]/2 + l1(y[2:end-1]) + y[end]/2)


function simpsonsRule(p,a,b)
  #even number eqaually spaced nodes
  a = 0
  b = 0
  for i = 2:2:end-1
    a += 2 * y[i]
  end
  for j = 3:2:end-1
    b += 4 * y[i]
  end
  return h/3 * (y[1] + a + b + y[end])
  

function compositeTrapezoidal(p,h,a,b)
  #equally-spaced nodes
  return trapezoidalRule(p,a,b) + (h * l1(y[1:end-1])


function compositeSimpsons(p,n,h,a,b)
  #even number n equally spaced nodes
  a = 0
  for i = 1:n/2
    a += y[2i - 2] + 4y[2i-1] + y[2i])
  end
  return h/3 * a
  


  
  
