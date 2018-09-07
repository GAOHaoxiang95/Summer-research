function output = net(theta, x,y)
N = 0;
for i = 1:10
    N = N + (sigmoid(x*theta(i,1) + y*theta(i,2))+theta(i,3))*theta(i,4);
end

output =  N;
end

