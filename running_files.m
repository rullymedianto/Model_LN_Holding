 %profile on 
tic
numb= 5;

% rekam = cell(numb,6);
compl1 = cell(numb,13);
compl2 = cell(numb,7);
compl3 = cell(numb,6);
compl4 = cell(numb,6);
compl5 = cell(numb,3);

tugas1 = cell(numb,9);
% conflicta_min =cell(numb,4);

n=0;
for ii=1:numb
    clearvars sched Sim1 
    
    schedules_ok
    Simulation_disert %Simulation
% for iii=1:10    
%     Vector_Complexity
%     No_conflict_plot% Calculate Complexity
   
%% Rekam Jadwal
% rekam{ii,1}= sa1;
% rekam{ii,2}= sa2;
% rekam{ii,3}= sa3;
% rekam{ii,4}= sa4;
% rekam{ii,5}= sa5;
% % rekam{ii,6}= sa6;
% rekam{ii,6}= sa7;

%% Lower Wast
    compl1{ii,1}= max_complexity;
    compl1{ii,2}= mean_complexity;
    compl1{ii,3}= max_aircraftinsector;%aircraftinsector1;
    compl1{ii,4}= mean_aircraftinsector;
    compl1{ii,5}= max_conflictinsector;%conflictinsector1;
    compl1{ii,6}= mean_conflictinsector;
    compl1{ii,7}= max_communication;%Communication
    compl1{ii,8}= mean_communication;
    compl1{ii,9}= timeElapsed_Simulation_schedule;
    compl1{ii,10}= max_potensi_conflictinsector;%potensi_conflictinsector1;
    compl1{ii,11}= mean_potensi_conflictinsector;
    
 %% Elapsed Time
    compl2{ii,1}= AA1;
    compl2{ii,2}= AA2;
    compl2{ii,3}= AA3;
    compl2{ii,4}= AA4;
    compl2{ii,5}= AA5;
    compl2{ii,6}= AA6;

    compl3{ii,1}= CL1;
    compl3{ii,2}= CL2;
    compl3{ii,3}= CL3;
    compl3{ii,4}= CL4;
    compl3{ii,5}= CL5;
  
    compl4{ii,1}= type_A320;
    compl4{ii,2}= type_B737;
    compl4{ii,3}= type_A330;
    compl4{ii,4}= type_B777;
    compl4{ii,5}= type_B787;
    
    compl5{ii,1}=correlat;
    compl5{ii,2}=mean_time/60;
    
tugas1{ii,1}= max_complexity; %Complexity
tugas1{ii,2}= AA1;% tingkat workload controller 
tugas1{ii,3}= max_conflictinsector; %Conflict di sector
tugas1{ii,4}= max_potensi_conflictinsector; %Potensi Conflict di sector
tugas1{ii,5}= max_aircraftinsector; %TAC controller capacity aac/sector
tugas1{ii,6}= sec_demand; %aircraft demand per jam
tugas1{ii,7}= mean_time; %waktu selama di sektor dalam menit
tugas1{ii,8}= conflict_prop1; %conflict proportion by time


% conflicta_min{ii,1}= minim_con; 
% conflicta_min{ii,2}= maksi_con; 
% conflicta_min{ii,3}= mean_con; 

% compl_total=[tugas1 conflicta_min compl1 compl2 compl3 compl4 compl5];
compl_total=[tugas1 compl1 compl2 compl3 compl4 compl5];


% TT=[tugas1 conflicta_min];

 TT=tugas1;

%save('Complexity_Total.mat','compl_total','-v7.3')
% writecell(compl_total,'cari_001_30C.xls')
% writecell(TT,'Tugas_cari_001_30C.xls')


% end   
% end
n=n+1;
disp(n)
end
% T = cell2table(compl_total);
% writetable(T,'3600-00-00-100-3ab.csv')
% [m1,n1]= size(TT);
T = cell2table(compl_total);
writetable(T,'Kom_CekComp_1S_1ATraj_100Med_180dtk_a100-mindesclimb_f.csv')

TS = cell2table(TT,'VariableNames',{'Complexity' 'Workload' 'Conflict' 'Potential_Conflict' 'WL_Capacity' 'Capacity_per_hour' 'Time_in_Sector' 'Conflict_proportion' 'space'});
writetable(TS,'CekComp_1S_1ATraj_100Med_180dtk_a100-mindescclimb_f.csv')

writematrix(complex,'Complex_1S_1a_ATraj_100Med_180dtk_a100-mindesclimb_f.csv')
% CONFL = cell2table(conflicta_min);
% writetable(CONFL,'Conflict_Cari8jajar_001_1_40_ppppov.csv')
% for iv = 1:m1
%     if 6.5 < TT(m1,2)< 7,5
%        masuk(m1,:)= TT(m1,:);
%        

% time_running = toc;
% time_running = time_running/60;
%profsave