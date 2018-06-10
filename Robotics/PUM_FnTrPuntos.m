function Qi=PUM_FnTrPuntos(Tij,Bi)

B4=ones(size(Bi,1),1);
Bi=[Bi B4];

for n=1:size(Bi,1) 
    
    Ph=Tij*Bi(n,:)';
    Q(n,:)=Ph';
    
end

    Qi=Q(:,1:3);

end