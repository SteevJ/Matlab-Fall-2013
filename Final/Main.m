param.L = 40;
param.k = 0.02;        
param.m = 1;

param.num_particles = 8;

ball = zeros(1, param.num_particles);

x0 = zeros((param.num_particles*2)+1, 1);

x_pos = Init_pos_x(param.L, param.num_particles); % Stores eq positions of particles

for ii = 1:param.num_particles
    
    x0(2*ii-1)    = x_pos(ii);
    
end

x0(length(x0)) = param.L;

ball_x = 3;
ball_y = 0.25;
        
x0(1) = x0(1)  -1; % Disturbance of particle 1
    
        tspan = [0 1000];
        
        [tt, xx] = ode45(@final_diff, tspan, x0, [], param);
        
        ball_movie = figure(2);
        
        index = 0;
        
    writerObj = VideoWriter('classical.avi');
    open(writerObj);
    
        for ii = 1:length(tt)
            
            index = index + 1;
            
            for jj = 1:param.num_particles
                ball(jj) = rectangle('Position',[xx(ii, (2*jj - 1))-ball_x/2, 0, ball_x, ball_y], 'Curvature',[1,1]);
            end
            
                axis([0 param.L -1.5 1.5])
            
            frame_handle = getframe(ball_movie);
            F(index) = frame_handle;
            writeVideo(writerObj,frame_handle);
            delete(ball)
            
        end
