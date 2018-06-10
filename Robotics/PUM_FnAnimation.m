function PUM_FnAnimation(TH)

global S1 S2 S3 S4 S5 S6
global a01 a12 a23 a34 a45 a56
global alpha01 alpha12 alpha23 alpha34 alpha45 alpha56

%Barras

B0=[-200 -150 0;...
     200 -150 0;...
     200  150 0;...
    -200  150 0;...
    -200 -150 0];

B1=[0 0 -S1; 0   0 0; a12 0 0];
B2=[0 0   0; a23 0 0];
B3=[0 0   0; a34 0 0; a34 S4  0];
B4=[0 0   0; 0   0 0];
B5=[0 0   0; 0  S6 0];
B6=[0 0 0;0 0 -40];

% Gráfica

figure(2)%(2147483646)
clf
whitebg([1 1 0.8])
h0=fill3(B0(:,1),B0(:,2),B0(:,3),'g','FaceAlpha',0.4);  %'Color',[1 0.54 0]
hold on
h1=plot3(B1(:,1),B1(:,2),B1(:,3),'Color',[1 0.54 0],'LineWidth',3);
h2=plot3(B2(:,1),B2(:,2),B2(:,3),'Color',[0.1 0.2 0.9],'LineWidth',3);
h3=plot3(B3(:,1),B3(:,2),B3(:,3),'Color',[0.3 0.9 0.9],'LineWidth',3);
h4=plot3(B4(:,1),B4(:,2),B4(:,3),'Color',[1 0.54 0],'LineWidth',3);
h5=plot3(B5(:,1),B5(:,2),B5(:,3),'Color',[0.12 0.7 0.3],'LineWidth',3);
h6=plot3(B6(:,1),B6(:,2),B6(:,3),'Color',[0.5 0.5 0.5],'LineWidth',3);

axis equal
axis([-200 1500 -300 800 0 1450])
view(111,10)
% view(90,0)
grid on
xlabel('Eje X [mm]')
ylabel('Eje Y [mm]')
zlabel('Eje Z [mm]')
title('Robot KUKA-KR6')

% Animación

for n=1:size(TH,1)
    
    th1=TH(n,1); th2=TH(n,2); th3=TH(n,3);
    th4=TH(n,4); th5=TH(n,5); th6=TH(n,6);
    
    T65=PUM_FnTransformacion(a56,alpha56,S6,th6);  %Transformación del 6 en el 5
    T54=PUM_FnTransformacion(a45,alpha45,S5,th5);  %Transformación del 5 en el 4
    T43=PUM_FnTransformacion(a34,alpha34,S4,th4);  %Transformación del 4 en el 3    
    T32=PUM_FnTransformacion(a23,alpha23,S3,th3);  %Transformación del 3 en el 2
    T21=PUM_FnTransformacion(a12,alpha12,S2,th2);  %Transformación del 2 en el 1
    T1F=PUM_FnTransformacion(a01,alpha01,S1,th1);  %Transformación del 1 en el Fijo
    
    T6F=T1F*T21*T32*T43*T54*T65;   % Transformación del 6 en el Fijo
    T5F=T1F*T21*T32*T43*T54; % Transformación en del Sistema 5 en el Fijo
    T4F=T1F*T21*T32*T43; % Transformación del Sistema 4 en el Fijo   
    T3F=T1F*T21*T32; % Transformación del Sistema 3 en el Fijo
    T2F=T1F*T21; % Transformación del Sistema 2 en el Fijo
    
    Q1=PUM_FnTrPuntos(T1F,B1);
    Q2=PUM_FnTrPuntos(T2F,B2);    
    Q3=PUM_FnTrPuntos(T3F,B3);    
    Q4=PUM_FnTrPuntos(T4F,B4);
    Q5=PUM_FnTrPuntos(T5F,B5);
    Q6=PUM_FnTrPuntos(T6F,B6);
    
    set(h1,'XData',Q1(:,1),...
           'YData',Q1(:,2),...
           'ZData',Q1(:,3))
        
    set(h2,'XData',Q2(:,1),...
           'YData',Q2(:,2),...
           'ZData',Q2(:,3))
           
    set(h3,'XData',Q3(:,1),...
           'YData',Q3(:,2),...
           'ZData',Q3(:,3))
           
    set(h4,'XData',Q4(:,1),...
           'YData',Q4(:,2),...
           'ZData',Q4(:,3))
           
    set(h5,'XData',Q5(:,1),...
           'YData',Q5(:,2),...
           'ZData',Q5(:,3))
         
    set(h6,'XData',Q6(:,1),...
           'YData',Q6(:,2),...
           'ZData',Q6(:,3))

    path=plot3(Q6(2,1),Q6(2,2),Q6(2,3),'.','Color',[0 0 0.2],'LineWidth',3);
    legend(path,'Trayectoria','Location','South')
    pause(0.01)

%     Q5(2,1)
%     Q5(2,2)
%     Q5(2,3)
end
