%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [a_cells, z_cells] = forwardPass(x, W_cells, b_cells, f_cells)
z_cells{1}=b_cells{1}+W_cells{1}*x;
a_cells{1}=arrayfun(f_cells{1},z_cells{1});
z_cells{2}=b_cells{2}+W_cells{2}*a_cells{1};
a_cells{2}=arrayfun(f_cells{2},z_cells{2});
z_cells{3}=b_cells{3}+W_cells{3}*a_cells{2};
a_cells{3}=arrayfun(f_cells{3},z_cells{3});





end