//start with a clear
clear
//fucntion multi
function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    sizex1 = size(x1n, "c");
    sizex2 = size(x2n, "c");
    if x1origin > x2origin then
        add_var = x1origin - x2origin;
        x2n(add_var+1:sizex2+add_var) = x2n(1:sizex2);
        x2n(1:add_var) = 0;
        x1n(sizex1+1:sizex1+add_var) = 0;
        yn = x1n .* x2n;
        yorigin = x1origin;
    elseif x1origin < x2origin then
        add_var = x2origin - x1origin;
        x1n(add_var+1:sizex2+add_var) = x1n(1:sizex2);
        x1n(1:add_var) = 0;
        x2n(sizex1+1:sizex1+add_var) = 0;
        yn = x1n .* x2n;
        yorigin = x2origin;
    else
        yn =x1n .* x2n;
        yorigin = x1origin;
    end
endfunction

//input
x1n = [0 1 -2 3 6 0];
x2n = [0 -1 2 4 5 0];
x1origin = 2;
x2origin = 3;
k = 1;
// output
[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);

//graphically display x1n, x2n and yn
clf
n = [-2:3];
subplot(1,3,1);
plot2d3(n,x1n);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title x1(n) fontsize 5 color blue
n = [-3:2];
subplot(1,3,2);
plot2d3(n,x2n);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title x2(n) fontsize 5 color blue
n= [-3:3];
subplot(1,3,3);
plot2d3(n,yn);
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title y(n) fontsize 5 color blue
