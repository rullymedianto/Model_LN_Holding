
numb = 100;%% Jumlah replikasi
time= 3600; % Durasi simulasi
Vw = 6;   % Besar kecepatan angin
tetaw = 210; %sudut arah angin (dari)

global A320 B737 B777 B787 A330 ALTID VECTO SPEED

%%Aircraft type
A320 = 0.900; % 1 == A320
B737 = 0.00; % 2 == B737NG
A330 = 0.100;% 3 == A330
B777 = 0.000;% 4 == B777
B787 = 0.000;% 5 == B787

%%Resolution Type
ALTID = 0.00; % 1 == Altitude Control
VECTO = 0.00; % 2 == Vectoring
SPEED = 1.00; % 3 == Speed Control

% pos_acc = 222; %position error (meter)
% alt_acc = 15; %altitude error (meter)
% spd_acc = 2.5; %speed error (knot);
% vsp_acc = 50; %vertical sped error (FPM)

%%File Name
dire = 'D:\Hasil_Maret\No_HF\Speed_1ATraj_90M-10H_100_No-HF_A'; 
res = "100S_Err";
traj ="1AT";
typ= "90M-10H-A";
    
%%Set Arrival Trajectory
IAT=90;
sa1=jadwal(time,IAT);
sa2=jadwal(time,IAT);
sa3=[0];

running_files_90

IAT=150;
sa1=jadwal(time,IAT);
sa2=[0];
sa3=[0];

running_files_150

IAT=210;
sa1=jadwal(time,IAT);
sa2=[0];
sa3=[0];

running_files_210

IAT=270;
sa1=jadwal(time,IAT);
sa2=[0];
sa3=[0];

running_files_270

% Hitungan=zeros(4,6);
% 
% % range = 'A2:D101';  % Read a specific range of data:
% myfolder1 = 'D:\Hasil_Februari\Speed_Dev\2ABTraj-B\';
% % myFolder1 = 'D:\Hasil_Februari\Speed_Dev\';
% % Get a list of all files in the folder with the desired file name pattern.
% filePattern1 = fullfile(dire, '*.xlsx'); % Format/ pattern 
% file_list = dir(filePattern1);
%  
% for i = 1:length(file_list)
%     flname = file_list(i).name;
%     flname = append(myFolder1,flname);
% 
%     data_in{i} = xlsread(flname); % stores the filename data in array of cells
%     % insert your code here
% end
% 
% [rn,cn]=size(tugas3)
% 
% 
% %%Complexity
% Hitungan (1,1) = mean(data_in{1,1}(:,1));
% Hitungan (2,1) = mean(data_in{1,2}(:,1));
% Hitungan (3,1) = mean(data_in{1,3}(:,1));
% Hitungan (4,1) = mean(data_in{1,4}(:,1));
% 
% %%Workload
% Hitungan (1,2) = mean(data_in{1,1}(:,2));
% Hitungan (2,2) = mean(data_in{1,2}(:,2));
% Hitungan (3,2) = mean(data_in{1,3}(:,2));
% Hitungan (4,2) = mean(data_in{1,4}(:,2));
% 
% %%Conflict
% Hitungan (1,3) = mean(data_in{1,1}(:,3));
% Hitungan (2,3) = mean(data_in{1,2}(:,3));
% Hitungan (3,3) = mean(data_in{1,3}(:,3));
% Hitungan (4,3) = mean(data_in{1,4}(:,3));
% 
% %%Conflict Potential
% Hitungan (1,4) = mean(data_in{1,1}(:,4));
% Hitungan (2,4) = mean(data_in{1,2}(:,4));
% Hitungan (3,4) = mean(data_in{1,3}(:,4));
% Hitungan (4,4) = mean(data_in{1,4}(:,4));
% 
% [rn,cn]=size(data_in{1,1});
% 
% %%Complexity Convergency
% Hitungan (1,5) = mean(data_in{1,1}(:,1))-mean(data_in{1,1}(rn-1,1));
% Hitungan (2,5) = mean(data_in{1,2}(:,1))-mean(data_in{1,2}(rn-1,1));
% Hitungan (3,5) = mean(data_in{1,3}(:,1))-mean(data_in{1,3}(rn-1,1));
% Hitungan (4,5) = mean(data_in{1,4}(:,1))-mean(data_in{1,4}(rn-1,1));
% 
% %%Workload Convergency
% Hitungan (1,6) = abs(mean(data_in{1,1}(:,2))- mean(data_in{1,1}(rn-1,2)));
% Hitungan (2,6) = abs(mean(data_in{1,2}(:,2))- mean(data_in{1,2}(rn-1,2)));
% Hitungan (3,6) = abs(mean(data_in{1,3}(:,2))- mean(data_in{1,3}(rn-1,2)));
% Hitungan (4,6) = abs(
% mean(data_in{1,4}(:,2))- mean(data_in{1,4}(rn-1,2)));
% 
% filename3 = sprintf('Hitungan_%s_%s_%s.xlsx',res,traj,typ);
% xlswrite(fullfile(dire,filename3),Hitungan)