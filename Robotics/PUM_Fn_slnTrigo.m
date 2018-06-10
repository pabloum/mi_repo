function th=PUM_Fn_slnTrigo(A,B,D)

% Se definen parámetros auxiliares, para la solución de la ecuación
% 
K=sqrt(A^2+B^2); % Parámetro, hipotenusa del triangulo ABK.
% gamma=atan(B/A); % Parámetro, ángulo entre A y K.

gamma=atan2(B/K,A/K);

% Solución de la ecuación

th(1)=gamma+acos(-D/K);
th(2)=gamma-acos(-D/K);