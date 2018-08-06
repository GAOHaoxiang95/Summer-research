options = optimset('GradObj', 'on','HessUpdate','bfgs','MaxIter', 10000);
initialTheta = zeros(10,3);
for i = 1:10
    initialTheta(i, 1) = 0.5;
    initialTheta(i, 2) = 4.5;
    initialTheta(i, 3) = 0.8;
end
optTheta = initialTheta;

optTheta = fminunc(@costFunction, optTheta, options);

test(optTheta);