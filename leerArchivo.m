function [wavelength, data, new_wave, new_data] = leerArchivo(fileName)
	[tar, ref]=importsvc(fileName);
    R_rel = relativereflectance(tar, ref);
    wavelength = R_rel.wavelength;
    data       = R_rel.data;
    new_wave = zeros(2500-340+1,1);
    new_data = zeros(2500-340+1,1);
end
