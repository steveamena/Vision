function [] = yearPlot(numString, timer)
%yearPlot Plotea 4 n�meros en la parte de a�o de cualquier tablero
% 
% Uso: yearPlot(numString, timer)
% 
% Argumento:
%       numString   - N�mero en forma de string
%       timer       - Tablero sobre el cual colocar el n�mero (1-3)
% 
% V1.0 
% Diego Leiva

pos = 6;
for i=1:length(numString)
   numPlot(str2num(numString(i)),pos,timer);
   pos = pos + 1;   
end

end

