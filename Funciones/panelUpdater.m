function [time_backup] = panelUpdater(hora, backup)
%PANELUPDATER Permite plotear nuevo tiempo y guardar el anterior
% 
% Uso: panelUpdater(hora, backup)
% 
% Argumento:
%       hora        - Hora en un vector fila [hora, minutos]
%       backup      - Indicador de si ya se hizo una medición anterior
% 
% Salida:
%       time_backup - Vector que contiene la info para un nuevo tiempo
% 
% V1.0
% Diego Leiva

if backup == 0
    time_backup = visualTime(hora, 1, 0);
    
else
    time_backup = visualTime(hora, 3, backup);
    time_backup = visualTime(hora, 1,0);
    
end


end

