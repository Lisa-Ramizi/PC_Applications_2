function [X, Y] = triangle_chaos_game(n, p1, p2, p3)

    x = 0;
    y = 0;


    X = zeros(1,n);
    Y = zeros(1,n);


    x1 = 0;
    y1 = 0;
    x2 = 1;
    y2 = 0;
    x3 = 0.5;
    y3 = sqrt(3)/2;


    for i = 1:n

        r = rand();


        if r < p1
            x = (x+x1)/2;
            y = (y+y1)/2;
        elseif r < p1+p2
            x = (x+x2)/2;
            y = (y+y2)/2;
        else
            x = (x+x3)/2;
            y = (y+y3)/2;
        end


        X(i) = x;
        Y(i) = y;
    end
end
