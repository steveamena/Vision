%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9

% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navararro
%%

function [Ref] = main()

clc
fprintf('PROYECTO FINAL: LECTURA DE UN RELOJ ANALÓGICO\n');

imagen = imread('Imagen00200.BMP');
imagenBW = Threshold(imagen);
imagenFil = Filtrador(imagenBW);
Ref = Referencia(imagenFil);
imagenLim = limpiador(imagenFil,Ref,600,800);
[hora,minuto] = angulo2(imagenLim,Ref);
disp(floor(hora));
disp(round(minuto));
hold on;
plot(Ref(1),Ref(2),'b*');
hold off;
end


