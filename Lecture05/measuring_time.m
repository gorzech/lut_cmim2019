% Simple script showing how to use tic/toc function pair. Note that it is a
% good idea to run this script at least two times as for the first run
% Matlab may introduce some kind of pre-compilation 
% (https://en.wikipedia.org/wiki/Just-in-time_compilation)
%
% Script requires directory with midpoint script in path in order to work

v_vec = @(t) 3.*t.^2.*exp(t.^3);
v = @(t) 3*t^2*exp(t^3);
n = 1e4;
a = 0; b = 1;

tic
midpoint_vec(v_vec, a, b, n);
toc % t_vec = toc

tic 
midpoint(v_vec, a, b, n);
toc % t_std_vec = toc

tic 
midpoint(v, a, b, n);
toc % t_std = toc
