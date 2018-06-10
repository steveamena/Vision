function [] = UIprep()
%UIprep Prepara la interfaz gráfica para el proyecto
% 
% Genera las figuras necesarias para desplegar el reloj digital
% --> No requiere argumentos de entrada 
% 
% V1.0 
% Diego Leiva

d = dir('Clock_UI\*blank.png');
directorio = 'Clock_UI\';
CreateStruct.Interpreter = 'none';
CreateStruct.WindowStyle = 'modal';

if isdir(directorio)
    close all;
    ClockFigure = figure('Name', 'Reloj Digital');
    set(ClockFigure, 'MenuBar', 'none');
    set(ClockFigure, 'ToolBar', 'none');
    blankClock = imread([directorio,d.name]);
    imshow(blankClock);
    hold on;
  
else
    %Mensaje de error por si el directorio tiene un nombre distinto o no existe
	errorMessage = sprintf('ERROR: No existe el directorio "%s" en el fólder actual:\n%s\\...',directorio,pwd);
	uiwait(msgbox(errorMessage,'Error de directorio','warn', CreateStruct));
	  
    return;
end
end
