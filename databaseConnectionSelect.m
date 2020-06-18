function [data] = databaseConnectionSelect(query)
    %% Make connection to database
    conn = database('MySQL','root','');

    %Set query to execute on the database
    %query = ['Select * from andes ' ...
     %   'LIMIT 5'];
    disp(query)

    %% Execute query and fetch results
    data = fetch(conn,query);
    disp(data);

    %% Close connection to database
    close(conn)

    %% Clear variables
    clear conn query
end