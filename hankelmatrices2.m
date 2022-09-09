H = {[0.8; 0.2; 0.05; 0.013; 0.003],
    [0.6000    0.2000; 0.2400    0.0500; 0.0960    0.0130; 0.0380    0.0030],
    [0.5000    0.2400    0.0500; 0.2500    0.0960    0.0130; 0.1250    0.0380    0.0030],
    [0.4000    0.2500    0.0960    0.0130; 0.2400    0.1250    0.0380    0.0030],
    [0.3000    0.2400    0.1250    0.0380    0.0030]
   };
H = H';

%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%
[m1,n1] = size(H{3});
A = H{3};

%balanced realization
    if ge(m1,n1) % tall or square matrix
        [U, S, V] = svd(A,0); 
        d = rank(S);
        O_balanced = U(:,1:d)*sqrt(S(1:d,1:d));
        C_balanced = sqrt(S(1:d,1:d))*V(:,1:d)';
    else % wide matrix
        [U, S, V] = svd(H{i}',0);
        d = rank(S);
        O_balanced = U(:,1:d)*sqrt(S(1:d,1:d));
        C_balanced = sqrt(S(1:d,1:d))*V(:,1:d)';
    end


%input normal realization
    if ge(m1,n1) % tall or square matrix
        [U, S, V] = svd(A,0); 
        d = rank(S);
        O_input = U(:,1:d)*S(1:d,1:d);
        C_input = V(:,1:d)';
    else % wide matrix
        [U, S, V] = svd(H{i}',0);
        d = rank(S);
        O_input = U(:,1:d)*S(1:d,1:d);
        C_input = V(:,1:d)';
    end



%output normal realization
    if ge(m1,n1) % tall or square matrix
        [U, S, V] = svd(A,0); 
        d = rank(S);
        O_output = U(:,1:d);
        C_output = S(1:d,1:d)*V(:,1:d)';
    else % wide matrix
        [U, S, V] = svd(H{i}',0);
        d = rank(S);
        O_output = U(:,1:d);
        C_output = S(1:d,1:d)*V(:,1:d)';
    end
