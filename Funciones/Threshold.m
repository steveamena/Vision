function [imagenBW2] = Threshold(imagen)

% Binarizar imagen

% Salidas:
%   imagenBW2      =  imagen en escala de grises

% Entradas:
%   imagen       =   imagenes campturadas

%Diego Aguilar

imagenBW = im2bw(imagen, 70/255);
imagenBWnot = not(imagenBW);
imagenBW2 = imfill(imagenBWnot,4,'holes');
end