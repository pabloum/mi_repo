function PUM_FnKukaAnimation(TH)

global S1 S2 S3 S4 S5 S6
global a01 a12 a23 a34 a45 a56
global alpha01 alpha12 alpha23 alpha34 alpha45 alpha56

%%%%%%%%%%%%%%%%%%%%

% Se leen los diferentes STL
[VtxCoord0,Faces0]=PUM_fn_ReadSTL('Base.stl');
[VtxCoord1,Faces1]=PUM_fn_ReadSTL('BarraUn.stl');
[VtxCoord2,Faces2]=PUM_fn_ReadSTL('BarraDeux.stl');
[VtxCoord3,Faces3]=PUM_fn_ReadSTL('BarraTrois.stl');
[VtxCoord4,Faces4]=PUM_fn_ReadSTL('BarraQuatre.stl');
[VtxCoord5,Faces5]=PUM_fn_ReadSTL('BarraCinq.stl');
[VtxCoord6,Faces6]=PUM_fn_ReadSTL('BarraSix.stl');

% Ángulos del CAD.
th1=0;
th2=deg2rad(270);
th3=deg2rad(180);
th4=deg2rad(0);
th5=deg2rad(0);
th6=deg2rad(0);

% Transformaciones entre las transformaciones Tij
T1F=PUM_FnTransformacion(a01,alpha01,S1,th1);  %Transformación del 1 en el Fijo
T21=PUM_FnTransformacion(a12,alpha12,S2,th2);  %Transformación del 2 en el 1
T32=PUM_FnTransformacion(a23,alpha23,S3,th3);  %Transformación del 3 en el 2
T43=PUM_FnTransformacion(a34,alpha34,S4,th4);  %Transformación del 3 en el 2
T54=PUM_FnTransformacion(a45,alpha45,S5,th5);  %Transformación del 3 en el 2
T65=PUM_FnTransformacion(a56,alpha56,S6,th6);  %Transformación del 6 en el 5

% Transformaciones de los locales en el fijo
T2F=T1F*T21;
T3F=T2F*T32;
T4F=T3F*T43;
T5F=T4F*T54;
T6F=T5F*T65;

% Transformaciones del fijo en el los locales
TF1=inv(T1F);
TF2=inv(T2F);
TF3=inv(T3F);
TF4=inv(T4F);
TF5=inv(T5F);
TF6=inv(T6F);

% Coordenas barras según su particular sistema local.
B1=PUM_FnTrPuntos(TF1,VtxCoord1);
B2=PUM_FnTrPuntos(TF2,VtxCoord2);
B3=PUM_FnTrPuntos(TF3,VtxCoord3);
B4=PUM_FnTrPuntos(TF4,VtxCoord4);
B5=PUM_FnTrPuntos(TF5,VtxCoord5);
B6=PUM_FnTrPuntos(TF6,VtxCoord6);

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
    
    Q1(:,:,n)=PUM_FnTrPuntos(T1F,B1);
    Q2(:,:,n)=PUM_FnTrPuntos(T2F,B2);    
    Q3(:,:,n)=PUM_FnTrPuntos(T3F,B3);
    Q4(:,:,n)=PUM_FnTrPuntos(T4F,B4);
    Q5(:,:,n)=PUM_FnTrPuntos(T5F,B5);
    Q6(:,:,n)=PUM_FnTrPuntos(T6F,B6);
    
    
end

figure(1)
clf
whitebg([1 1 0.8])
%plotting
h0=patch('Faces',Faces0,'Vertices',VtxCoord0);
hold on
h1=patch('Faces',Faces1,'Vertices',B1);
h2=patch('Faces',Faces2,'Vertices',B2);
h3=patch('Faces',Faces3,'Vertices',B3);
h4=patch('Faces',Faces4,'Vertices',B4);
h5=patch('Faces',Faces5,'Vertices',B5);
h6=patch('Faces',Faces6,'Vertices',B6);

xlabel('Eje X [mm]')
ylabel('Eje Y [mm]')
zlabel('Eje Z [mm]')

title('Simulación KUKA KR6')

trans=0.7;
set(h0,'FaceAlpha',trans,'FaceColor',[0 0 0.1],'EdgeColor','none')
set(h1,'FaceAlpha',trans,'FaceColor',[1 0.54 0],'EdgeColor','none')
set(h2,'FaceAlpha',trans,'FaceColor',[1 0.54 0],'EdgeColor','none')
set(h3,'FaceAlpha',trans,'FaceColor',[1 0.54 0],'EdgeColor','none')
set(h4,'FaceAlpha',trans,'FaceColor',[1 0.54 0],'EdgeColor','none')
set(h5,'FaceAlpha',trans,'FaceColor',[1 0.54 0],'EdgeColor','none')
set(h6,'FaceAlpha',trans,'FaceColor',[0 0 0.1],'EdgeColor','none')
light
axis tight
axis equal
axis([-400 1200 -400 600 -200 1500])
view(42,34)
grid on

    for n=1:size(TH,1)
        set(h1,'Vertices',Q1(:,:,n))
        set(h2,'Vertices',Q2(:,:,n))
        set(h3,'Vertices',Q3(:,:,n))
        set(h4,'Vertices',Q4(:,:,n))
        set(h5,'Vertices',Q5(:,:,n))
        set(h6,'Vertices',Q6(:,:,n))
        pause(0.3)
        h_t=plot3(Q6(1,1,n),Q6(1,2,n),Q6(1,3,n),'bp');
    end