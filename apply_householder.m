%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [r] = apply_householder(v, u)

r = u-2*(1/dot(v,v.'))*dot(u,v)*v;


end