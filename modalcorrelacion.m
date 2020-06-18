function [Answer,Cancelled,resp] = modalcorrelacion(etiquetas, archivos, nombres)

    Title = 'Agregar Correlación';

    Prompt = {
        'Tratamiento', 'List', ''
        'Repeticion','List', ''
        'Nombre','List',''
        'Valor', 'Valor','*'
    };
    DefAns = struct([]);
    global resp;
    resp = struct([]);
    %%Formats = struct('type',{'list','edit','edit'});
    Formats(1).style = 'popupmenu';
    Formats(1).items = etiquetas;
    
    Formats(2).style = 'popupmenu';
    Formats(2).items = archivos;
    
    Formats(3).style = 'popupmenu';
    Formats(3).items = nombres;
    
    Formats(4).required = 'on';
    Formats(4).format = 'float';
    
    Prompt(5,:) = {'Agregar','',''};
    Formats(5).type = 'button';
    Formats(5).callback = @(~,~,handles,k)(agregarStruct(handles));

    Formats = Formats';
    Options.AlignControls = 'on';

    [Answer,Cancelled] = inputsdlg2(Prompt,Title,Formats,DefAns,Options);
end

function [resp] = agregarStruct(handles)
    val = get(handles(1),'Value');
    str = get(handles(1),'String');
    tratamiento = str(val);
    str = get(handles(2),'String');
    repeticion = str;
    str = get(handles(3),'String');
    nombre = str;
    st = struct('Tratamiento',tratamiento,'Repeticion',repeticion,'Nombre',nombre,'Valor',str2double((get(handles(4),'String')) ));
    %disp(st)
    global resp;
    resp = [resp , st];
    %disp(resp);
end