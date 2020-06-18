function [] = databaseConnectionInsert(query)
    %% Make connection to database
    conn = database('MySQL','root','');

    %Set query to execute on the database
    %disp(query);    
    %% Execute query and fetch results
    fetch(exec(conn,query));  

    %% Close connection to database
    close(conn)

    %% Clear variables
    clear conn query
end