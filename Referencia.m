function [] = Referencia(imagen)

stats = regionprops('table',imagen,'Area','Centroid');

%Convierte a matriz
S = table2array(stats);
Region = [];
center = [];
% Filtra las regiones con areas muy grandes
for i=1:length(S(:,1))
    if (S(i,1) < 200) && (S(i,1)>5);
        Region = [S(i,:);Region];
    end
end
imshow(imagen)

[MaxValue, RegionYmax] = max(Region(:,3));
[MinValue, RegionYmin] = min(Region(:,3));

RegionActual = [(Region(RegionYmax,:)); (Region(RegionYmin,:))];
%RegionActual(2,:) = (Region(RegionYmin,:));

for i=1:length(RegionActual(:,1));
    center = [RegionActual(i,2),RegionActual(i,3)];
    viscircles(center, 15);
end

Ref(1,1) = (RegionActual(1,2)+RegionActual(2,2))/2;
Ref(1,2) = (RegionActual(1,3)-RegionActual(2,3))/2 + RegionActual(2,3);
viscircles(Ref, 15);

end