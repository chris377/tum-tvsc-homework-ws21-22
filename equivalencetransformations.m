%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

state_dims = [0,1,2,3,4,3,2,1,0];
A = {}; B = {}; C = {}; D = {};
K = length(state_dims) - 1; % Number of stages
for i = 1:K
    A{i} = rand(state_dims(i+1), state_dims(i));
    B{i} = rand(state_dims(i+1), 1);
    C{i} = rand(1, state_dims(i));
    D{i} = rand(1,1);
end

R_inf{1} = []; % Initial transformation is empty
for i=1:K
    % Your task: Find transformation matrices for each timestep
    
    % SVD decomposition
    [u,s,v] = svd([(A{i}*R_inf{i}), B{i}]');
    r = min(size(v));
    d = diag(s(1:r,1:r));
    s = diag(d);
    u = u';
    v = (s*v')';
    
    % Get non singular transformation for next step
    R_inf{i+1} = v;
end

% Storage for INF realization matrices
A_inf = {}; B_inf = {}; C_inf = {}; D_inf = {};
for i=1:K
    % Your task: Apply transformations to obtain INF realization
    A_inf{i} = R_inf{i+1}^-1 * A{i} * R_inf{i};
    B_inf{i} = R_inf{i+1}^-1 * B{i};
    C_inf{i} = C{i} * R_inf{i};
    D_inf{i} = D{i};
    
    
    
end

