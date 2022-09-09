%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function Sigma_m = MultiplyStateSpace(Sigma_1, Sigma_2)
% Multiplies two causal systems 'Sigma_1' and 'Sigma_2' in State-Space
% (result = System 1 x System 2).
% Returns State-Space representation of the resulting system.
% Inputs 'Sigma_1' and 'Sigma_2' are structs with four elements 
% 'A','B','C' and 'D'. These elements are cell-arrays containing the 
% realization matrices (notation as in the lecture scripts). 
% Output 'Sigma_m' has the same format.



Sigma_m = struct;
for i = 1:length(Sigma_1.A)
        
        Sigma_m.A{i} = [Sigma_2.A{i},zeros(size(Sigma_2.A{i},1),size(Sigma_1.A{i},2));Sigma_1.B{i}*Sigma_2.C{i},Sigma_1.A{i}];
        Sigma_m.B{i} = [Sigma_2.B{i}; Sigma_1.B{i}*Sigma_2.D{i}];
        Sigma_m.C{i} = [Sigma_1.D{i}*Sigma_2.C{i}, Sigma_1.C{i}];
        Sigma_m.D{i} = Sigma_1.D{i} * Sigma_2.D{i};
end



    



end