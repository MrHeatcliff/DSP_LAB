clear
//function for calculate x_e(n)
function y=f(x)
    for i = 1 : size(x,"c")
        rev_x_n(1,i) = x(1,size(x,"c")-i+1);
    end
    y = 1/2 * (x + rev_x_n);
endfunction
//function for calculate x_o(n)
function y=g(x)
    for i = 1 : size(x,"c")
        rev_x_n(1,i) = x(1,size(x,"c")-i+1);
    end
    y = 1/2 * (x - rev_x_n);
endfunction
//input x_n
n = -2:2;
x_n = [0 1 3 -2 0];

//display output
x_n_e = f(x_n);
x_n_o = g(x_n);
disp("Even signal component")
disp(x_n_e)
disp("Odd signal component")
disp(x_n_o)

// draw odd signal
f0 = scf(0)
clf
plot2d3(n,x_n_o, nax = [0,length(n),0,max(x_n_o) - min(x_n_o)+1])
title("Odd Signal")
xlabel("n")
ylabel("x_o(n)")
xgrid(color("grey75"), 1, 7)
//draw even signal
f1 = scf(1)
clf
plot2d3(n,x_n_e, nax = [0,length(n),0,max(x_n_e) - min(x_n_e)+1])
title("Even Signal")
xlabel("n")
ylabel("x_e(n)")
xgrid(color("grey75"), 1, 7)
//draw x_n signal
f2 = scf(2)
clf
plot2d3(n,x_n, nax = [0,length(n),0,max(x_n) - min(x_n)+1])
title("X(n) Signal")
xlabel("n")
ylabel("x(n)")
xgrid(color("grey75"), 1, 7)
