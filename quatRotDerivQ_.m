function dq = quatRotDerivQ_(q,p)
    dq = zeros(4,4);
    dq(1,1) = q(1)*p(1);
    dq(1,2:4) = p(1)*q(2:4)';
    dq(2:4,1) = q(1)*p(2:4) + cross(q(2:4),p(2:4));
    dq(2:4,2:4) = q(2:4)'*p(2:4)*eye(3,3) - crossMat(q(1)*p(2:4) + cross(q(2:4),p(2:4)));
    dq = dq*2;
end