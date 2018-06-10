function [Xe,Ye]=PUM_FnPerfil(c,NumPos,NACA)

% NACA=[2,30,16];

p=NACA(2)/2/100;   %Position of Maximum Camber
t=NACA(3)/100;   %Maximum Thickness

k1=15.957; %Parámetro dependiente de NACA(2)
m=0.2025;   %Parámetro dependiente de NACA(2)

% NumPos=1000; %Número de iteraciones deseadas
% c=18;   %Cuerda

X_c=linspace(0,1,NumPos);

% Cálculo de la Línea de Cámber & Thickness Distribution

for n=1:NumPos
        
        % Cálculo de la Línea de Cámber
        if X_c(n)<m
           Yc(n)=k1*((X_c(n)^3)-(3*m*X_c(n)^2)+(X_c(n)*m^2*(3-m)))/6;
        else
           Yc(n)=k1/6*m^3*(1-X_c(n));
        end 
        
        %Thickness Distribution
        Yt(n)=t/0.2*(0.2969*X_c(n)^0.5-0.126*X_c(n)-0.3516*X_c(n)^2+0.2843*X_c(n)^3-0.1015*X_c(n)^4);
        
        %Cálculo THETA
        if X_c(n)<m
           dYc(n)=k1*((3*X_c(n)^2)-(6*m*X_c(n))+(m^2*(3-m)))/6;
        else
           dYc(n)=-k1/6*m^3;
        end 
        
        theta(n)=atan(dYc(n));
        
        %Cálculo de las Coordenadas
        
        Xu(n)=X_c(n)-Yt(n)*sin(theta(n));
        Yu(n)=Yc(n)+Yt(n)*cos(theta(n));
        
        XL(n)=X_c(n)+Yt(n)*sin(theta(n));
        YL(n)=Yc(n)-Yt(n)*cos(theta(n));
       
end

%Gráfico del Perfil

Xe=Xu*c; %Coordenadas Superficie Superior
Ye=Yu*c; %Coordenadas Superficie Superior

Xi=XL*c; %Coordenadas Superficie Inferior
Yi=YL*c; %Coordenadas Superficie Inferior

X=(X_c*c)'; %Coordenadas Línea de Cámber
Ycam=(Yc*c)'; %Coordenadas Línea de Cámber

return


figure (1123)
clf

subplot(2,1,1)
    plot(Xu,Yu,'-gp') %Superficie Superior
    hold on
    plot(XL,YL,'-cp') %Superficie Inferior
    plot(X_c,Yc,'-m.') %Línea de Cámber
    grid on
    axis equal
    axis([-0.01 1.01*max(X_c) 1.1*min(YL) 1.2*max(Yu)])
xlabel('X/C [-]')
ylabel('Y [-]')
legend('Extradós. Superficie Superior','Intradós. Superficie Inferior','Línea de Camber')
title('Perfil Adimensional')

subplot(2,1,2)
    plot(Xe,Ye,'-gO') %Superficie Superior
    hold on
    plot(Xi,Yi,'-cO') %Superficie Inferior
    plot(X,Ycam,'-m.') %Línea de Cámber
    grid on
    axis equal
    axis([-0.01*max(Xe) 1.01*max(Xe) 1.1*min(Yi) 1.2*max(Ye)])
xlabel('X [cm]')
ylabel('Y [cm]')
legend('Extradós. Superficie Superior','Intradós. Superficie Inferior','Línea de Camber')
title('Perfil con Dimensiones')