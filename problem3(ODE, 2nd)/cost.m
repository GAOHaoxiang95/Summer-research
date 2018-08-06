function jVal = cost(theta, x)
%COST
N = net(theta,x);
dN_dx = 0;
for i = 1:10
    dN_dx = dN_dx + theta(i,1)*theta(i,3)*dsigmoid(x*theta(i,1) + theta(i,2));
end

dN2_dx = 0;
for i = 1:10
    dN2_dx = dN2_dx + theta(i,1)*(theta(i,3)^2)*d2sigmoid(x*theta(i,1) + theta(i,2));
end

fai = x*sin(1)*(exp(1)^(-0.2)) + x*(1-x)*N;
d_fai = sin(1)*(exp(1)^(-0.2)) + (1-2*x)*N + x*(1-x)*dN_dx;
d2_fai = (-2)*N + dN_dx*2*x+ (1-2*x)*dN_dx + dN2_dx*x*(1-2*x);

jVal =  d2_fai + 0.2*d_fai + fai + 0.2*(exp(1)^(-0.2))*cos(x);

end

