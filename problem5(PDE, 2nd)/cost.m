function jVal = cost(theta, x,y)
%COST
N = net(theta,x,y);
dN_dx = 0;
for i = 1:10
    dN_dx = dN_dx + theta(i,1)*theta(i,4)*dsigmoid(x*theta(i,1) +y*theta(i,2)+ theta(i,3));
end

dN_dy = 0;
for i = 1:10
    dN_dy = dN_dy + theta(i,2)*theta(i,4)*dsigmoid(x*theta(i,1) + y*theta(i,2)+theta(i,3));
end

dN2_dx = 0;
for i = 1:10
    dN2_dx = dN2_dx + theta(i,1)*(theta(i,4)^2)*d2sigmoid(x*theta(i,1) + y*theta(i,2)+theta(i,3));
end

dN2_dy = 0;
for i = 1:10
    dN2_dy = dN2_dy + theta(i,2)*(theta(i,4)^2)*d2sigmoid(x*theta(i,1) + y*theta(i,2)+theta(i,3));
end

fai = A(x,y) + x*(1-x)*y*(1-y)*N;

d2A_dx = exp(-x)*x-exp(-x);
d2A_dy = 6*(1-x)*y+6*x*exp(-1)*y;

d2_fai_x = d2A_dx- 2*y*(1-y)*N;
d2_fai_y = d2A_dy - 2*x*(1-x)*N;

jVal =  d2_fai_x+d2_fai_y - exp(-x)*(x-2+y*y*y+6*y);

end

