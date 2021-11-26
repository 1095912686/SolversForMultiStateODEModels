function [varargout] = odeSolveRK4(fun, tInit, xInit, tFinal, stepSize)
%%% Solve the Initial Value Problem using Rungue Kutta 4th Order Method
%   INPUT:
%       fun          : function handle describe the differencial equation dx/dt = @(x,t)f(x,t,params)
%       tInit        : scalar, time instance of the initial point 
%       xInit        : row vector, values of the initial point
%       tFinal       : solve the ode until t = tFinal
%       stepSize     : fixed stepsize for update
%
%   OUTPUT:
%       x            : m*5 matrix, the solution of the ODE
%       t            : time instances corresponding to x
%       I            : m*n matrix, I_i for each group
%
% by Guo Xiaohao, 2021/09/23
%

tSpan = tInit : stepSize : tFinal;
m = numel(tSpan);
[n,~] = size(xInit);

x = cell(m,1);
x{1} = xInit;

for i = 1:m
    x{i+1} = updateRK4(fun, tSpan(i), x{i}, stepSize);
end
    
t = [tSpan, tFinal+stepSize]';

varargout{1} = x;
varargout{2} = t;


end