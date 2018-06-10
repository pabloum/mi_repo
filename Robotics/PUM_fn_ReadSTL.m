function [VtxCoord,Faces_]=PUM_fn_ReadSTL(fid)

fid=fopen(fid,'r');  

LocVertex=1;
% LocNormal=1;

while feof(fid)==0
    
    tline=fgetl(fid);
    fword=sscanf(tline,'%s');
    
    
    if strncmpi(fword,'v',1)
        VtxCoord(LocVertex,:)=(sscanf(tline,'%*s %f %f %f'))';
        LocVertex=LocVertex+1;

    end
end

fclose(fid);

    NumVtx=size(VtxCoord,1);
    NumTrg=round(NumVtx/3);
    Faces=1:NumVtx;
    Faces_=reshape(Faces,3,NumTrg)';

end