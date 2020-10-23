clear all; 

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
st_1 = Amplitude .* st_1;
st_2 = Amplitude .* st_2;


// 4 
alpha = 2 ;
gt_1 = gt(alpha,intervalo_tempo);
gt_2 = gt(alpha,intervalo_tempo_v2);
