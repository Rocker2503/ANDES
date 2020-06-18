function insertarCorrelacion(nombre,valor,idTratamiento)
    
    conn = database('MySQL','root','');
    
    query = sprintf('INSERT INTO correlacion(nombre,valor,idTratamiento) VALUES(%s%s%s,%s%f%s,%s%d%s)',"'",nombre,"'","'",valor,"'","'",idTratamiento,"'");
    disp(query)
    
    fetch(exec(conn,query));
    
    close(conn);
end