%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [C,dC] = cost(y, y_pred)
Cfunktion = @(x1,x2) norm(x1-x2)*norm(x1-x2);
[m,n] = size(y);
C =Cfunktion(y,y_pred)%cost
for i =1:m
    dC(i) = 2*abs(y(i)-y_pred(i)); % derivative of cost w.r.t. y_pred 
end
end