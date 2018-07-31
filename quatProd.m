function r = quatProd(q,p)
    r = zeros(4,1);
    r(1) = q(1)*p(1) - q(2:4)'*p(2:4);
    r(2:4) = q(1)*p(2:4) + p(1)*q(2:4) + cross(q(2:4),p(2:4));
end