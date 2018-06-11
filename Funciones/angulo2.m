function [hora, minutos] = angulo2(imagen,Ref)
    %%Genera la matriz de angulos, tomando la vertical como el cero
    t= (0:1:359);
    Theta = t*pi/180;
    %Inicia la matriz de posiciones
    AnguloPos=[0 0];
    %Valor del radio
    R_min = 102;
    R_hor = 70;
    %inicia valor anterior
    contador = 1;
    Valor_1 = 0;
    for t=(0:359);
        %%Coordenada en y
        i = round(Ref(2)-R_min*cos(Theta(t+1)));
        %%Coordenada en x
        j = round(Ref(1)+R_min*sin(Theta(t+1)));
        %%Obtener el valor de la matriz
        Valor = imagen(i,j);
        %%Obtener los grados de la minutera
        if(Valor~=Valor_1)
            AnguloPos(contador)=t;
            contador = contador +1;
        end
        Valor_1 = Valor;
    end
    minutera = (AnguloPos(1)+AnguloPos(2))/2;
    %%-------------------------------------%%
    %%Obtiene el angulo de la horaria
    AnguloPos = [];
    contador = 1;
    Valor_1 = 0;
    for t=(0:359);
        %%Coordenada en y
        i = round(Ref(2)-R_hor*cos(Theta(t+1)));
        %%Coordenada en x
        j = round(Ref(1)+R_hor*sin(Theta(t+1)));
        %%Obtener el valor de la matriz
        Valor = imagen(i,j);
        %%Obtener los grados de la minutera
        if(Valor~=Valor_1)
            AnguloPos(contador)=t;
            contador = contador +1;
        end      
        Valor_1=Valor;
    end
    horaria = (AnguloPos(1)+AnguloPos(2))/2;
    if(contador ~= 3)
        if(minutera-5<horaria) && (horaria<minutera+5)
            horaria = horaria2;
        end      
    end
    minutos = minutera*60/360;
    hora = horaria*12/360;
end