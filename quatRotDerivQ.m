function dq = quatRotDerivQ(q,p)
    C = [1 , zeros(1,3)
        zeros(3,1), -eye(3,3)];
    dq = C*quatProdOp(quatProd(q,C*p))*C + quatProdOp(quatProd(q,p))*C;
end