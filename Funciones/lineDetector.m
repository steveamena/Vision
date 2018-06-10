
% Funcion que calcula la recta del marco apartir de Hough
% (C) 2018

% Salidas:
%   xy      = Par de puntos que conforman la recta

%           xy =   [ x1   y1
%                    x2   y2 ...]

% Entradas:
%   I       = Imagen saturada

function [xy] = lineDetector(I)

    BW = edge(I,'Prewitt');
    
    [H,T,R] = hough(BW,'RhoResolution',1,'Theta',-90:0.5:80);
        
    %%Para visualizar el espacio de parametro de Hough
    
    %imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
     % 'InitialMagnification','fit');
    %title('Transformada de Hough de la imagen');
    %xlabel('\theta'), ylabel('\rho');
    %axis on, axis normal, hold on;
    %colormap(hot);
    %figure()
    
    maximos = 8; %%Cantidad de picos a buscar   
    
    P  = houghpeaks(H,maximos,'threshold',ceil(0.09*max(H(:))));
       
    lines = houghlines(BW,T,R,P,'FillGap',200,'MinLength',50);    
   
    xy = [];
    
    for k = 1:length(lines)
        xy = [xy; lines(k).point1; lines(k).point2];
    end

    
    
    
    