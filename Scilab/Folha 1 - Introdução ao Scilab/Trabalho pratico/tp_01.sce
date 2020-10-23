clear all;

// 1) 
N = 1024; // dimensao da amostra 
ti_1 = 0 ; // tempo inicial 
tf_1 = 2 ; // tempo final 

t_1 = linspace(ti_1,tf_1,N); // gerando o intervalo de tempo com N amostras 
 
Intervalo_de_amostras_1 = t_1(2) - t_1(1); // Distancia entre 2 amostras [t(n) - t(n-1)]



// fazer o mesmo processo tem linspace ; 

ti_2 = -2 ; // tempo inicial 
tf_2 = 2 ; // tempo final

t_2 = [ti_2 : 2/N : tf_2 ]; // gerando o intervalo de tempo com N amostras 

intervalo_de_amostras_2 = t_2(2) - t_1(1);


// 2) 

// frequencia f0 = 10
f = 10 ; //
// x = w0*t = 2pi*f*t 
x_1 = 2*%pi*f*t_1;
x_2 = 2*%pi*f*t_2;
// s(t) = sin(x)
st_1 = sin(x_1);
st_2 = sin(x_2);
// 3) 
A = 4.3;

st_amp_1 = A .* st_1;
st_amp_2 = A .* st_2;
// 4) 
//g(t) = exp(-alpha*t)
alpha = 2 ;
gt_1 = exp(-alpha .* t_1);
gt_2 = exp(-alpha .* t_2);
// 5) 
// representa de plot 
// st 
// gt

//6) 
// ht = gt*st 
ht_1 = gt_1 .* st_1;
ht_2 = gt_2 .* st_2;



subplot(2,3,1)
title('Sinal Continuo senoidal','fontsize',5,'color','blue')
xlabel('Tempo','color','blue')
ylabel('Amplitude(HZ)','color','blue')
plot(t_1, st_amp_1);
subplot(2,3,2)
title('Energia','fontsize',5,'color','red')
xlabel('Tempo','color','red')
ylabel('Amplitude(HZ)','color','red')
plot(t_1,gt_1,'color','red');
subplot(2,3,3)
title('')
plot(t_1,ht_1,'color','green')
subplot(2,3,4)
title('Sinal Continuo senoidal','fontsize',5,'color','blue')
xlabel('Tempo','color','blue')
ylabel('Amplitude(HZ)','color','blue')
plot(t_2, st_amp_2);
subplot(2,3,5)
title('Energia','fontsize',5,'color','red')
xlabel('Tempo','color','red')
ylabel('Amplitude(HZ)','color','red')
plot(t_2,gt_2,'red')
subplot(2,3,6)
plot(t_2,ht_2,'green')


