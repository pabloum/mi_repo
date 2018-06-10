function slnViable=PUM_FnVerification(KR6_Sln)

NumCoord=size(KR6_Sln,1);

% Se comienza la verificación. Primero se verifica que cada uno de los
% ángulos esté en el rango específico, y que el robot sea capaz de llegar a
% los respectivos valores.


for k=1:8
        % Verificación de A1
        Index1=KR6_Sln(:,1,k)>-185 & KR6_Sln(:,1,k)<185;
        
        % Verificación de A2
        Index2=KR6_Sln(:,2,k)<35 & KR6_Sln(:,2,k)>-155;

        % Verificación de A3
        Index3=KR6_Sln(:,3,k)<154 & KR6_Sln(:,3,k)>-130;
            
        % Verificación de A4
        Index4=KR6_Sln(:,4,k)>-350 & KR6_Sln(:,4,k)<350;

        % Verificación de A5
        Index5= KR6_Sln(:,5,k)>-130 & KR6_Sln(:,5,k)<130;
        
        % Verificación de A6
        Index6= KR6_Sln(:,6,k)>-350 & KR6_Sln(:,6,k)<350;
        
        %Index=[Index1 & Index2 & Index3 & Index4 & Index5 & Index6]
        Index=[Index1 Index2 Index3 Index4 Index5 Index6];
        
        c=all(Index);
        x(k)=all(c);
        
%     pause

end
x;

k=1;
slnViable=0;
for n=1:8
    
    if x(n)==1
        slnViable(k)=n;
        k=k+1;
    end
    
end













%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

return
for k=1:8  
    for n=1:NumCoord

        % Verificación de A1
        Index1=KR6_Sln(n,1,k)>-185 & KR6_Sln(n,1,k)<185;
        
        % Verificación de A2
        Index2=KR6_Sln(n,2,k)<35 & KR6_Sln(n,2,k)>-155;

        % Verificación de A3
        Index3=KR6_Sln(n,3,k)<154 & KR6_Sln(n,3,k)>-130;
            
        % Verificación de A4
        Index4=KR6_Sln(n,4,k)>-350 & KR6_Sln(n,4,k)<350;

        % Verificación de A5
        Index5= KR6_Sln(n,5,k)>-130 & KR6_Sln(n,5,k)<130;
        
        % Verificación de A6
        Index6= KR6_Sln(n,6,k)>-350 & KR6_Sln(n,6,k)<350;
        
        Index(n,:,k)=[Index1 Index2 Index3 Index4 Index5 Index6];
    end
%     Index6
end

% Desps de verificar en cada solución y en cada coordenada los ángulos, se
% creará un vector Rangos, el cual almacenará 8 componentes -una por cada
% solución- en la cual se indicará con un 1, si la solución correspondiente
% tiene TODOS los ángulos dentro del rango, por el contrario, si se
% almacena un 0 (cero) dentro del vector, estará indicando que en la solución
% particular existe al menos un ángulo, en al menos una coordenada, que no
% cumple con los intervalos establecidos.

% KR6_Sln
% Index
Rangos(1,:)=all(all(Index,1))

% Una vez se tenga el vector Rangos, el cual indique si cada una de las
% soluciones cumple o no cumple, se crea la siguiente sección de código que
% lea el vector y encuentre en que posición del vector hay un 1, es decir
% cual de las soluciones presenta todas las opciones válidas (dentro de los
% intervalos)
k=1;
slnViable=0;
for n=1:8
    
    if Rangos(n)==1
        slnViable(k)=n;
        k=k+1;
    end
    
end


% return
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
