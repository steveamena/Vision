function [] = minPlot(numString, timer)
%MINPLOT Plotea 2 números en la parte de año de cualquier tablero
% 
% Uso: minPlot(numString, timer)
% 
% Argumento:
%       numString   - Número en forma de string
%       timer       - Tablero sobre el cual colocar el número (1-3)
% 
% V1.0 
% Diego Leiva

pos = 12;
for i=1:length(numString)
    if length(numString)==1
        numPlot(0,pos,timer);
        pos = pos + 1; 
    end
   numPlot(str2num(numString(i)),pos,timer);
   pos = pos + 1;   
end

end

