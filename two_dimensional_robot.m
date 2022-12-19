world_map = [1 0 0 0 2;
             0 1 0 1 0;
             0 2 0 0 0;
             1 0 0 2 0;
             0 0 0 2 0];

no_states = numel(world_map);

belief = 1/no_states*ones([1, no_states]);
pred_belief = zeros([1, no_states]);

measurement_model = measurement_model_func;



for t = 1:10

    measurement = input("measurement (1-blue/2-yellow/3-white): ");
    action = input("action (right/forward/left/backward): ", 's');
    motion_model = motion_model_func(action);

    %Prediction step
    
    for i = 1 : length(pred_belief)
        pred_belief(i) = 0;
        for j = 1 : length(belief)
            pred_belief(i) = pred_belief(i) + (motion_model(j, i) * belief(j));
        end 
    end
    
    pred_belief
    
    %Updation step
    
    for i = 1 : length(pred_belief)
        belief(i) = measurement_model(measurement, i) * pred_belief(i);
    end
    eta = 1 / (sum(belief));
    belief = belief * eta;
    
    belief
    bar((1 : 25), belief)
end