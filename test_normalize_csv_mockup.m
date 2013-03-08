function test_normalize_csv_mockup

size_x = 3;
size_y = 4;
size_z = 2;
count  = 0;
data   = [];
for i=1:size_x
    for j=1:size_y
        for k=1:size_z
            count = count + 1;
            data  = [data; -0.1*i, -0.2*j, -0.3*k, count];
        end;
    end;
end;
%disp(data)
%data=csvread(csv_file);
%disp(size(data))
%disp(data(1:5,:))
%disp(data([1,3,5],[1,2,4]))

datapoint_2d = data(data(:,3) == -0.6, [1,2,4]);
%datapoint_2d = data(:,[1,2,4]);
%disp(datapoint_2d)
disp(normalize_csv(datapoint_2d))

end

