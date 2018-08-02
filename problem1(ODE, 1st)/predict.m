function y = predict(x, theta)
N = net(theta,x);

y = 1 + x*N;

end

