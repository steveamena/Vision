function [minuto,hora] = angulo(imagen)
    [H,T,R] = hough(BW,'RhoResolution',10);
%     imshow(H,[],'XData',T,'YData',R,...
%             'InitialMagnification','fit');
%     xlabel('\theta'), ylabel('\rho');
%     axis on, axis normal, hold on;
    P  = houghpeaks(H,2,'NHoodSize',[3,3]);
%     x = T(P(:,2)); y = R(P(:,1));
%     plot(x,y,'s','color','red');
    minuto=180-P(1,1);
    hora = 180- P(1,2);
end