%First Order Linear ODE
%1. Leibnitz Equation -1
%(x^2 + y^2)dx + 2xydy = 0
syms y(x)
ode = diff(y,x) == x*y
ySol(x) = dsolve(ode)

%Leibnitz Equation-2
syms y(x)
ode = (diff(y,x) * x^4) + 2*y*(x^3) == 1
ySol(x) = dsolve(ode)

%Leibnitz Equation -3
syms y(x)
ode = (diff(y,x) * (x^2 -1)) + 4*x*y == x
ySol(x) = dsolve(ode)

%Exact Equation -1/ Homogeneous degree 2
syms y(x)
ode = (x^2 + y^2)* diff(x) + 2*x*y*diff(y) == 0
ySol(x) = dsolve(ode)

% Bernoulli Equation, n=3
ode = (diff(y,x) + y) == x*y^3
ySol(x) = dsolve(ode)

% Homogeneous, degree 1; first-order nonlinear ODE with a square root term,
% which might not have a simple analytical solution that can be expressed in
% terms of elementary functions. dsolve might not be able to find
% a symbolic solution for this equation. 
syms y(x)
ode = (y + sqrt(x^2 - y^2)) * diff(x) - x*diff(y) == 0
ySol(x) = dsolve(ode)

% Variable Separable
syms y(x)
ode = (x*diff(x)*sin(y)*diff(x)) + (1+x^2)*cos(y)*diff(y) == 0
ySol(x) = dsolve(ode)

syms x y M N
% Given equation in the form M(x, y)dx + N(x, y) * dy = 0
M = (x^2 + y^2)
N = 2*x*y
%exact eqn
% Calculate partial derivatives
dM_dy = diff(M,y)
dN_dx = diff(N,x)

% Check if the equation is exact
if dM_dy == dN_dx
    disp('The equation is exact.');
end    

syms x y M N
syms y(x)
% Given equation in the form M(x, y)dx + N(x, y) * dy = 0
M = 4*x*y - x
N = x^2 - 1
%Leibnitz eqn; Not exact
% Calculate partial derivatives
dM_dy = diff(M,y)
dN_dx = diff(N,x)

% Check if the equation is exact
if dM_dy == dN_dx
    disp('The equation is exact.');
else   
    disp('The equation is not exact.');
    disp('Finding integrating factor...')
    %Finding Integrating Factor
    mu = exp(int(N/M, x));

    % Display the integrating factor if found
    disp(['Integrating Factor: ', char(mu)]);  

    % Multiply the equation by the integrating factor to make it exact
    exact_eq = (mu * M ) * diff(x) + mu * N *diff(y) == 0;

    % Solve the modified exact equation 
    disp('Solution:');
    ySol(x) = dsolve(exact_eq)  
end    

syms x y M N
syms y(x)
% Given equation in the form M(x, y)dx + N(x, y) * dy = 0
M = 2*x^3*y -1
N = x^4

%Leibnitz eqn; Not exact
% Calculate partial derivatives
dM_dy = diff(M,y)
dN_dx = diff(N,x)

% Check if the equation is exact
if dM_dy == dN_dx
    disp('The equation is exact.');
else   
    disp('The equation is not exact.');
    disp('Finding integrating factor...')
    %Finding Integrating Factor
    mu = exp(int(N/M, x));  
    % Display the integrating factor if found
    disp(['Integrating Factor: ', char(mu)]);
    % Multiply the equation by the integrating factor to make it exact
    exact_eq = (mu * M ) * diff(x) + mu * N *diff(y) == 0;
    % Solve the modified exact equation 
    disp('Solution:');
    ySol(x) = dsolve(exact_eq)
end  
