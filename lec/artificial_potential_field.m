% Inputs 
zeta = 3;
n = 60;
r = 3;
p = [3; 3];
p_obs = [4; 2];
p_goal = [8; 1];

% Attractive forces 
U_att = 0.5*zeta*norm(p-p_goal).^2;

F_att = -zeta*(p-p_goal);

% Repulsive forces 
D = sqrt((p-p_obs).'*(p-p_obs))

if D<=r
    U_rep = 0.5*n*((1/D)-(1/r))^2
else
    U_rep = 0
end

if D<=r
    F_rep = n*((1/D)-(1/r))*(1/(D^3))*(p-p_obs)
else
    F_rep = 0
end
    
% Net force 
F_net = F_att + F_rep

