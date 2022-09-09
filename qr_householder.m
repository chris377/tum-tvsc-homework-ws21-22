%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [A_h, b_h] = qr_householder(A, b)

[m,n] = size(A);
R = A;
b_h = b;
for i = 1:n
    v = householder_v(R(i:end,i));
    R(i:end,i:end) = apply_householder_matrix(v,R(i:end,i:end));
    b_h(i:end) = apply_householder(v,b_h(i:end));
end
A_h = R;




end
