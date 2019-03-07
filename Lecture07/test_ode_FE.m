%% test ode FE with hand made computation
f = @(t, u) u;
dt = 1;
U_0 = 1;
T = 3*dt;
expected = [U_0, 2, 4, 8]';
expected = [expected expected];
expexted_time = (0:dt:T)';
tol = eps(1e2);

[time, sol] = ode_FE(f, [dt, T], [U_0; U_0]);
assert(isequal(size(sol), size(expected)), "Unexpected solution vector size [%s], should be [%s]",...
    num2str(size(sol)), num2str(size(expected)))
assert(isequal([size(sol, 1), 1], size(time)), "Solution and time sized does not match")
assert(max(max(abs(sol - expected))) < tol, "Forward Euler solution is inaccurate")
assert(max(abs(time - expexted_time)) < tol, "Forward Euler time vector is incorrect")

%% Second ode_FE test - with known exact FE solution
r1 = 0.1234;
r2 = 0.4321;
dt = 0.336;
U_0 = 5.64;
n = 46;
T = n * dt;
f = @(t, u) [r1; r2] .* u;
expexted_time = (0:dt:T)';
expected = [U_0 * (1 + r1 * dt).^(0:n)'  U_0 * (1 + r2 * dt).^(0:n)'];
tol = eps()*1e5;

[time, sol] = ode_FE(f, [dt, T], [U_0; U_0]);
assert(isequal(size(sol), size(expected)), "Unexpected solution vector size [%s], should be [%s]",...
    num2str(size(sol)), num2str(size(expected)))
assert(isequal([size(sol, 1), 1], size(time)), "Solution and time sized does not match")
assert(max(max(abs(sol - expected))) < tol, "Forward Euler solution is inaccurate")
assert(max(abs(time - expexted_time)) < tol, "Forward Euler time vector is incorrect")

