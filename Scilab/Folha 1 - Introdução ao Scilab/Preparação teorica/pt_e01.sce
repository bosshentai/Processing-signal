// elaborar a matriz A 
A = [2 1 ; 1 2 ];

//a) calcule B = A * A 

B = A * A ;

//b) C = produto ponto a ponto A com A 

C = A .* A;

//c) calcule  A^(-1)

D = inv(A);

// Calcule o inverso ponto a ponto de A, 1/A;
F = 1/A;

//e) faça um rotaçao vertical das linhas da matriz 

E = A(:,$:-1:1);

// f) faça um rotaçao horizontal das linhas

F = A($:-1:1,:);
