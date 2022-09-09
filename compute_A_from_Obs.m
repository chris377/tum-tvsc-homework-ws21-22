%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function A = compute_A_from_Obs(Obs_k, Obs_kPlus1)

ObsUp = Obs_k(2:end,:);
A = pinv(Obs_kPlus1)*ObsUp;
    
end