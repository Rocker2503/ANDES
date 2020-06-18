function [] = exportarDatosCampo(fileDatos, datos)
    fid = fopen(fileDatos, 'w');
    
    for i = 1:length(datos)
        %%Formato .t (tratamiento) + .r(repeticion) + .v(nombre variable de
        %%campo y .array (valor de la variable)
        fprintf(fid, '%s;%s;%s;%f\n', datos(i).t, datos(i).r, datos(i).v, datos(i).array);
    end
    
    fclose(fid);
end

