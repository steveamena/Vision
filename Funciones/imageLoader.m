directorio = 'Clock_Extra_Images';
d = dir(sprintf('%s\\Imagen*.BMP',directorio));
% imagen_init = '00017';
i = 1;
for i = 1:length(d)
%     d = dir(sprintf('%s\\Imagen%s.BMP',directorio,imagen_init));
    imagen = imread(sprintf('%s\\%s',directorio,d(i).name));
    fprintf('\nImagen analizada: %s\n',d(i).name);
    mainSpeedTest(imagen);
end

