function y = target( x)
%UNTITLE
var1 = x*x;
var2 = exp(var1*(-1/2));
var3 = 1 + x + x*x*x;
y = var2/var3 + x*x;

end

