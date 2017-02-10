function default_plot(name)
%DEFAULT_PLOT
    if ~exist('output', 'dir'), mkdir('output'); end
    export_fig(['output/' name '.png'], '-a4', '-r200');
end

