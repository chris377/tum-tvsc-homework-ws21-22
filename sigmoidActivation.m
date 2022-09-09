%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [out, dout] = sigmoidActivation(in)
% Write MATLAB code below that computes the sigmoid activation function.
[m,n] = size(in);
y = @(x) 1/(1+exp(-x));
for i= 1:n
    out(1,i)=y(in(1,i));
end
dout = diag(gradient(out,in),0);

end