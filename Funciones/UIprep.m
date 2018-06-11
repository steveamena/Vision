function [] = UIprep(cond)
%UIprep Prepara la interfaz gráfica para el proyecto
% 
% Genera las figuras necesarias para desplegar el reloj digital
% 
% Uso: UIprep(cond)
% 
% Argumento:
%       cond     - Indica si es condición inicial o panel de AM o PM
% 
% V1.1 
% Diego Leiva
directorio = 'Clock_UI';

switch cond
    case 1 %timer apagado
        d = dir(sprintf('%s\\*blank.png',directorio));
    case 2 %timer AM
        d = dir(sprintf('%s\\*blank_AM.png',directorio));
    case 3 %timer PM
        d = dir(sprintf('%s\\*blank_PM.png',directorio));
    otherwise
        CreateStruct.Interpreter = 'none';
        CreateStruct.WindowStyle = 'modal';
        
        errorMessage = sprintf('ERROR: No existe el tablero indicado');
        uiwait(msgbox(errorMessage,'Error de tablero','warn', CreateStruct));
end


if isdir(directorio)
    close all;
    ClockFigure = figure('Name', 'Reloj Digital');
    set(ClockFigure, 'MenuBar', 'none');
    set(ClockFigure, 'ToolBar', 'none');
    blankClock = imread(sprintf('%s\\%s',directorio,d.name));
    imshow(blankClock);
    hold on;
  
else
    %Mensaje de error por si el directorio tiene un nombre distinto o no existe
	errorMessage = sprintf('ERROR: No existe el directorio "%s" en el fólder actual:\n%s\\...',directorio,pwd);
	uiwait(msgbox(errorMessage,'Error de directorio','warn', CreateStruct));
	  
    return;
end
end
