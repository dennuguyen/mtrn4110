syms a0 a1 a2 a3

t_i = 0;
t_f = 30;
p_i = 10;
p_f = 20;
v_i = 0;
v_f = 0;

eqn1 = a0 + a1*t_i + a2*t_i^2 + a3*t_i^3 == p_i;
eqn2 = a0 + a1*t_f + a2*t_f^2 + a3*t_f^3 == p_f;

eqn3 = a1 + 2*a2*t_i + 3*a3*t_i^2 == v_i;
eqn4 = a1 + 2*a2*t_f + 3*a3*t_f^2 == v_f;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4], [a0, a1, a2, a3]);

X = linsolve(A,B);

cf = vpa(X);

t_i = 15;
cf(1) + cf(2)*t_i + cf(3)*t_i^2 + cf(4)*t_i^3
cf(2) + 2*cf(3)*t_i + 3*cf(4)*t_i^2
2*cf(3) + 6*cf(4)*t_i