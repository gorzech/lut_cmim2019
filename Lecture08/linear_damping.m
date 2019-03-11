% Linear damping mass-spring-damper example solved using Euler Cromer
% With zero external force
function linear_damping()
    c_d = 0.3;
    k_s = 1;
    c_f = @(v) c_d*v;
    s_f = @(u) k_s*u;
    F = @(~) 0;
    m = 1;
    
    U_0 = 1;
    V_0 = 0;
    T = 12*pi;
    dt = T/5000;
    [t, u, ~] = EulerCromer(c_f, s_f, F, m, T, U_0, V_0, dt);
    plot(t, u);
end