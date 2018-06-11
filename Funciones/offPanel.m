function [] = offPanel()
%OFFPANEL Pone todos los LEDs del panel apagados.
% 
% V1.0 
% Diego Leiva

for i=1:3 %Tablero
    for j=1:13 %Posiciones del tablero
        numPlot('OFF',j,i);
    end
end

end

