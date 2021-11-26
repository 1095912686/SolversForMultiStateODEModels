function [V, E, F, I, A, Q, R] = extractVariableFromCells_forVEFIAQR(x)
% the dimension of temp told everything
%
% by Guo Xiaohao, 2021/09/23
%

m = numel(x);
[n,~] = size(x{1});
id = 1:4;

% save V
if nargout >= 1
    V = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 0);
        V(i,:) = temp(:);
    end
    varargout{1} = V;
end

% save E
if nargout >= 2
    E = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 1);
        E(i,:) = temp(:);
    end
    varargout{2} = E;
end

% save F
if nargout >= 3
    F = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 2);
        F(i,:) = temp(:);
    end
    varargout{3} = F;
end


% save I
if nargout >= 4
    I = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 3);
        I(i,:) = temp(:);
    end
    varargout{4} = I;
end


% save A
if nargout >= 5
    A = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 4);
        A(i,:) = temp(:);
    end
    varargout{5} = A;
end

% save Q
if nargout >= 6
    Q = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 5);
        Q(i,:) = temp(:);
    end
    varargout{6} = Q;
end

% save R
if nargout >= 7
    R = zeros(m,n*4);
    for i = 1:m
        temp = x{i}(:,id + 4 * 6);
        R(i,:) = temp(:);
    end
    varargout{7} = R;
end