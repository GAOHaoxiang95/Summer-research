function [jVal, gradient] = costFunction(theta)
%COSTFUNCTION
jVal = cal_error(theta);
epsilon = 0.000000001;
gradient = zeros(10,3);

for i = 1:10
    thetaplus = theta;
    thetaplus(i, 1) = thetaplus(i,1) + epsilon;
    thetaminus = theta;
    thetaminus(i,1) = thetaminus(i,1) - epsilon;
    gradient(i,1) = (cal_error(thetaplus) - cal_error(thetaminus))/(2*epsilon);
    
    thetaplus = theta;
    thetaplus(i, 2) = thetaplus(i,2) + epsilon;
    thetaminus = theta;
    thetaminus(i,2) = thetaminus(i,2) - epsilon;
    gradient(i,2) = (cal_error(thetaplus) - cal_error(thetaminus))/(2*epsilon);
    
    thetaplus = theta;
    thetaplus(i, 3) = thetaplus(i,3) + epsilon;
    thetaminus = theta;
    thetaminus(i, 3) = thetaminus(i,3) - epsilon;
    gradient(i,3) = (cal_error(thetaplus) - cal_error(thetaminus))/(2*epsilon);
end
end


