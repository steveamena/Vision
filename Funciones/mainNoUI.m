%% Proyecto Final "Lectura de un reloj analógico"
% Grupo 9


% MAIN SIN PARTE VISUAL


% Diego Aguilar Valverde
% Diego Leiva Solera
% Steve Mena Navarro
%%

function [Ref] = main()

clc
fprintf('PROYECTO FINAL: LECTURA DE UN RELOJ ANALÓGICO\n');

directorio = 'Clock_Images';
d = dir(sprintf('%s\\*.BMP',directorio));
v = 1;


while v ~= 0

if isdir(directorio)
    fn = {d.name};
    [s,v] = listdlg('PromptString','Seleccione una imagen:',...
                    'SelectionMode','single',...
                    'ListString',fn);      
    if v == 0;
        msgbox('No seleccionó una imagen. El programa termina.','Aviso'); 
        
    else
        imagen = imread(sprintf('%s\\%s',directorio,d(s).name));
        
        
        
        
        imagenBW = Threshold(imagen);
        imagenFil = Filtrador(imagenBW);
        Ref = Referencia(imagenFil);
        imagenLim = limpiador(imagenFil,Ref,600,800);
        [horaF,minutoF] = angulo2(imagenLim,Ref);
        hora = floor(horaF);
        minuto = floor(minutoF);
        hold on;
        %%plot(Ref(1),Ref(2),'b*');
%         hold off;
        fprintf('Son las %i : %i',hora,minuto);
        
            
    end

else
	errorMessage = sprintf('ERROR: No existe el directorio "%s" en el fólder actual:\n%s\\...',directorio,pwd);
	uiwait(msgbox(errorMessage,'Error de directorio','warn', CreateStruct));
	v = 0;
    return;
end

end %Prompt de imágenes
end


