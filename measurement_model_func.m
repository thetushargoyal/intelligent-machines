function x = measurement_model_func()
world_map = [1 0 0 0 2;
             0 1 0 1 0;
             0 2 0 0 0;
             1 0 0 2 0;
             0 0 0 2 0];
x=0.1*ones(3,25);
B = reshape(transpose(world_map), 25, [])';
for i=1:length(B)
     if B(i)==2
     x(1,i)=0.7;
     end
     if B(i)==1
     x(2,i)=0.7;
     end
     if B(i)==0
     x(3,i)=0.7;
     end
end