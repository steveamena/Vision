%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9


% MAIN SIN PARTE VISUAL NI SELECCIONADOR DE IMÁGENES


% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navarro
%%

function [Ref] = mainSpeedTest(imagen)



%HAY QUE CARGAR UNA IMAGEN AL WORKSPACE ANTES DE HACER LA PRUEBA CON TIEMPO

imagenBW = Threshold(imagen);
imagenFil = Filtrador(imagenBW);
imagenFil2 = limpiador2(imagenFil,[400 240],600,800);
Ref = Referencia(imagenFil2);
imagenLim = limpiador(imagenFil,Ref,600,800);
[horaF,minutoF] = angulo2(imagenLim,Ref);
imshow(imagen);
fprintf('Son las %s:%s.\n',num2str(horaF),num2str(minutoF));

hora = floor(horaF);
minuto = floor(minutoF);

hold on;
plot(Ref(1),Ref(2),'b*');
hold off;

hora = num2str(hora);
minuto = num2str(minuto);
if length(hora)==1
    hora = ['0',hora];
end

if length(minuto)==1
   minuto = ['0',minuto];
end
    
fprintf('Son las %s:%s.\n',hora,minuto);
% fprintf('Son las %i:%i.\n',hora,minuto);



end


