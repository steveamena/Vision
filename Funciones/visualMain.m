function [time_backup] = visualMain(hora, backup)
%VISUALMAIN Main que une todas las funciones del UI
% 
% Uso: visualMain(hora, backup)
% 
% Argumento:
%       hora   - Número en forma de vector
%       backup - Indicador de si ya se hizo una medición anterior
% 
% Salida:
%       time_backup - Vector que contiene la info para un nuevo tiempo
% 
% V1.0 
% Diego Leiva

% Medición de tiempo 

time_backup = panelUpdater(hora, backup);



end

