%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function Sigma_i = InvertStateSpace(Sigma)
% Inverts the given causal state-space system. Returns State-Space 
% representation of the result.
% Input 'Sigma' is a struct with four elements 'A','B','C' and 'D'.
% These elements are cell-arrays containing the realization matrices
% (notation as in the lecture scripts). Output 'Sigma_i' has the same
% struct format.

Sigma_i = struct;
for i = 1:length(Sigma.A)
    Sigma_i.A{i} = Sigma.A{i}-Sigma.B{i}*inv(Sigma.D{i})*Sigma.C{i};
    Sigma_i.B{i} = Sigma.B{i}*inv(Sigma.D{i});
    Sigma_i.C{i} = -inv(Sigma.D{i})*Sigma.C{i};
    Sigma_i.D{i} = inv(Sigma.D{i});
end

end