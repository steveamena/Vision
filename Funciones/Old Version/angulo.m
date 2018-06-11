function [hora,minuto] = angulo(imagen,Ref)
      BW = edge(imagen,'canny');      
      [H,T,R] = hough(BW,'RhoResolution',10);
%     imshow(H,[],'XData',T,'YData',R,...
%     'InitialMagnification','fit');
%     xlabel('\theta'), ylabel('\rho');
%     axis on, axis normal, hold on;
      P  = houghpeaks(H,2,'NHoodSize',[3,3]);
%     x = T(P(:,2)); y = R(P(:,1));
%     plot(x,y,'s','color','red');
      minuto=180-P(1,1);
    hora = 180- P(1,2);
    %%Diferencia cual de los dos casos--------------
        %%Segmenta la aguja minutera y la horaria
        seSQ = strel('diamond',1);
        imagenFil = imerode(imagen , seSQ);
        imagenFil = imerode(imagenFil, seSQ);
        L = bwlabel(imagenFil);
        %%Calcula region props de cada una
        stats = regionprops('table',L,'Area','Centroid');
        S = table2array(stats);
    %%Inicio de la aguja minutera
    %Ordena la matriz, la ultima fila es la minutera
    S = sortrows(S);
    %%If que indica si la minutera esta debajo de la referencia
    if(S(2,3)<Ref(2))
        minuto = minuto+180;
    end
    
    %Calculo de la aguja horaria
    if(S(1,3))<Ref(2)
        hora = hora + 180;
    end
end