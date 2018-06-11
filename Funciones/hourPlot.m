function [] = hourPlot(numString, timer)
%dayPlot Plotea 2 números en la parte de año de cualquier tablero
% 
% Uso: hourPlot(numString, timer, flag)
% 
% Argumento:
%       numString   - Número en forma de string
%       timer       - Tablero sobre el cual colocar el número (1-3)
% 
% V1.1 
% Diego Leiva

pos = 10;

numString = str2num(numString);
if numString > 12
    numString = numString - 12;
    numString = num2str(numString);
else
    numString = num2str(numString);
end


for i=1:length(numString)
    if length(numString)==1
        numPlot(0,pos,timer);
        pos = pos + 1; 
    end
   numPlot(str2num(numString(i)),pos,timer);
   pos = pos + 1;   
end

end

