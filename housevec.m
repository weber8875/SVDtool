function [v,sigma] = housevec(x)

m=norm(x,inf);
n=length(x);
 
    for i = 1:n
        v(i,1) = x(i,1) / m;
    end

sigma = sign(v(1)) * norm(v,2);
v(1)  = v(1) + sigma;
sigma = -m * sigma;

end