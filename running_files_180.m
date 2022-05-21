 %profile on 
tic
% numb= 50;

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
    time = 3600;
    IAT = 180;
    
    sa1=jadwal(time,IAT);
    sa2=jadwal(time,IAT);
    sa3=jadwal(time,IAT);
    
    
    
    schedules_ok
    Simulation_disert %Simulation

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

compl_total=[tugas1 compl1 compl2 compl3 compl4 compl5];

 TT=tugas1;

n=n+1;
disp(n)
end

T = cell2table(compl_total);
writetable(T,'Kom_CekComp_1S_1ATraj_100Med_180dtk_a.csv')

TS = cell2table(TT,'VariableNames',{'Complexity' 'Workload' 'Conflict' 'Potential_Conflict' 'WL_Capacity' 'Capacity_per_hour' 'Time_in_Sector' 'Conflict_proportion' 'space'});
writetable(TS,'CekComp_1S_1ATraj_100Med_180dtk_a.csv')

writematrix(complex,'Complex_1S_1ATraj_100Med_180dtk_a.csv')

