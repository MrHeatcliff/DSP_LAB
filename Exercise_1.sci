// start with a file
clear
//function
function y=f(x)
    //z = [1 1 1 1];
    col = length(x(1,:));
    row = length(x)/col;
    for i = 1:row
        for j = 1: col
        y(i,j) = x(i,j)+1;
        end
    end
    //y = x + z;
endfunction
//input
x1 = 1:4;

//cal


//output
y1 = f(x1);
disp(y1)
//

