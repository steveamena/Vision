function [ImOut] = limpiador2(Imagen,Puntos,filas,columnas)
    %%Funcion que rellena con negro los puntos no necesarios
    
    %% @2018 Steve Mena Navarro
    % Extrae el tamano de la imagen, m es fila, n es columna   
    %%Crea una imagen de m filas por n columnas donde m y n es el tamaño
    % de la imagen original
    ImOut = zeros(filas,columnas);
    %% Extra los puntos del centroide
    x = Puntos(1,1);
    y = Puntos(1,2);
    %% Calcula los offset de los puntos
        %C es el offset que quita el centro de la imagen
        %El cx es igual al cy porque el centro es un punto
    cx = 0;
    cy = 0;
        %D es el offset que quita el borde externo de la imagen
    dx = 50;
    dy = 200;
    for i=1:filas
        py = abs(i-y);
        for j=1:columnas
            px = abs(j-x);
            if((px < dx && py < dy)&&(px >cx || py > cy));
                ImOut(i,j) = Imagen(i,j);
            end
        end
    end
end