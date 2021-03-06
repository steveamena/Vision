%% Proyecto Final "Lectura de un reloj anal�gico"
% Grupo 9

% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navarro
%%

function [] = main()

clc
fprintf('PROYECTO FINAL: LECTURA DE UN RELOJ ANAL�GICO\n\n');

%%Selecci�n de la imagen
directorio = 'Clock_Images';
d = dir(sprintf('%s\\*.BMP',directorio));
v = 1;
mediciones = 1;

UIprep(1);
offPanel([1,2,3]);
time_backup = 0;
PCtime();

while v ~= 0

if isdir(directorio)
    fn = {d.name};
    [s,v] = listdlg('PromptString','Seleccione una imagen:',...
                    'SelectionMode','single',...
                    'ListString',fn);      
    if v == 0;
        msgbox('No seleccion� una imagen. El programa termina.','Aviso'); 
        
    else
        imagen = imread(sprintf('%s\\%s',directorio,d(s).name));
        subplottight(1,2,2);
        imshow(imagen);
        %%Analisis de la imagen   
        imagenBW = Threshold(imagen);
        imagenFil = Filtrador(imagenBW);
        imagenFil2 = limpiador2(imagenFil,[400 240],600,800);
        Ref = Referencia(imagenFil2);
        [horaF,minutoF] = angulo2(imagenFil2,Ref);
        hora = floor(horaF);
        minuto = floor(minutoF);
        hold on;
        %plot(Ref(1),Ref(2),'b*');
        %hold off;
        fprintf('Medici�n #%i \n',mediciones);
        mediciones = mediciones +1;
        if (minuto>9)
            fprintf('El reloj anal�gico marca las %i : %i\n\n',hora,minuto);
        else
            fprintf('El reloj anal�gico marca las %i : 0%i\n\n',hora,minuto);
        end
        
        time_backup = panelUpdater([hora,minuto], time_backup);
            
    end

else
	errorMessage = sprintf('ERROR: No existe el directorio "%s" en el f�lder actual:\n%s\\...',directorio,pwd);
	uiwait(msgbox(errorMessage,'Error de directorio','warn', CreateStruct));
	v = 0;
    return;
end

end %Prompt de im�genes
end


