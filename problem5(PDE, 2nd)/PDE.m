options = optimset('GradObj', 'on','HessUpdate','bfgs','MaxIter', 1);
initialTheta = zeros(10,4);
for i = 1:10
    initialTheta(i, 1) = 0.9;
    initialTheta(i, 2) = 0.5;
    initialTheta(i, 3) = 0.8;
    initialTheta(i, 4) = 0.8;
end
optTheta = initialTheta;

optTheta = fminunc(@costFunction, optTheta, options);

test(optTheta);