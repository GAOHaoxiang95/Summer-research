function jVal = cal_error( theta)
%UNTITLED

j=1;
data = zeros(10);
for i = 0.05:0.2:2
    data(j) = i;
    j = j + 1;
end

jVal = 0;
for x = 1:10
    jVal = (cost(theta, data(x)))^2 + jVal;
end

end

