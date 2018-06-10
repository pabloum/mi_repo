function th=PUM_Fn_slnTrigo(A,B,D)

% Se definen par�metros auxiliares, para la soluci�n de la ecuaci�n
% 
K=sqrt(A^2+B^2); % Par�metro, hipotenusa del triangulo ABK.
% gamma=atan(B/A); % Par�metro, �ngulo entre A y K.

gamma=atan2(B/K,A/K);

% Soluci�n de la ecuaci�n

th(1)=gamma+acos(-D/K);
th(2)=gamma-acos(-D/K);