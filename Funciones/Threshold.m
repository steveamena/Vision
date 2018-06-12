function [imagenBW2] = Threshold(imagen)

% Binarizar imagen

% Salidas:
%   imagenBW2      =  imagen en escala de grises

% Entradas:
%   imagen       =   imagenes campturadas

%Diego Aguilar

% Se realiza una binarización automática mediante el algoritmo Otsu
level = graythresh(imagen);
% level = 0.2;
imagenBW = im2bw(imagen, level);
imagenBWnot = not(imagenBW);
imagenBW2 = imfill(imagenBWnot,4,'holes');
end
