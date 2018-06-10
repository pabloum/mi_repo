% PUM_Airfoil

%Pablo Uribe Montoya
%ID: 000195235
%Trabajo final

clc; clear all; format compact
close all
 
tic

global S1 S2 S3 S4 S5 S6
global a01 a12 a23 a34 a45 a56
global alpha01 alpha12 alpha23 alpha34 alpha45 alpha56

% S_i       % a_ij      %Twist Angles

S1=-675;    a01=0;      alpha01=deg2rad(180);
S2=0;       a12=260;    alpha12=deg2rad(90);
S3=0;       a23=680;    alpha23=deg2rad(0);
S4=-670;    a34=35;     alpha34=deg2rad(-90);
S5=0;       a45=0;      alpha45=deg2rad(90);
S6=-115;    a56=0;      alpha56=deg2rad(-90);

Ptool_6=[0 0 -40]';

% return
c=530;
NumPtos=100;
NACA=[2,30,16];

[Xe,Ye]=PUM_FnPerfil(c,NumPtos,NACA);

phi=atan(gradient(Ye,Xe));

f=linspace(600,600,NumPtos);
% f=600;
b=500; %envergadura del ala
aux=0;

for n=1:NumPtos:round(b/5)*10
    Pf_aux=[f' Xe' Ye'+700];
    Pf_tool_matrix(n:n+NumPtos-1,:)=Pf_aux;
    f=f+50;
end

NumCoord=size(Pf_tool_matrix,1);

for k=1:NumPtos:NumCoord
    beta(k:k+NumPtos-1)= phi;    %(i)
end
beta=beta';

for n=1:NumCoord        
        af_67(n,:)=[0 cos(beta(n)) sin(beta(n))];
        Sf_6(n,:)=[0 -sin(beta(n)) cos(beta(n))];   %%%Del ángulo de la recta tangente
end

save('DatosPrueba','Pf_tool_matrix','af_67','Sf_6','Ptool_6')

for n=1:NumCoord
    % Solución en radianes
    Sln(n,:,:)=PUM_Fn_AnlInvKR6(Pf_tool_matrix(n,:)',af_67(n,:)',Sf_6(n,:)',Ptool_6);
end

% Solución en grados, para que sea analizada posteriormente por el robot
KR6_Sln=Sln*180/pi;
% A cada ángulo TH3 le aumento 90°, corrección necesaria para ser leído por
% el robot KR6
KR6_Sln(:,3,:)=KR6_Sln(:,3,:)+270;
% KR6_Sln(1:10,:,3)

%%% Verificación

slnViable=PUM_FnVerification(KR6_Sln)

% slnViable=[3,4]

% Ya con el vector slnVIable, el cual indica cual de las 8 soluciones es
% viable para el robot se procede a hacer la animación y a escribir en
% pantalla las coordenas en el lenguaje del robot. Si ninguna de las 8
% soluciones encontradas en el análisis invero es viable, entonces se
% mostrará en pantalla un mensaje el cual indica que no se obtuvieron
% ángulos alcanzables por el robot.

diary('PUM_CoordenadasKUKA.txt')

if slnViable==0
   disp('No hay soluciones viables para las coordenadas dadas')
else 
    for k=1:length(slnViable)            
            x=slnViable(k);
            
            % Antes de animar y hacer todo el procedimiento debe
            % verificarse que la solución no sea imaginaria, si no lo es,
            % entonces que proceda con la enimación y escritura de las
            % coordenadas en el lenguaje del robot.
            
        if ~any(imag(KR6_Sln(:,:,x)))
            fprintf('\nA continuación se muestran las soluciones viables para el KUKA KR6')
            fprintf('\n\n Solución %d \n',x)
            for n=1:NumCoord  
                fprintf('\n')
                th1=(KR6_Sln(n,1,x));
                th2=(KR6_Sln(n,2,x));
                th3=(KR6_Sln(n,3,x));
                th4=(KR6_Sln(n,4,x));
                th5=(KR6_Sln(n,5,x));
                th6=(KR6_Sln(n,6,x));
                fprintf('PTP{E6AXIS: A1 %f, A2 %f, A3 %f, A4 %f, A5 %f, A6 %f} C_PTP ',th1,th2,th3,th4,th5,th6)
            end
            fprintf('\n\n')
            
            diary off
            
            % A continuación las animaciones: Si desea una animación rápida
            % y sin mucho detalle en las barras -barras simuladas como
            % meras líneas rectas- se tiene la función PUM_FnAnimation. Por
            % otro lado, para una animación más completa -y compleja- la
            % cual llevará más tiempo al computador procesar, entonces se
            % tiene la funciónPUM_FnKukaAnimation
            
%             PUM_FnKukaAnimation(Sln(:,:,x))
            PUM_FnAnimation(Sln(:,:,x))
            pause
        else
            fprintf('\n\nLa solución %d no es real \n\n',x)
        end
    end
end
 
toc