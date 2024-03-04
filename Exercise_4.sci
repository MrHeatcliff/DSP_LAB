//start a file with
clear

//input
n = -5:5
signal = n
// some functions for tasks

//condition for input

//calculate
signal(signal < 0) = 0
//output 
plot2d3(n, signal)
xlabel n fontsize 4.5 color red
ylabel ur(n) fontsize 4.5 color blue
title 'unit ramp signal' fontsize 5 color blue
xgrid(color("grey75"), 1, 7)
