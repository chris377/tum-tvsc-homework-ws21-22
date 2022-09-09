%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [W_cells, b_cells, loss] = trainNeuralNetwork(X_train, Y_train, W_cells, b_cells, f_cells, alpha, n_iterations)
    loss = zeros(1,n_iterations);
    for i=1:n_iterations
        for j=1:size(X_train,2)
            x = X_train(:,j);
            y = Y_train(:,j);
            [a_cells,z_cells]=forwardPass(x,W_cells,b_cells,f_cells);% TODO: Compute outputs and activations with forward pass
            [C,dC]=cost(y,a_cells{end});% TODO: Calculate cost and cost derivative based on true y and prediction
            [dW_cells,db_cells]=backwardPass(x,dC,a_cells,z_cells,W_cells,f_cells);% TODO: Calculate derivative of weights and bias w.r.t. cost with backward pass
            for k=1:length(W_cells)
                W_cells{k} = W_cells{k}-(alpha*dW_cells{k}).';% TODO: Change value to minimize cost
                b_cells{k} = b_cells{k}-(alpha*db_cells{k}).';% TODO: Change value to minimize cost
            end
            loss(i) = loss(i)+C;% TODO: accumulate current cost into i'th loss entry
        end
    end
end