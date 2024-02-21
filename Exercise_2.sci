//start a file with
clear

//input
A = 3
omega = 100*%pi
theta = -%pi/2
sampling_rate = 300
num_period = 5
truncated_delta = 0.1

function y = x(t)
    y = A*sin(omega*t)
    // y = 3cos(100pi*t - pi/2)
endfunction

function y = x_n(n)
    y = A*sin(omega/sampling_rate*n)
    // y = 3cos(*t - pi/2)
endfunction
// some functions for tasks
/*
@ number truncation function
    para:   t - the number need to be truncated
            delta - the number of digit (eg: 0.1, 0.01, 0.001))
    return value: y - the truncated number*/
function y = truncate(t, delta)
    if (t < 0) then
        y = ceil(t/delta)*delta
    else
        y = floor(t/delta)*delta
    end
endfunction

/*
@ for ex2.1
    para:  x - vertical axis 
           t - horizontal axis
    retv: none*/
function draw_plot(x, t)
    disp("ex2.1. Curve in 5 periods")
   // clf
    plot(t, x)
    title("x = 3sin(100*pi*t)", "fontsize",3)
endfunction

//condition for input

//calculate
period = 2*%pi/omega
t = linspace(0,period*num_period,100)
omega_new = omega/sampling_rate
//output ex2.1
draw_plot(x, t)
//output ex2.2
n = poly(0, "n");
temp = omega_new*n+theta
disp("ex2.2. Discrete-time signal x(n) of the signal:")
disp(string(A)+ "cos("+string(temp)+")")

//output ex2.3
n0 = 6
k = 1
n = 0:1:n0*num_period
clf

disp("ex2.3. Draw x(n) in 5 periods")
plot([n ;n],[0*n ;x_n(n)],'marker','d','markerFaceColor','green','markerEdgeColor','yel')
title("x = 3sin(100*pi*n)", "fontsize",3)
//output ex2.4
clf
y = 0:1:30;
for i = 1:31
    y(i) = truncate(x_n(i-1), truncated_delta)
end

disp("ex2.4. Draw xq(n) in 5 periods")
plot([n ;n],[0*n ;y],'marker','d','markerFaceColor','green','markerEdgeColor','yel')



