%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [dW_cells, db_cells] = backwardPass(x, dC, a_cells, z_cells, W_cells, f_cells)
[L,m]=size(W_cells);
[f,fdot]=cellfun(f_cells{3},z_cells(L),'UniformOutput',false);
fdotnew = fdot{1,1};
mysterious{L}=dC.*fdotnew;
for i = (L-1):-1:1
   [f,fdot] = cellfun(f_cells{i},z_cells(i),'UniformOutput',false);
   fdotnew = fdot{1,1};
    mysterious{i}=mysterious{i+1}*(W_cells{i+1}*fdotnew);
end      

for i = 1:L
    if i > 1
        db_cells{i} = mysterious{i};
        dW_cells{i}=a_cells{i-1}*mysterious{i};
        %db_cells{i}
        %dW_cells{i}
        if i == L
            db_cells{i}= mysterious{L};
            dW_cells{i}=a_cells{i-1}*mysterious{L};
        end
    else
        db_cells{i}=mysterious{i};
        dW_cells{i}=x*mysterious{i};

    end
end

     

end