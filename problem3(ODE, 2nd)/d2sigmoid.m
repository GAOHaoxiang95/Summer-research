function y = d2sigmoid(x)
%UNTITLED
n = sigmoid(x);

y = n*(1-n)*(1-n) - n*(1-n)*n;

end

