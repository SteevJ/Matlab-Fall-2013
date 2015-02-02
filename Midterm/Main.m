% Steve Jaycox 2013
% Animation of a ball rolling in a parabola

step_size = 0.01;
x = -2:step_size:2;
box_size = 0.5;

V = x.^2;

fig = figure(1);

for ii = 1:length(x);
    
    plot(x, V)
    axis([-3 3 -1 5])
    
    rectangle('Position', [x(ii)-(box_size/2) V(ii) box_size box_size], 'Curvature', [1 1])
    
    test = getframe(fig);
   
end

% % Create a logical image of a circle with specified
% % diameter, center, and image size.
% % First create the image.
% imageSizeX = 640;
% imageSizeY = 480;
% [columnsInImage rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
% % Next create the circle in the image.
% centerX = 320;
% centerY = 240;
% radius = 100;
% circlePixels = (rowsInImage - centerY).^2 ...
%     + (columnsInImage - centerX).^2 <= radius.^2;
% % circlePixels is a 2D "logical" array.
% % Now, display it.
% image(circlePixels) ;
% colormap([0 0 0; 1 1 1]);
% title('Binary image of a circle');
