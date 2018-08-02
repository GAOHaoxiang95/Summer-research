function jVal = cost(theta, x)
%COST
N = net(theta,x);
dN_dx = 0;
for i = 1:10
    dN_dx = dN_dx + theta(i,1)*theta(i,3)*dsigmoid(x*theta(i,1) + theta(i,2));
end

d_fai = N + x* dN_dx;

jVal =  d_fai + ff(x)*(1+x*N) - f(x);

end

