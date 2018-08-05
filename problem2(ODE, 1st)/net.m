function output = net(theta, x)
N = 0;
for i = 1:10
    N = N + (sigmoid(x*theta(i,1) + theta(i,2)))*theta(i,3);
end

output =  N;
end

