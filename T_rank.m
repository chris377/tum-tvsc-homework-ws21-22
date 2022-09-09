%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function r = T_rank(T_band)
[M,N] = size(T_band);
for i=2:M
    H{i} = fliplr(T_band(i:N,1:i-1));
    [m,n] = size(H{i});
    if ge(m,n) % tall or square matrix
        [U, S, V] = svd(H{i},0);
        r(i-1,1) = rank(S);  
    else % wide matrix
        [V, S, U] = svd(H{i}',0);
        r(i-1,1) = rank(S);
    end
end



end