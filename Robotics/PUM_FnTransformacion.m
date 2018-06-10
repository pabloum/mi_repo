function T=PUM_FnTransformacion(a_ij,alpha_ij,Sj,theta_j)

%PUM_Robot_KUKA
%Pablo Uribe Montoya
%ID: 000195235

T=PUM_Fn_Tras(a_ij,0,0)*PUM_Fn_RotaX(alpha_ij)*PUM_Fn_Tras(0,0,Sj)...
     *PUM_Fn_RotaZ(theta_j);