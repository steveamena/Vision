function [] = visualMain(hora)
%VISUALMAIN Main que une todas las funciones del UI
% 
% Uso: visualMain(hora)
% 
% Argumento:
%       hora   - Número en forma de vector
% 
% V1.0 
% Diego Leiva

%Se corre el inicio del programa
PCtime();


%Se seleccionan imagenes infinitamente hasta que el usuario decida parar
directorio = 'Clock_Images';
d = dir(sprintf('%s\\*.png',directorio));
v = 1;

for v ~= 0

if isdir(directorio)
    fn = {d.name};
    [s,v] = listdlg('PromptString','Seleccione una imagen:',...
                    'SelectionMode','single',...
                    'ListString',fn);      
    if v == 0;
        msgbox('No seleccionó una imagen. El programa termina.','Aviso'); 
        
    else
        clockImage = imread(sprintf('%s\\%s',directorio,d(s).name));
    
    end

else
	errorMessage = sprintf('ERROR: No existe el directorio "%s" en el fólder actual:\n%s\\...',directorio,pwd);
	uiwait(msgbox(errorMessage,'Error de directorio','warn', CreateStruct));
	  
    return;
end

end

end

