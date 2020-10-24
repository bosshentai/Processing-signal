clear all; 
//criar figure 
g1 = scf(0);
g2 = scf(1);


N = 1024; //dimensao da amostra
ti = 0;  // tempo inicial
tf = 2 ; // tempo final 

intervalo_tempo = linspace(ti,tf,N);

distancia_amostras = intervalo_tempo(2) - intervalo_tempo(1);

// fazer o mesmo processo mas sem usar linspace 
ti_v2 = -2;
tf_v2 = 2;

intervalo_tempo_v2 = [ti_v2: 4/N: tf_v2];

distancia_de_amostras_v2 = intervalo_tempo_v2(2) - intervalo_tempo_v2(1);


// depois de criar funçao st 

frequencia = 10;
st_1 = st(frequencia,intervalo_tempo);
st_2 = st(frequencia,intervalo_tempo_v2);


// 3. 
Amplitude = 4.3;
st_1_v2 = Amplitude .* st_1;
st_2 = Amplitude .* st_2;


// 4 
alpha = 2 ;
gt_1 = gt(alpha,intervalo_tempo);
gt_2 = gt(alpha,intervalo_tempo_v2);

// 5 
scf(g1);
subplot(2,2,1)
title('Sinal Continuo senoidal','fontsize',5,'color','blue')
xlabel('Tempo','color','blue')
ylabel('Amplitude(HZ)','color','blue')
plot(intervalo_tempo, st_1);
subplot(2,2,2)
title('Energia','fontsize',5,'color','red')
xlabel('Tempo','color','red')
ylabel('Amplitude(HZ)','color','red')
plot(intervalo_tempo,gt_1,'color','red');
subplot(2,2,3)
title('Sinal Continuo senoidal','fontsize',5,'color','blue')
xlabel('Tempo','color','blue')
ylabel('Amplitude(HZ)','color','blue')
plot(intervalo_tempo_v2, st_2);
subplot(2,2,4)
title('Energia','fontsize',5,'color','red')
xlabel('Tempo','color','red')
ylabel('Amplitude(HZ)','color','red')
plot(intervalo_tempo_v2,gt_2,'red')


ht_1 = gt_1 .* st_1;
ht_2 = gt_2 .* st_2;
scf(g2);
subplot(2,1,1)
title('Resposta final','fontsize',5,'color','green')
xlabel('Tempo','color','green')
ylabel('Amplitude(HZ)','color','green')
plot(intervalo_tempo,ht_1,'color','green');
subplot(2,1,2)
title('Resposta final','fontsize',5,'color','green')
xlabel('Tempo','color','green')
ylabel('Amplitude(HZ)','color','green')
plot(intervalo_tempo_v2,ht_2,'color','green');

