//n0 localizacao
//n1 tempo inicial
//n2 tempo final



function[x n] = dirac_unit(n1,n2,n0)
    amo = n2-n1 + 1;
    n = linspace(n1,n2,amo);
    x = n - n0 >=0;
    
