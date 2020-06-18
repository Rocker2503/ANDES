%RELATIVEREFLECTANCE Calculates relative reflectance spectra from target
%and reference.
%   R_rel = RELATIVEREFLECTANCE(target, reference) calculates an
%   array of reflectance spectra from an array target spectra and their
%   corresponding reflectance spectra. Target spectra are paired to
%   reference spectra by a field called 'pair' in the target structure. The
%   value of the pair field must be the name of the corresponding
%   reflectance spectrum. An error is reported if a spectrum is unpaired or
%   if the paired spectrum cannot be found.
%
%   FSF Post Processing Toolbox
%   Field Spectroscopy Facility, Natural Environment Research Council

%   Author: Iain Robinson
%   Contact: fsf@nerc.ac.uk
%   Requirements: MATLAB R2009b or later
%   Revision: 1.2.5
%   Date: 2010-09-20

function reflectance = relativereflectance(target, reference)
    % Loop through the target spectra one at a time, find the name of the
    % corresponding reference spectrum and divide to calculate reflectance.
    for i=1:length(target)
        % The name of the reference spectrum which is paired to this target
        % spectrum.
        if isfield(target(i), 'pair')
            referenceSpectrumName = target(i).pair;
        else
            error('The target spectrum number %d:\n\t%s\nis not paired to any reference spectrum.', i, target(i).name);
        end
        
        % Find the spectrum named referenceSpectrumName in the provided
        % reference spectra. The following line searches through the array
        % of structures called reference until and returns all spectra
        % which match the given name using strcmp to compare strings.
        referencePair = reference(strcmp({reference.name}, referenceSpectrumName));
        
        % There should only be one reference spectrum for each target
        % spectrum. Check this.
        if length(referencePair) == 0
            error('The target spectrum number %d:\n\t%s\nis paired to the reference spectrum:\n\t%s\nhowever this reference spectrum could not be found.', i, target(i).name, target(i).pair);
        elseif length(referencePair) > 1
            error('The target spectrum number %d:\n\t%s\nis paired to the reference spectrum:\n\t%s\nhowever there is more than one reference spectrum with this name.', i, target(i).name, target(i).pair);
        end

        % Make a copy of the target spectrum.
        reflectance(i) = target(i);
        
        % Replace the original target intensity data with the new
        % calculated reflectance data.
        reflectance(i).data = target(i).data ./ referencePair.data;
    end
end

