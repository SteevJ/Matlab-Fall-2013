function [ dxdt ] = final_diff( t, x, param )
% Does some math.

    dxdt = zeros(size(x));
    
    for ii = 1:param.num_particles
        
        if (ii == 1)
            
            dxdt(ii) = x(2*ii);
            dxdt(ii + 1) = (param.k/param.m)*((x(ii + 2)) - 2*(x(ii)));
            
        else
        
        dxdt(2*ii - 1) = x(2*ii);
        dxdt(2*ii) = (param.k/param.m)*((x(2*ii + 1)) - 2*(x(2*ii - 1)) + (x(2*ii-3)));
    
        end
    end
end
