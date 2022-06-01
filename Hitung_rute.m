
T=readtable('Coba_CGK.xlsx');
AA=table2array(T);

SS=unique(AA(:,1));
RR=unique(AA(:,2));

[mm1,nn1]= size(SS);
spane = mm1;

[mm2,nn2]= size(RR);
spane1 = mm2;

for i=1:spane
%  ori=cell(i,2);
    ori(i,1)=SS(i,1);
    jumlah(i,1)=sum(count(AA(:,1),SS(i,1)));
    
    end

for i=1:spane1

    tipe(i,1)=RR(i,1);
    jumlahA(i,1)=sum(count(AA(:,2),RR(i,1)));
    
end

jumlah1=num2cell(jumlah);
jumlah2=num2cell(jumlahA);

Hit_rute=[ori jumlah1];
Hit_tipe=[tipe jumlah2];

xlswrite('Hit_arrival_29Mei.xlsx',Hit_rute)
xlswrite('tipe_ariv_29Mei.xlsx',Hit_tipe)

