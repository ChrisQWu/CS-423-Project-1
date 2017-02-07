function max_lyapunov3d = lyapunov_exponent3d(t_trans,t_max, alpha,beta,gamma_range, x0, y0, z0)
    %LYAPUNOV_EXPONENT 
    current_l = 0;
    for gamma=gamma_range
        current_l = current_l + 1;
        % Initialize variables
        xyz = [x0; y0; z0]; xyz_lengths = [1;0;0];
        for i=1:t_max
            J = F_Jacobian3d(xyz, alpha, beta, gamma);
            xyz = F(xyz, alpha, beta, gamma);
            % Calculate divergence rate in the direction defined by the Jacobian
            xyz_lengths=J*xyz_lengths;
            if i > t_trans
                length=sqrt(sum(xyz_lengths.^2)); % Distance formula
                max_lyapunov3d(current_l) = log(length)/i; % Calculate the average
                
            end
        end
    end
end

function xyzs = F(xyz, alpha, beta, gamma)
    xyzs = [xyz(1)*xyz(2) - xyz(1)*gamma + alpha;
            -(xyz(3) + xyz(1));
            beta * xyz(3) + xyz(2)];
end

function J = F_Jacobian3d(xyz, alpha, beta, gamma)
    J = [xyz(2)-gamma,xyz(1),0;
              -1,0,-1;
              0,1,beta];
end

