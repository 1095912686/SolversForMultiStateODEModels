function xNext = updateRK4(fun, tCurrent, xCurrent, stepSize)
%%% one-step iteration for solving the differencial equation 
%%% dx/dt = @(x,t)f(x,t,params) by method of RK4
% INPUT  
%       fun: a function handle describe f(x,t)
%  xCurrent: m*n matrix, current x, to be updated
%  tCurrent: a scalar, the current t
%  stepSize: stepSize for updating
%   params : all parameters for the f(x,t,params)
%
% by Guo Xiaohao, 2021/09/23
%

K1 = stepSize * fun(xCurrent, tCurrent);  % m*n matrix
K2 = stepSize * fun(xCurrent + K1/2, tCurrent + stepSize/2);
K3 = stepSize * fun(xCurrent + K2/2, tCurrent + stepSize/2);
K4 = stepSize * fun(xCurrent + K3, tCurrent + stepSize);

xNext = xCurrent + (K1 + 2*K2 + 2*K3 + K4) / 6;

end
