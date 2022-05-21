Hitungan=zeros(4,4);
%%File Name
dil = 'D:\Hasil_Februari\Speed_Dev'; 
res = "100S";
traj ="1AT";
typ= "100M";
    
% range = 'A2:D101';  % Read a specific range of data:
myFolder1 = 'D:\Hasil_Februari\Speed_Dev\';
% Get a list of all files in the folder with the desired file name pattern.
filePattern1 = fullfile(myFolder1, '*.xlsx'); % Format/ pattern 
file_list = dir(filePattern1);
 
for i = 1:length(file_list)
    flname = file_list(i).name;
    flname = append(myFolder1,flname);

    data_in{i} = xlsread(flname); % stores the filename data in array of cells
    % insert your code here
end

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

filename3 = sprintf('Hitungan_%s_%s_%s.xlsx',res,traj,typ);
xlswrite(fullfile(dil,filename3),Hitungan)