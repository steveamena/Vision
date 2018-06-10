function [imagenBW2] = Threshold(imagen)

imagenBW = im2bw(imagen, 70/255);
imagenBWnot = not(imagenBW);
imagenBW2 = imfill(imagenBWnot,4,'holes');
end