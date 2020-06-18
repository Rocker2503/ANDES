function [id] = agregarTratamientoReflectancia(idBD,tratamiento,reflectancia)
    
    if(idBD == 0)
        return
    end
    conn = database('MySQL','root','');
    
    fecha = datetime('today');
    fecha.Format = 'yyyy-MM-dd';
    disp(fecha);
        
    query = sprintf('SELECT idReflectancia FROM tratamiento WHERE idReflectancia = (SELECT MAX(idReflectancia) FROM tratamiento)');
    disp(query);    
    data = fetch(conn,query);
    data = cell2mat(table2cell(data));       
    
    if(isempty(data))
        fprintf('el data esta vacio\n');
        data = 1;
        query = sprintf('INSERT INTO tratamiento(nombre,fecha,idAndes,idReflectancia) VALUES(%s%s%s,%s%s%s,%s%d%s,%s%d%s)',"'",tratamiento,"'","'",fecha,"'","'",idBD,"'","'",data,"'");
        disp(query)
        fetch(exec(conn,query));
    else
        data = data + 1;
        query = sprintf('INSERT INTO tratamiento(nombre,fecha,idAndes,idReflectancia) VALUES(%s%s%s,%s%s%s,%s%d%s,%s%d%s)',"'",tratamiento,"'","'",fecha,"'","'",idBD,"'","'",data,"'");
        disp(query)
        fetch(exec(conn,query));
    end
     
    for i = 1:length(reflectancia)
        query = sprintf('INSERT INTO reflectancia(longitud,valor,idReflectancia) VALUES(%s%d%s,%s%f%s,%s%d%s)',"'",i+349,"'","'",reflectancia(i),"'","'",data,"'");        
        fetch(exec(conn,query));
    end
        
    query = sprintf('SELECT id FROM tratamiento WHERE id = (SELECT MAX(id) FROM tratamiento)');
    disp(query)
    data = fetch(conn,query);
    data = cell2mat(table2cell(data));
    id = data;
    close(conn);
    clear conn query
    
end