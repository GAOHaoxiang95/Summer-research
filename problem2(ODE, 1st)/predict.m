function y = predict(x, theta)
N = net(theta,x);

y = x*N;

end

