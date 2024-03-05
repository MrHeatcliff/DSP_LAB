//start with a clear
clear
//fucntion fold
function [yn, yorigin] = fold(xn, xorigin)
    sizex = size(xn, "c");
    for i = 1:sizex
        yn(1,i) = xn(1,1 + sizex-i);
    end
    yorigin = xorigin;
endfunction

//input
xn = [0 1 -2 3 6 0];
xorigin = 3;
k = 1;
// output
[yn, yorigin] = fold(xn, xorigin);

//graphically display xn and yn
clf
n = [-3:2];
subplot(1,2,1);
plot2d3(n,xn);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title x(n) fontsize 5 color blue
n= [-2:3];
subplot(1,2,2);
plot2d3(n,yn);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title y(n) fontsize 5 color blue
