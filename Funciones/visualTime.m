function [time_backup] = visualTime(hora, timer, backup)
%VISUALTIME Plotea hora y fecha en los tableros de medición (no el de PC)
% 
% Uso: visualTime(hora, timer)
% 
% Argumento:
%       hora        - Hora en un vector fila [hora, minutos]
%       timer       - Tablero sobre el cual colocar el número (1-3)
%       backup      - Indicador de si ya se hizo una medición anterior
% 
% V1.1
% Diego Leiva

c = clock;
time_backup = [c(1),c(2),c(3),hora(1),hora(2)];

if backup ~= 0
    c(1) = backup(1);
    c(2) = backup(2);
    c(3) = backup(3);
    hora(1) = backup(4);
    hora(2) = backup(5);
end
%Plot DÍA
dayPlot(num2str(c(3)),timer);

%Plot AÑO
yearPlot(num2str(c(1)),timer);

%Plot HORA
hourPlot(num2str(hora(1)),timer);

%Plot MIN
minPlot(num2str(hora(2)),timer);

end

