function [result] = test_normalize_csv_mockup

size_x = 3;
size_y = 4;
size_z = 2;
count  = 0;
data   = [];
for i=1:size_x
    for j=1:size_y
        for k=1:size_z
            count = count + 1;
            if mod(count,5) == 1
                data  = [data; -0.1*i, -0.2*j, -0.3*k, 0];
            else
                data  = [data; -0.1*i, -0.2*j, -0.3*k, count];
        end;
    end;
end;

datapoint_2d = data(data(:,3) == -0.6, [1,2,4]);
result = normalize_csv(datapoint_2d);

end

