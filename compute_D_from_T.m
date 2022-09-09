%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function D = compute_D_from_T(T)
    D = {};
    % Your code here:
    [m,n] = size(T);
    for i = 1:m
        D{i} = T(i,i);
    end
    
    
end