//u[n]


/*
function[x ] = dirac_unit(n1,n2,n0)
    amo = n2-n1 + 1;
    n = linspace(n1,n2,amo);
    x = n - n0 >=1;
endfunction   
*/

/*
n = linspace(0,30,1);
xn =  
plot(n,xn);
*/

loc = 0 ;
n = linspace(0,30);
l = length(n)
step = zeros(l);
ind = where(n >= loc); 
//step[ind] = 1;
