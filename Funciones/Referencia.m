function [Ref] = Referencia(imagen)

% Se obtiene el punto de referencia
% Salidas:
%   Ref      = Referencia

%          Ref =   [ x   y ]

% Entradas:
%   Imagen       = Imagen filtrada

%Diego Aguilar
L = bwlabel(imagen);
stats = regionprops('table',L,'Area','Centroid');
%Convierte a matriz
S = table2array(stats);
Region = [];
center = [];

% Filtra las regiones con areas muy grandes
for i=1:length(S(:,1))
    if (S(i,1) < 200) && (S(i,1)>9);
        Region = [S(i,:);Region];
    end
end
% imshow(imagen)
%%Se obtiene punto maximo y minimo
[MaxValue, RegionYmax] = max(Region(:,3));
[MinValue, RegionYmin] = min(Region(:,3));
RegionActual = [(Region(RegionYmax,:)); (Region(RegionYmin,:))];

%Visualizar puntos maximos y minimos
for i=1:length(RegionActual(:,1));
    center = [RegionActual(i,2),RegionActual(i,3)];
%     viscircles(center, 15);
end

%Calculo de Referencia
Ref(1,1) = (RegionActual(1,2)+RegionActual(2,2))/2;
Ref(1,2) = (RegionActual(1,3)-RegionActual(2,3))/2 + RegionActual(2,3);

%Visualizar Referencia
% viscircles(Ref, 15);

end