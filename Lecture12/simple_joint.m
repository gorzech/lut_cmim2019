function C = simple_joint(i, k, c_k, q)
% i - body id
% k = 1, 2, 3 for x, y and phi
% c_k - value of coordinate to keep all the time
% q - coordinate vector

C = q(3 * (i - 1) + k) - c_k;