%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9


% MAIN SIN PARTE VISUAL NI SELECCIONADOR DE IMÁGENES


% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navarro
%%

function [Ref] = mainSpeedTest(imagen)

clc

%HAY QUE CARGAR UNA IMAGEN AL WORKSPACE ANTES DE HACER LA PRUEBA CON TIEMPO

imagenBW = Threshold(imagen);
imagenFil = Filtrador(imagenBW);
Ref = Referencia(imagenFil);
imagenLim = limpiador(imagenFil,Ref,600,800);
[horaF,minutoF] = angulo2(imagenLim,Ref);
hora = floor(horaF);
minuto = floor(minutoF);
% hold on;
%%plot(Ref(1),Ref(2),'b*');
%         hold off;
fprintf('Son las %i : %i',hora,minuto);




end


