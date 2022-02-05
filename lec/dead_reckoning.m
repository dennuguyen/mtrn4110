r = 30;
l = 50;

theta_L = deg2rad(45);
theta_R = deg2rad(15);

delta_s = (r*theta_L)/2 + (r*theta_R)/2;
delta_theta = (-1*(r*theta_L)/(2*l)) + ((r*theta_R)/(2*l));

p_0 = [20; 20; 0.2];
p_1 = p_0 + [delta_s*cos(p_0(3)+delta_theta/2); delta_s*sin(p_0(3)+delta_theta/2); delta_theta]