//start a file with
clear
//input
x1n = [0 1 3 -2]
x1origin = 1
x2n = [0 1 2 3]
x2origin = 2
// some functions for tasks
function [yn, yorigin] = add (x1n, x1origin, x2n, x2origin)
    i_min = min(1 - x1origin, 1 - x2origin)
    i_max = max(size(x1n,"c") - x1origin, size(x2n,"c") - x2origin)
    n = max(1, i_min)
    for i = i_min:i_max
        if i + x1origin < 1 | i + x1origin > size(x1n,"c") then
            x1 = 0
        else
            x1 = x1n(i + x1origin)
        end
        
        if i + x2origin < 1 || i + x2origin > size(x2n,"c") then
            x2 = 0
        else
            x2 = x2n(i + x2origin)
        end
        
        yn(1,n) = x1 + x2
        if i == 0 then
            yorigin = n
        end
        n = n + 1
    end
endfunction

function draw_plot(xn, xorigin, x_label, y_label, plot_title)
    n = 1:size(xn,"c")
    x = n - xorigin    
    y = xn
    rect = [x(1) - 0.5, min(y)-0.5, x(size(xn,"c"))+0.5, max(y) + 0.5] 
    nax = [0,-1,-1, -1]
    scatter(x, y, , "black", "fill")
    plot2d3(x, y, nax = nax, rect = rect)
    xgrid(color("grey75"), 1, 7)
    if ~exists("x_label","local") then
        x_label = ""
    end
    if ~exists("y_label","local") then
        y_label = ""
    end
    if ~exists("plot_title","local") then
        plot_title = ""
    end
    xlabel(x_label, "fontsize", 4.5, "color", "blue")
    ylabel(y_label, "fontsize", 4.5, "color", "seagreen")
    title(plot_title, "fontsize", 5, "color", "black")
endfunction
//calculate and draw plots
[yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
clf 
subplot(3,1,1);
draw_plot(x1n,x1origin, "n", "x1(n)", "x1(n)")
subplot(3,1,2);
draw_plot(x2n,x2origin, "n", "x2(n)", "x2(n)")
subplot(3,1,3);
draw_plot(yn,yorigin, "n", "y(n)", "y(n) = x1(n)+x2(n)")
// print the result
disp(["x1 = ", x1n])
