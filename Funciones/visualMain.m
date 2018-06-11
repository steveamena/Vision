function [time_backup] = visualMain(hora, backup)
%VISUALMAIN Main que une todas las funciones del UI
% 
% Uso: visualMain(hora, backup)
% 
% Argumento:
%       hora   - N�mero en forma de vector
%       backup - Indicador de si ya se hizo una medici�n anterior
% 
% Salida:
%       time_backup - Vector que contiene la info para un nuevo tiempo
% 
% V1.0 
% Diego Leiva

% Medici�n de tiempo 

time_backup = panelUpdater(hora, backup);



end

