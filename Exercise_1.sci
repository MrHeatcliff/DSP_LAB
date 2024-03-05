//start with a clear
clear
//fucntion delay
function [yn, yorigin] = delay(xn, xorigin, k)
    if k <= xorigin then
        yorigin = xorigin - k;
        yn = xn;
    else 
        yorigin = 0;
        for i = 1: (k-xorigin)
            yn(1,i) = 0;
        end
        for i = 1:size(xn,"c")
            yn(1,k-xorigin+i) = xn(1,i);
        end
    end
endfunction

//input
xn = [1 -2 3 6];
xorigin = 2;
k = 1;
// output
[yn, yorigin] = delay(xn, xorigin, k);

//graphically display xn and yn
clf
n = [-2:1];
subplot(1,2,1);
plot2d3(n,xn);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title x(n) fontsize 5 color blue
n= [-1:2];
subplot(1,2,2);
plot2d3(n,yn);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title y(n) fontsize 5 color blue
