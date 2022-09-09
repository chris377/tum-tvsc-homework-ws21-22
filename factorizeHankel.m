%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [Obs, Con] = factorizeHankel(H, epsilon)

singular_values = [];
singular_values_red = [];
[U,S,V] = svd(H);
r = min(size(S));
singular_values(1:r,1) = diag(S(1:r,1:r))
Obs = U * sqrt(S);
Con = sqrt(S) * V';
r_red = sum(singular_values(:,1) > epsilon);
Obs = Obs(:,1:r_red);
Con = Con(1:r_red,:);





end
