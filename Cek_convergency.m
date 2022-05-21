tugas3=xlsread('Kom_cek2.xlsx','A1:A100');

maxIter = 100;
mean_awal=0;

i=1;
while i <= maxIter

mean_akhir = mean(tugas3([1:i],1));
dcov = mean_akhir - mean_awal ;
mean_awal = mean_akhir;

if abs(dcov)<=0.0001
    break
end
i=i+1;
disp(i)


end