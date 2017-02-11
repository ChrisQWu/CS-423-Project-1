function default_plot(name)
% For better plotting, download export_fig
% https://www.mathworks.com/matlabcentral/fileexchange/23629-export-fig
% And add it to your path, then switch these following lines

%     export_fig(['output/' name '.png'], '-a4', '-r200');
    saveas(gcf, ['output/' name '.png']);
end

