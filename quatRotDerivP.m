function dp = quatRotDerivP(q,~)
    % diagonal
    dp = q(1)^2*eye(4,4);
    
    % skew symmetric
    dp(2:4,2:4) = dp(2:4,2:4) + 2*q(1)*crossMat(q(2:4));
    
    % symmetric
    dp(1,1) = dp(1,1) + norm(q(2:4))^2;
    dp(2:4,2:4) = dp(2:4,2:4) + q(2:4)*q(2:4)' + crossMat(q(2:4))^2;
end