%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [L, Q] = lq_givens(A)
    Q = { eye(size(A,2)) }; % Initial value for Q factor
    L = { A };              % Initial value for L factor
    % Your code here:

qmittel = eye(size(A,2));
lmittel = A' ;
[m,n] = size(A);
l = 2;

for i=1:m
    for j=n:-1:i+1
        phi = -atan(lmittel(j,i) / lmittel(j-1,i));
        G_embedded = eye(size(A,2));
        G_embedded([j-1,j],[j-1,j]) = [cos(phi), -sin(phi); sin(phi), cos(phi)];
        lmittel = G_embedded * lmittel;
        qmittel = qmittel * G_embedded';
        lvers = lmittel';
        qvers = qmittel';
        L{l} = lvers;
        Q{l} = qvers;
        l = l+1;
          
    end
end



    
end