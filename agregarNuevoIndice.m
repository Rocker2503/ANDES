function [indices] = agregarNuevoIndice(indices, reflectancia, nombre, funcion)
        minimo = 350;
        maximo = 2500;

        %parsear funcion y obtener longitudes de onda
        longitudesOnda = [];
        
        splitl = regexp(funcion, '[-+*/()]', 'split');

        for sub = 1:length(splitl)            
            local = cell2mat(splitl(sub));
            local = str2double(local);
            
            if( (~isnan(local)) && (local >= minimo) && (local <= maximo) )
                disp(sub);
                disp(local);
                
                if(isempty(longitudesOnda) )
                    longitudesOnda = [longitudesOnda local];
                elseif(contiene(ismember(longitudesOnda, local)) == 0 )
                    longitudesOnda = [longitudesOnda local];
                end
            end
        end
        
        
        %remplazar valores de longitudes de onda
        %
        localFuncion = funcion;
        %localFuncion = cellstr(localFuncion);
        for i = 1:length(longitudesOnda)
            disp('REEMPLAZO');
            disp(longitudesOnda(i));

            %separar
            disp(class(localFuncion));
            disp(localFuncion);
            [subSplit,matches] = split(localFuncion,["-","+","*","/","(",")"]);

                        
            for s = 1:(length(subSplit))
                check = subSplit(s);
                check = str2double(check{1});
                if(check == longitudesOnda(i))
                    disp(subSplit(s));
                    format long;
                    long = reflectancia(longitudesOnda(i) - 349 );
                    disp('long reflectanciaaaaaa!!!!!!!!!!!!!!!!!!!');
                    disp(long);
                    %format long;
                    %newSub = strcat(subSplit(s), num2str(long) );
                    %newSub = str2cell(newSub);
                    %format long;
                    subSplit(s) = cellstr(num2str(long));

                    %disp('newSub');
                    %disp(newSub);
                end
            end
            %concatenar y continuar ciclo
            originalStr = join(subSplit,matches);
            disp('originalStr');
            disp(originalStr);
            localFuncion = originalStr;
                        
        end
        
        disp('Funcion Final');
        disp(localFuncion);
        disp(class(localFuncion));
    
        %Transformar 
        %
        indiceFinal = str2num(localFuncion{1});
        %aproximar a la 5ta decima
        indiceFinal = round(indiceFinal, 5);
        disp('indiceFinal');
        disp(indiceFinal);
        
        
        indices(nombre) = indiceFinal;
        
        
end

function [flag] = contiene(array)
    flag = 0;
    for i = 1:length(array)
       if(array(i) == 1)
          flag = 1;
       end
    end
end

function [finalArray] = unificar(array)
    local = [];
    for i = 1:length(array)
        local = strcat(local, array(i));
    end
    finalArray = local{1};
end