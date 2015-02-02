function [ x0 ] = Init_pos_x( i_L, i_num_part )
%Gives you the initial equilibrium positions (X-dir)

    for ii = 1:i_num_part
       
            x0(ii) = ii*(i_L/(i_num_part + 1));
        
    end

end
