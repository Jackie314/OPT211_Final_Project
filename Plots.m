function Plots(apt_Shape)

% Jackie Kaufman
% 4 - 22- 2020

% You must enter the shape in the format
%   'apt_Shape' 
%   for example Plots('apt_square')


run(apt_Shape);


E = fft2(ap); % Calculates the energy, which is the fourier transform over the shape
I0 = E.^2; % Calculates the Intensity which is energy squared
I = (abs(fftshift(I0.^.25))); % Centers and graphs the intensity raised to .25 for better viewing


figure(2)
imagesc(I)
colormap gray 
axis equal
axis([0 apl 0 apl]) 


figure(3)
imagesc(I)
colormap gray
axis equal
axis([apl/2-125 apl/2+125 apl/2-125 apl/2+125]) 



figure(4)
z1 = ifft2(E);
imagesc(abs(z1))
colormap gray
axis equal 
axis([0 apl 0 apl])