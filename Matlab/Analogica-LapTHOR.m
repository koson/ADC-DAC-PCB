%Se�al Analogica de entrada
clf
t=0:1:16.66                 % Senoidal  Escala de tiempo 16.66 

y=sin(2*pi*0.06*t)          % Vp de 2.5v

plot(t,y)                   % Grafica Se�al de Entrada
hold on
plot(t,y,'ko')              % Grafica Se�al de Salida 
hold off

n=[0:1:10000]               % Duracion del tono 
f_tono=440                  % Tono de 1Khz

fm=8000                     % Frecuencia de muestreo 
Tm=1/fm                     % Periodo de muestreo 
A=1                  

y=A*sin(2*pi*f_tono*Tm*n)   % Sonido Analogico 
sound(y,fm)                 % Genera tono Analogico 

xlabel('Tiempo [ms]')       
ylabel('Tension RMS [v]')
title('Simulaci�n de conversi�n Analog�ca Digital')

%N=Amplitud*sin(2*pi*f_tono*Tm*n) %Sonido Digital



