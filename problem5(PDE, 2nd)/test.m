function y = test(theta)
%UNTITLED
j=1;
y = zeros(1001, 3);
for i = 0:0.001:1
    for ii = 0:0.001:1
    a = predict(i,ii,theta);
    %a = 0;
    %b = 0;
    b = target(i,ii);
    y(j,1) = a-b;
    y(j,2) = a;
    y(j,3) = b;
    j=j+1;
    end
end
figure;
plot(y(:,1));
figure;
plot(y(:,2));
figure;
plot(y(:,3));
end