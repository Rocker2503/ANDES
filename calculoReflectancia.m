function [reflectancia] = calculoReflectancia(wave_new, data_new)
	    reflectancia = zeros(2150,1);
        for index = 1:2151
        reflectancia(index) = data_new(wave_new==349+index);
        end
end