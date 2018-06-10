function [imagenFil] = Filtrador(imagen)

seSQ = strel('diamond',1);

imagenFil = imerode(imagen , seSQ);
imagenFil = imerode(imagenFil , seSQ);
imagenFil = imerode(imagenFil , seSQ);

end