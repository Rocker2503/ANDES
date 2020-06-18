function [] = InsertReflectancia(idTratamiento)
    %%Connect to DataBase
    conn = database('MySQL','root','');
    
    %%Crear Query
    query = sprintf('INSERT INTO reflectancia(idTratamiento) VALUES(%s%s%s)',"'",'1',"'");
    query2 = sprintf('SELECT LAST_INSERT_ID();');
    disp(query)
    disp(query2)
    
    fetch(exec(conn,query));
    data = cell2mat(table2cell(fetch(conn,query2)));
    disp(data);
    %%Cerrar conexion
    close(conn);
    
    clear conn query

end