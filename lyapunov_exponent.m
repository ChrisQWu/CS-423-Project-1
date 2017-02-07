function lyapunov_exponent(t_trans, t_max, param1_range, param2, x0, y0)
    %LYAPUNOV_EXPONENT 
    current_l = 0;
    for param1=param1_range
        current_l = current_l + 1;
        % Initialize variables
        xy = [x0; y0]; xy_lengths = [1;0];
        for i=1:t_max
            J = F_Jacobian(xy, param1, param2);
            xy=F(xy, param1, param2);
            % Calculate divergence rate in the direction defined by the Jacobian
            xy_lengths=J*xy_lengths;
            if i > t_trans
                length=sqrt(sum(xy_lengths.^2)); % Distance formula
                max_lyapunovs(current_l) = log(length)/i; % Calculate the average
            end
        end
    end
end

function xys = F(xy, gamma, ro)
    xys = [ro - xy(1)*xy(1) + gamma * xy(2);
           xy(1)];
end

function J = F_Jacobian(xy, gamma, ro)
    J = [-2*xy(1), gamma;
        1; 0];
end