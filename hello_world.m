fprintf("Hello world!\n");

N = 10
for i = 1:N
    fprintf("i = %d\n", i);
end

M = 100;
for j = 1:M
    fprintf("j^2 = %d\n", j*j);
ends

% Now we're making some major new updates, implementing new features
% This will be version 2.

% Solving a REALLY simple linear system
N = 1000;
M = 50;
A = eye(N);
b = ones(N,1); % something here?
C = 2 * ones(M, 1);

x = A\b;

fprintf('Norm of x equals %g\n', norm(x));