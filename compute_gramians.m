%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [O_Gram, C_Gram] = compute_gramians(O, C)

O_Gram = O'*O;
C_Gram = C*C';

end