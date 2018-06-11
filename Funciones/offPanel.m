function [] = offPanel(paneles)
%OFFPANEL Pone todos los LEDs del panel apagados.
% 
% Uso: offPanel(paneles)
% 
% Argumento:
%       paneles     - Indica el número de paneles a resetear en un vector
% 
% V1.1 
% Diego Leiva

for i=1:length(paneles) %Tablero
    for j=1:13 %Posiciones del tablero
        numPlot('OFF',j,paneles(i));
    end
end

end

