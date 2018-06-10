function [] = numPlot(num, pos, timer)
%NUMPLOT Coloca un n�mero en el reloj segun la posici�n
% 
% Uso: numPlot(num, pos, timer)
% 
% Argumento:
%       num     - D�gito requerido a introducir (0-9)
%       pos     - Posici�n en el tablero (1-13)
%       timer   - Tablero sobre el cual colocar el n�mero (1-3)
% 
% V1.0 
% Diego Leiva

%Primeros 13 valores, son coordenadas X, �ltimos 3 son las coordenadas Y
coords = [25,58,91,166,199,273,306,339,372,489,522,602,635,46,186,327];

%Tama�o de d�gitos
alto = 42;
ancho = 30;

directorio = 'Clock_UI\';

switch timer
    case 1
        d = dir(sprintf('%sy%d.png',directorio,num));
    case 2
        d = dir(sprintf('%sg%d.png',directorio,num));
    case 3
        d = dir(sprintf('%sr%d.png',directorio,num));
    otherwise
        CreateStruct.Interpreter = 'none';
        CreateStruct.WindowStyle = 'modal';
        
        errorMessage = sprintf('ERROR: No existe el tablero indicado');
        uiwait(msgbox(errorMessage,'Error de tablero','warn', CreateStruct));
end

numImage = imread([directorio,d.name]);
imshow(flipud(numImage), 'XData', [coords(pos) coords(pos)+ancho],...
    'YData', [coords(timer+13) coords(timer+13)+alto]);
end

