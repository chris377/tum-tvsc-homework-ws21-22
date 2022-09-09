function [out, dout] = linearActivation(in, a)
% Write MATLAB code below that computes the linear activation function.
% The input variable 'a' determines the  slope of the function.
y = @(x) a*x;
out = y(in);
dout = diag(gradient(out,in),0);
end