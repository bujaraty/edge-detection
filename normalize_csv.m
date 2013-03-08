function [ result ] = normalize_csv(datapoint_2d)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%disp(size(datapoint_2d))
unique_col1 = unique(datapoint_2d(:,1));
unique_col2 = unique(datapoint_2d(:,2));
%disp(size(unique_col2))
%disp(unique_col2)
result = [];
for i=1:size(datapoint_2d,1)
    match_col1 = datapoint_2d(i,1) == unique_col1;
    idx_col1 = find(match_col1, 1);
    match_col2 = datapoint_2d(i,2) == unique_col2;
    idx_col2 = find(match_col2, 1);
    result = [result;[idx_col1, idx_col2, datapoint_2d(i,3)]];
    %disp(datapoint_2d(i,2))
    %disp(index)
    %disp(unique_col2(index))
    %disp(unique_col1)
end;


end

