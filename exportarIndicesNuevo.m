function [] = exportarIndicesNuevo(fileNameIndice, indicesMap)
	    fid= fopen(fileNameIndice,'w');
        
        keySet = keys(indicesMap);
        for i = 1:length(indicesMap)           
            fprintf(fid, '%s;%f\n', keySet{i}, indicesMap(keySet{i}) );
        end
        fclose(fid);
end