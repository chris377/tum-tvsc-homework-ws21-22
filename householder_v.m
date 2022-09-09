%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [v] = householder_v(a,i)

switch nargin
    case 1
        i = 1;
    otherwise
        i = i;
end

e1 = zeros(length(a),1);
e1(i,1) = 1;
b = e1 * norm(a);
b(i) = b(i) * ((a(i)<0)*2 - 1);
v = a-b;

end