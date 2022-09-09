%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [R] = apply_householder_matrix(v, U)

[m,n] = size(U);
for i = 1:n
    R(:,i) = apply_householder(v,U(:,i));
end


end