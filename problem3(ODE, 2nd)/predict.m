function y = predict(x, theta)
N = net(theta,x);

y = x*sin(1)*(exp(1)^(-0.2)) + x*(1-x)*N;

end

