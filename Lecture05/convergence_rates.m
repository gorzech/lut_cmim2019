function r = convergence_rates(f, F, a, b, num_experiments)
% Estimates convergence rates for trapezoidal function using function f
% (with anti-derivative F) on interval [a, b], using num_experiments. Not
% the most elegant but works for us.
% 
% USAGE NOTE: Add folder with your trapezoidal function to path in order to 
% make this function work.
    n = zeros(num_experiments, 1);
    E = zeros(num_experiments, 1);
    r = zeros(num_experiments-1, 1);
    expected = F(b) - F(a);
    for i = 1:num_experiments
        n(i) = 2^i;
        computed = trapezoidal(f, a, b, n(i));
        error = abs(expected - computed);
        E(i) = error;
        if (i > 1)
            r(i-1) = log( E(i-1)/E(i) )/log( n(i-1)/n(i) );
            r(i-1) = round( r(i-1), 2 ); % Truncate, two decimals
        end
    end
end