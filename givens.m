function [c, s, r] = givens(u)
    a=u(1);
    b=u(2);
    
    if b == 0
        c = sign(a);
        err = 1e-15;
        if  c < err
            c = 1.0; 
        end
        s = 0;
        r = abs(a);    

    elseif a == 0
        c = 0;
        s = -sign(b);
        r = abs(b);

    elseif abs(a) > abs(b)
        t = b / a;
        u = sign(a) * sqrt(1 + t * t);
        c = 1 / u;
        s = -c * t;
        r = a * u;
    else
        t = a / b;
        u = sign(b) * sqrt(1 + t * t);
        s = -1 / u;
        c = t / u;
        r = b * u;
    end
end