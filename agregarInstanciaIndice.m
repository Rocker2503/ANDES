function [] = agregarInstanciaIndice(indicesMap, idTratamiento, idBD)
    if(idBD == 0)
        return
    end
    
    conn = database('MySQL','root','');
    
    keySet = keys(indicesMap);
    for i = 1:length(keySet)           
            localValor = sprintf('%f', indicesMap(keySet{i}) );
            localNombre = keySet{i};
            
            query = sprintf('INSERT INTO InstanciaIndice(nombre, valor, idTratamiento) VALUES(%s%s%s, %s%s%s, %i) ;', "'", localNombre, "'" , "'", localValor, "'", idTratamiento);
            disp(query);    
            fetch(exec(conn,query));
    end
    close(conn)
end