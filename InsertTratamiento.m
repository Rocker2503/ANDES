function [data] = InsertTratamiento(nombre,fecha,idAndes)
    %%Connect to DataBase
    conn = database('MySQL','root','');
    %%Set query to execute on the database
    %%obtener auto id agregado
    query = sprintf('INSERT INTO tratamiento(nombre,fecha,idAndes) VALUES(%s%s%s, %s%s%s, %s%s%s)',"'",'T1',"'","'",'2020-02-05',"'","'",'1',"'");
    query2 = sprintf('SELECT LAST_INSERT_ID();');
    disp(query)
    disp(query2)
    %%Ejecutar Query 
    fetch(exec(conn,query));
    data = cell2mat(table2cell(fetch(conn,query2)));
    disp(data);
    %%Cerrar Conexion
    close(conn);
    
    %% Limpiar Variables
    clear conn query
end