//start a file with
clear

//input
function y = x(t)
    y = 3*sin(100*%pi*t)
endfunction
omega = 100*%pi
//condition for input

//calculate
period = 2*%pi/omega
t = linspace(0,period*5,100)

plot(t, x)


//output
