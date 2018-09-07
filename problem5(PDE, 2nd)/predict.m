function y = predict(x,y, theta)
N = net(theta,x,y);

y = A(x,y) + x*(1-x)*y*(1-y)*N;

end

