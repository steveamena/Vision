function [imagenBW2] = Threshold(imagen)

% Binarizar imagen

% Salidas:
%   imagenBW2      =  imagen en escala de grises

% Entradas:
%   imagen       =   imagenes campturadas

%Diego Aguilar
level = graythresh(imagen);
imagenBW = im2bw(imagen, level);
imagenBWnot = not(imagenBW);
imagenBW2 = imfill(imagenBWnot,4,'holes');
end