%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9

% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navararro
%%

function [Ref] = main()

clc
fprintf('PROYECTO FINAL: LECTURA DE UN RELOJ ANALÓGICO\n');

imagen = imread('Imagen00006.BMP');

imagenBW = Threshold(imagen);
imagenFil = Filtrador(imagenBW);
Ref = Referencia(imagenFil);

end


