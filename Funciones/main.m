%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9

% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navararro
%%

function [Ref] = main()

clc
fprintf('PROYECTO FINAL: LECTURA DE UN RELOJ ANALÓGICO\n');

imagen = imread('Imagen00311.BMP');
imagenBW = Threshold(imagen);
imagenFil = Filtrador(imagenBW);
Ref = Referencia(imagenFil);
imagenLim = limpiador(imagenFil,Ref,600,800);
[horaF,minutoF] = angulo2(imagenLim,Ref);
hora = floor(horaF);
minuto = round(minutoF);
hold on;
plot(Ref(1),Ref(2),'b*');
hold off;

fprintf('Son las %i : %i',hora,minuto);
end


