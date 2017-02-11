function run_all_plots()
%RUN_ALL_PLOTS Run all of the code necessary to generate all figures.
    close all;
    set(groot, 'defaultfigurecolor', 'white');
    set(groot, 'defaultlinelinewidth', 1);
    set(groot, 'defaultaxeslinewidth', 1);
    
    if ~exist('output', 'dir'), mkdir('output'); end
    
    %% Part 1
    
    % figure 1
    dynamical_regimes
    % figure 2
    Sensitivity_to_Initial_Conditions
    % figure 3
    Bifurcations
    % figure 4
    lyapunov_exponent
    
    %% Part 2
    
    %figure 6
    Sensitivity_to_Initial_Conditions3d
    %figure 7
    Bifurcations3d
end

