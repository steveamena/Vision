function [imagenFil] = Filtrador(imagen)

% Objetivo: Eliminar segundero por erosionado
% Salidas:
%   imagenFil = imagen filtrada
% Entradas:
%   imagen    = imagen en escala de grises
%Diego Aguilar (C) 2018

%  Define el elemento estructurante
seSQ = strel('diamond',1);

% Aplica erosiones sucesivas, 3 en total
imagenFil = imerode(imagen , seSQ);
imagenFil = imerode(imagenFil , seSQ);
imagenFil = imerode(imagenFil , seSQ);

end
