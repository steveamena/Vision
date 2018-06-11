function [] = PCtime()
%PCtime Obtiene fecha y hora de la computadora para desplegar en el tablero
% 
% Esta función debe ser la primera en correr del UI para cargar las demás
% imágenes correctamente.
%
% V1.1 
% Diego Leiva

c = clock;

if c(4)>11
    UIprep(3); %fondo con PM encendido
    offPanel([1,2,3]);
    if c(4)>12
        c(4)=c(4)-12;
    end 
else 
    UIprep(2);
    offPanel([1,2,3]);
end 

%Plot DÍA
dayPlot(num2str(c(3)),2);

%Plot AÑO
yearPlot(num2str(c(1)),2);

%Plot HORA
hourPlot(num2str(c(4)),2);

%Plot MIN
minPlot(num2str(c(5)),2);



end

