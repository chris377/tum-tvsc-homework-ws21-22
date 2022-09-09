%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [A_h, b_h] = ql_householder(A, b)

[m,n] = size(A);
R = A;
b_h = b;
j = m;
for i = n:-1:1
    v = householder_v(R(1:j,i),j);
    R(1:j,1:i) = apply_householder_matrix(v,R(1:j,1:i));
    b_h(1:j) = apply_householder(v,b_h(1:j));
    j = j -1;
end
A_h = R;



end
