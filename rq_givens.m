%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [R, Q] = rq_givens(A)
    Q = { eye(size(A,2)) }; % Initial value for Q factor
    R = { A };              % Initial value for R factor
    % Your code here:



qmittel = eye(size(A,2));
rmittel = rot90(A',2) ;
[m,n] = size(A);
l = 2;

for i=1:m
    for j=n:-1:i+1
        phi = -atan(rmittel(j,i) / rmittel(j-1,i));
        G_embedded = eye(size(A,2));
        G_embedded([j-1,j],[j-1,j]) = [cos(phi), -sin(phi); sin(phi), cos(phi)];
        rmittel = G_embedded * rmittel;
        qmittel = qmittel * G_embedded';
        rvers = rot90(rmittel',2);
        qvers = rot90(qmittel',2);
        R{l} = rvers;
        Q{l} = qvers;
        l = l+1;
          
    end
end



end