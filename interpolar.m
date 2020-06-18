function [new_wave, new_data] = interpolar(wavelength,data,new_wave,new_data)
		for wave = 340:2500
        anterior = wavelength(wavelength<=wave);
        posterior = wavelength(wavelength>=wave);
        anterior = anterior(end);
        posterior = posterior(1);
        wavelength_real = [anterior posterior];
        anterior_wave = anterior;
        posterior_wave = posterior;

        anterior = data(wavelength<=wave  );
        posterior = data(wavelength>=wave);
        anterior = anterior(end);
        posterior = posterior(1);
        data_real = [anterior posterior];

        if anterior_wave ~= wave && posterior_wave ~= wave
            data_inter = interp1(wavelength_real,data_real,wave,'Linear');
            new_wave(wave-339,1) = wave;
            new_data(wave-339,1) = data_inter;
        elseif anterior_wave == wave || posterior_wave == wave
            new_wave(wave-339,1) = wavelength(wavelength==wave);
            new_data(wave-339,1) = data(wavelength==wave);
        end
        clearvars anterior posterior wavelength_real data_real anterior_wave posterior_wave;
        end
end