%Thomas Karpishin
%OPT 211
%April 23, 2020
%Final Project
%Making a square aperture 

%Define aperture field
apl = 5000; %Size of aperture field
ap = zeros(apl); %Define actual aperture plane

%Define square aperture
sql = 500; % Square's side length
%ap(round(1+apl/2-sql/2):round(1+apl/2+sql/2),round(1+apl/2-sql/2):round(1+apl/2+sql/2)) = 1;
for ijk = round(1+apl/2-sql/2):round(1+apl/2+sql/2)
    for lmn = round(1+apl/2-sql/2):round(1+apl/2+sql/2)
        ap(ijk,lmn) = 1;
    end
end



%Plot the aperture field
figure
imagesc(ap) %Plot image of the aperture field
colormap gray %set color of the aperture field plot
axis equal %set the display scale of the axes
axis([0 apl 0 apl]) %set axes limits to size of aperture field





