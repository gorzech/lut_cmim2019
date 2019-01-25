% Solution for one of the hands-on. Or even for two of them. About printing
% and formatting.

% t = [1, 1.55, 2.1];
% 
% ft = t .* sin(t);
% 
% fprintf('%5.2f, %5.3f\n', t(1), ft(1));
% fprintf('%5.2f, %5.3f\n', t(2), ft(2));
% fprintf('%5.2f, %5.3f\n', t(3), ft(3));
x = pi;
y = 2;
res = x*y;

fprintf('Multiplying %.5f and %d gives %.3f\n', x, y, res)
disp(['Multiplying ',num2str(x, 6),' and ',num2str(y),...
    ' gives ',num2str(res, 4)]);