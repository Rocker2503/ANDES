function [] = databaseConnectionInsertIndices()
    %% Make connection to database
    conn = database('MySQL','root','');
    
    %Leer lista de indices y fórmulas
    fid = fopen('indices.txt','r');
    minimo = 350;
    maximo = 2500;
    
    while true
        thisline = fgetl(fid);
        if ~ischar(thisline); break; end  %end of file
        
        %now check whether the string in thisline is a "word", and store it if it is.
        %then
        localIndice = split(thisline, '=');
        localNombre = localIndice{1};
        localFormula = localIndice{2};
        
        %disp(localNombre);
        %disp(localFormula);
        
        %obtener limites de longitudes de onda
        longitudesOnda = [];
        
        split2 = regexp(localFormula, '[-+*/()]', 'split');

        for sub = 1:length(split2)            
            local = cell2mat(split2(sub));
            local = str2double(local);
            
            if( (~isnan(local)) && (local >= minimo) && (local <= maximo) )
                
                if(isempty(longitudesOnda) )
                    longitudesOnda = [longitudesOnda local];
                elseif(contiene(ismember(longitudesOnda, local)) == 0 )
                    longitudesOnda = [longitudesOnda local];
                end
            end
        end
        localMax = max(longitudesOnda(:));
        localMin = min(longitudesOnda(:));
                
        query = sprintf('INSERT INTO indice(nombre, formula, longitudOndaInferior, longitudOndaSuperior, categoria) VALUES(%s%s%s, %s%s%s, %i, %i, %s%s%s) ;', "'", localNombre, "'" , "'", localFormula, "'", localMin, localMax, "'", 'default', "'");
        disp(query);
        
        fetch(exec(conn,query));  
    end
        
    %Set query to execute on the database
    %obtener auto id agregado
    %query = sprintf('INSERT INTO indice(nombre, formula, longitudOndaInferior, longitudOndaSuperior) VALUES(%s%s%s) ;', "'", 'test0',  "'" );
    %disp(query);

    %% Execute query and fetch results
    %fetch(exec(conn,query));    

    %% Close connection to database
    fclose(fid);
    close(conn)

    %% Clear variables
    clear conn query
end

function [flag] = contiene(array)
    flag = 0;
    for i = 1:length(array)
       if(array(i) == 1)
          flag = 1;
       end
    end
end