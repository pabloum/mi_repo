function THs=PUM_Fn_AnlInvKR6(Ptool_F,a67_F,S6_F,Ptool_6)

%Pablo Uribe Montoya
%ID: 000195235
%Tarea8
global S1 S2 S3 S4 S5 S6
global a01 a12 a23 a34 a45 a56
global alpha01 alpha12 alpha23 alpha34 alpha45 alpha56

%Coordenadas de la herramienta

%             Ptool_6=[0 0 0]';
%             Ptool_F=[1200 -100 300]';
%             a67_F=[0 0 -1]';
%             S6_F=[-1 0 0]';

%             Ptool_F=Ptool_F';
%             a67_F=a67_F';
%             S6_F=S6_F';
            
R6F=[a67_F cross(S6_F,a67_F) S6_F];

PO6_F=Ptool_F-R6F*Ptool_6;
PBS_F=PO6_F-S6*S6_F;

Px=PBS_F(1);
Py=PBS_F(2);
Pz=PBS_F(3);

%Solución para TH1
th1_a=atan(-Py/Px);
th1_b=th1_a+pi;

TH1=[th1_a th1_a  th1_a th1_a th1_b th1_b th1_b th1_b];

%Solución para TH3

A=-2*a23*a34;
B=2*a23*S4;
    
D=Px^2+Py^2+Pz^2+2*Pz*S1+S1^2+a12^2-a23^2-a34^2-S4^2-2*a12*Px*cos(th1_a)+2*a12*Py*sin(th1_a);
th3=PUM_Fn_slnTrigo(A,B,D);
th3_a=th3(1);
th3_b=th3(2);

D=Px^2+Py^2+Pz^2+2*Pz*S1+S1^2+a12^2-a23^2-a34^2-S4^2-2*a12*Px*cos(th1_b)+2*a12*Py*sin(th1_b);
th3=PUM_Fn_slnTrigo(A,B,D);
th3_c=th3(1);
th3_d=th3(2);

TH3=[th3_a th3_a th3_b th3_b th3_c th3_c th3_d th3_d];

%Solución para TH2

for n=1:2:8
    
    
    if ~any(imag(TH3(n)))        
           MatCoef=[-a34*sin(TH3(n))-S4*cos(TH3(n)),a34*cos(TH3(n))-S4*sin(TH3(n))+a23;...
                 a34*cos(TH3(n))-S4*sin(TH3(n))+a23,a34*sin(TH3(n))+S4*cos(TH3(n))];

           MatTermInd=[Px*cos(TH1(n))-Py*sin(TH1(n))-a12;-Pz-S1];
           MatIncg=MatCoef\MatTermInd;
           th2=atan2(MatIncg(1),MatIncg(2));

           TH2(n)=th2;
    else
           TH2(n)=1i;
    end
    
   TH2(n+1)=TH2(n);
      
end




for n=1:8
    
    
    if ~any(imag(TH3(n)))
            T32=PUM_FnTransformacion(a23,alpha23,S3,TH3(n));  %Transdormación del 3 en el 2
            T21=PUM_FnTransformacion(a12,alpha12,S2,TH2(n));  %Transdormación del 2 en el 1
            T1F=PUM_FnTransformacion(a01,alpha01,S1,TH1(n));  %Transdormación del 1 en el Fijo

            R23=T32(1:3,1:3)'; % R23 es la Trasnpuesta de R32
            R12=T21(1:3,1:3)'; % R12 es la Trasnpuesta de R12
            RF1=T1F(1:3,1:3)'; % RF1 es la Trasnpuesta de RF1

            R63=R23*R12*RF1*R6F;

            a=R63(1,1);     b=R63(1,2);   %d=R63(1,3);
            e=R63(2,1);     f=R63(2,2);   g=R63(2,3);
            h=R63(3,1);     m=R63(3,2);   %l=R63(3,3);

            %Solución para TH5
            if mod(n,2)~=0
                TH5(n)=acos(g);
            else
                TH5(n)=-TH5(n-1);
            end

            %Solución para TH6

            Coseno6=e/sin(TH5(n));
            Seno6=-f/sin(TH5(n));

            TH6(n)=atan2(Seno6,Coseno6);

            %Solución para TH4

            A=[-a -h;-b -m];
            B=[sin(TH6(n));cos(TH6(n))];
            X=A\B;
            TH4(n)=atan2(X(1),X(2));   
            
    else
            TH5(n)=1i;
            TH6(n)=1i;
            TH4(n)=1i;
    end
 

end

THs=[TH1;TH2;TH3;TH4;TH5;TH6];
% THETAS=[TH1' TH2' TH3' TH4' TH5' TH6']