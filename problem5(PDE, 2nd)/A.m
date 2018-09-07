function output = A(x, y)
%A
output = (1-x)*(y^3)+ x*(1+y*y*y)*exp(-1) + (1-y)*x*(exp(-x)-exp(-1));
n = (1+x)*exp(-x)-(1-x-2*x*exp(-1));

output = output + n*y;

end

