function [] = visualTime(hora, timer)
%VISUALTIME Plotea hora y fecha en los tableros de medici�n (no el de PC)
% 
% Uso: visualTime(clock, timer)
% 
% Argumento:
%       hora     - Hora en un vector fila [hora, minutos]
%       timer     - Tablero sobre el cual colocar el n�mero (1-3)
% 
% V1.0
% Diego Leiva

c = clock;

%Plot D�A
dayPlot(num2str(c(3)),timer);

%Plot A�O
yearPlot(num2str(c(1)),timer);

%Plot HORA
hourPlot(num2str(hora(1)),timer);

%Plot MIN
minPlot(num2str(hora(2)),timer);

end

