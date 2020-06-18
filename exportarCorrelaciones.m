function [] = exportarCorrelaciones(fileNameCorrelaciones, correlaciones)
    fid = fopen(fileNameCorrelaciones,'w');
    
    for i = 1:length(correlaciones)
       fprintf(fid, '%s;%s;%f\n', correlaciones(i).Tratamiento, correlaciones(i).Nombre, correlaciones(i).Valor); 
    end
    
    fclose(fid);
end