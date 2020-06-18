
function [new_reflectancia,valores] = acotarReflectancia(reflectancia, limiteIzquierdo, limiteDerecho)
	valores = [limiteIzquierdo:limiteDerecho];
	new_reflectancia = zeros(limiteDerecho-limiteIzquierdo,1);
	indice = 1;
	for posReflectancia = limiteIzquierdo:limiteDerecho
		new_reflectancia(indice) = reflectancia(posReflectancia-349);
		indice = indice+1;
	end
end
