%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function H = extract_hankel(T)

[m,n] = size(T);
for i = 2:m
    H{i-1} = fliplr(T(i:n,1:i-1));
end


end