function y = test(theta)
%UNTITLED
j=1;
y = zeros(2001, 3);
for i = 0:0.001:2
    a = predict(i,theta);
    %a = 0;
    %b = 0;
    b = target(i);
    y(j,1) = a-b;
    y(j,2) = a;
    y(j,3) = b;
    j=j+1;
end
figure;
plot(y(:,1));
figure;
plot(y(:,2));
figure;
plot(y(:,3));
end