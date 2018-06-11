function [] = hourPlot(numString, timer, flag)
%dayPlot Plotea 2 números en la parte de año de cualquier tablero
% 
% Uso: hourPlot(numString, timer, flag)
% 
% Argumento:
%       numString   - Número en forma de string
%       timer       - Tablero sobre el cual colocar el número (1-3)
%       flag        - Indica si es AM (0) o PM (1)
% 
% V1.0 
% Diego Leiva

pos = 10;

if flag == 1
    numString = str2num(numString);
    if numString > 12
        numString = numString - 12;
        numString = num2str(numString);
    end
else
    
    
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

