function C_r = revolute_joint(i, j, s_i, s_j, q)

r_i = q(3 * i - 2:3 * i - 1);
phi_i = q(3 * i);
r_j = q(3 * j - 2:3 * j - 1);
phi_j = q(3 * j);

C_r = r_i + rot(phi_i) * s_i - r_j - rot(phi_j) * s_j;
