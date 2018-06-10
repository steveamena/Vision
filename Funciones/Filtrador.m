function [imagenFil] = Filtrador(imagen)

% Objetivo: Eliminar segundero por erosionado

% Salidas:
%   imagenFil      =  imagen filtrada

% Entradas:
%   imagen       = Imagen en escala de grises

%Diego Aguilar

seSQ = strel('diamond',1);

imagenFil = imerode(imagen , seSQ);
imagenFil = imerode(imagenFil , seSQ);
imagenFil = imerode(imagenFil , seSQ);

end