function savitskygolay()
    pathName = 'C:\Users\Nicolas\Desktop';
    fileName = 'T1R1_HO.sig';
    
    file = fullfile(pathName,fileName);
    fid = fopen(file,'r');
    [wavelength, data, new_wave, new_data] = leerArchivo(file);
    [wave_new,data_new] = interpolar(wavelength,data,new_wave,new_data);
    
    
    %disp(length(data))
    disp(size(wave_new))
    
    cd C:\HYPER
    mkdir Otros
    cd C:\HYPER\Otros
    d = 'C:\HYPER\Otros\Data.csv';
    d2 = 'C:\HYPER\Otros\DataSG.csv';
    d3 = 'C:\HYPER\Otros\DataMM.csv';
    fid2 = fopen(d,'w');
    for i = 1:length(data_new)-10
       fprintf(fid2,'data%i ; %f\n',(i+349),data_new(i)); 
    end
    
    %%savitzky-golay
    dat = savgol(data_new,1,7);
    %%media movil
    dat2 = movmean(data_new,8);
    %%%%%%
    fid3 = fopen(d2,'w');
    for i = 1:length(dat)-10
       fprintf(fid3,'data%i ; %f\n',(i+349),dat(i)); 
    end
    
    fid4 = fopen(d3,'w');
    for i = 1:length(dat2)-10
        fprintf(fid4,'data%i ; %f\n',(i+349),dat2(i));
    end
    
    indices = [350:1:2510];
    plot(indices,dat);
    %lot(indices,dat2);
    axis([350 2500 0 0.7]);
    
    fclose(fid3);
    fclose(fid2);
    fclose(fid);
end