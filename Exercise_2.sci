//start a file with
clear

//input
A = 3
omega = 100*%pi
theta = -%pi/2
sampling_rate = 300
num_period = 5
function y = x(t)
    y = A*sin(omega*t)
    // y = 3cos(100pi*t - pi/2)
endfunction

function y = x_n(n)
    y = A*sin(omega/sampling_rate*n)
    // y = 3cos(*t - pi/2)
endfunction
// some functions for tasks
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
t = 0:1:30
clf

plot(t, x_n(t),"*r")
title("x = 3sin(100*pi*n)", "fontsize",3)
