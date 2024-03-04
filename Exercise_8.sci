//start a file with
clear
//input
n = -3:1
x = [0 1 -2 3 6]

// some functions for tasks

//condition for input

//calculate
//y1 = x(-n)
y1 = [0 6 3 -2 1]
n1 = -2:2
//y2 = x(n+3)
y2 = x
n2 = n-3
//y3 = 2x(-n-2)
n3 = -4:0
y3 = [0 12 6 -4 2]
//output
// plot x
f0 = scf(0)
clf 
plot2d3(n, x, nax = [0,length(n),0,max(x) - min(x)+1])
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
title x(n) fontsize 5 color blue
//plot y1
f1 = scf(1)
clf 
plot2d3(n1, y1, nax = [0,length(n1),0,max(y1)- min(y1)+1])
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
ylabel y1(n) fontsize 4.5 color blue
title "y1(n) = x(-n)" fontsize 5 color blue
//plot y2
f2 = scf(2)
clf 
plot2d3([n2 0], [y2 0], nax = [0,length(n2)+2,0,max(y2) - min(y2)+1])
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
ylabel y2(n) fontsize 4.5 color blue
title 'y2(n) = x(n+3)' fontsize 5 color blue
//plot y3
f3 = scf(3)
clf 
plot2d3(n3, y3, nax = [0,length(n3),0,max(y3) - min(y3)+1])
xgrid(color("grey75"), 1, 7)
xlabel n fontsize 4.5 color red
ylabel y3(n) fontsize 4.5 color blue
title 'y3(n) = 2x(-n-2)' fontsize 5 color blue
