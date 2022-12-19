function x = motion_model_func(action)
    if strcmp(action, 'right') 
        super_matrix = zeros([5, 5]);
        x = [];
        for i=1:5
            for j=1:5
                super_matrix(i, j) = 0.1;
                if ((j+1) <= 5)
                    super_matrix(i, j+1) = 0.8;
                if ((j+2) <= 5)
                    super_matrix(i, j+2) = 0.1;
                end
                end
                super_matrix = transpose(super_matrix);
                B = reshape(super_matrix, 1, 25);
                x = [x; B];
                super_matrix = zeros([5, 5]);
            end
            super_matrix = zeros([5, 5]);
        end
    elseif strcmp(action, 'backward')
        super_matrix = zeros([5, 5]);
        x = [];
        for i=1:5
            for j=1:5
                super_matrix(i, j) = 0.1;
                if ((i+1) <= 5)
                    super_matrix(i+1, j) = 0.8;
                if ((i+2) <= 5)
                    super_matrix(i+2, j) = 0.1;
                end
                end
                super_matrix = transpose(super_matrix);
                B = reshape(super_matrix, 1, 25);
                x = [x; B];
                super_matrix = zeros([5, 5]);
            end
            super_matrix = zeros([5, 5]);
        end
    elseif strcmp(action, 'left')
        super_matrix = zeros([5, 5]);
        x = [];
        for i=1:5
            for j=1:5
                super_matrix(i, j) = 0.1;
                if ((j-1) > 0)
                    super_matrix(i, j-1) = 0.8;
                if ((j-2) > 0)
                    super_matrix(i, j-2) = 0.1;
                end
                end
                super_matrix = transpose(super_matrix);
                B = reshape(super_matrix, 1, 25);
                x = [x; B];
                super_matrix = zeros([5, 5]);
            end
            super_matrix = zeros([5, 5]);
        end
    elseif strcmp(action, 'forward')
        super_matrix = zeros([5, 5]);
        x = [];
        for i=1:5
            for j=1:5
                super_matrix(i, j) = 0.1;
                if ((i-1) > 0)
                    super_matrix(i-1, j) = 0.8;
                if ((i-2) > 0)
                    super_matrix(i-2, j) = 0.1;
                end
                end
                super_matrix = transpose(super_matrix);
                B = reshape(super_matrix, 1, 25);
                x = [x; B];
                super_matrix = zeros([5, 5]);
            end
            super_matrix = zeros([5, 5]);
        end
    end
end