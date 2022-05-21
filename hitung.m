Hitungan=zeros(4,6);

% range = 'A2:D101';  % Read a specific range of data:
% myFolder1=dire;
myFolder1 = 'D:\Hasil_Februari\Speed_Dev\2ABTraj-B\';
% Get a list of all files in the folder with the desired file name pattern.
filePattern1 = fullfile(dire, '*.xlsx'); % Format/ pattern 
file_list = dir(filePattern1);
 
for i = 1:length(file_list)
    flname = file_list(i).name;
    flname = append(myFolder1,flname);

    data_in{i} = xlsread(flname); % stores the filename data in array of cells
    % insert your code here
end

[rn,cn]=size(tugas3)


%%Complexity
Hitungan (1,1) = mean(data_in{1,1}(:,1));
Hitungan (2,1) = mean(data_in{1,2}(:,1));
Hitungan (3,1) = mean(data_in{1,3}(:,1));
Hitungan (4,1) = mean(data_in{1,4}(:,1));

%%Workload
Hitungan (1,2) = mean(data_in{1,1}(:,2));
Hitungan (2,2) = mean(data_in{1,2}(:,2));
Hitungan (3,2) = mean(data_in{1,3}(:,2));
Hitungan (4,2) = mean(data_in{1,4}(:,2));

%%Conflict
Hitungan (1,3) = mean(data_in{1,1}(:,3));
Hitungan (2,3) = mean(data_in{1,2}(:,3));
Hitungan (3,3) = mean(data_in{1,3}(:,3));
Hitungan (4,3) = mean(data_in{1,4}(:,3));

%%Conflict Potential
Hitungan (1,4) = mean(data_in{1,1}(:,4));
Hitungan (2,4) = mean(data_in{1,2}(:,4));
Hitungan (3,4) = mean(data_in{1,3}(:,4));
Hitungan (4,4) = mean(data_in{1,4}(:,4));

[rn,cn]=size(data_in{1,1});

%%Complexity Convergency
Hitungan (1,5) = mean(data_in{1,1}(:,1))-mean(data_in{1,1}(rn-1,1));
Hitungan (2,5) = mean(data_in{1,2}(:,1))-mean(data_in{1,2}(rn-1,1));
Hitungan (3,5) = mean(data_in{1,3}(:,1))-mean(data_in{1,3}(rn-1,1));
Hitungan (4,5) = mean(data_in{1,4}(:,1))-mean(data_in{1,4}(rn-1,1));

%%Workload Convergency
Hitungan (1,6) = mean(data_in{1,1}(:,2))- mean(data_in{1,1}(rn-1,2));
Hitungan (2,6) = mean(data_in{1,2}(:,2))- mean(data_in{1,2}(rn-1,2));
Hitungan (3,6) = mean(data_in{1,3}(:,2))- mean(data_in{1,3}(rn-1,2));
Hitungan (4,6) = mean(data_in{1,4}(:,2))- mean(data_in{1,4}(rn-1,2));

filename3 = sprintf('Hitungan_%s_%s_%s.xlsx',res,traj,typ);
xlswrite(fullfile(dire,filename3),Hitungan)