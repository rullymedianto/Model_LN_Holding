function [Holdpoint,h_desire_new, urutan] = hold_to(all_rute, all_segmen,rute,segmen,holdpoint_old,holding_on_old,urutan_old, urutan_last)
%Fungsi untuk menentukan apakah perlu holding dan holding di holdpoint yang mana
% Input: - Jumlah pesawat yang terbang di rute tertentu (all_rute)
%        - Jumlah pesawat yang terbang di segmen tertentu (all_segmen)
%        - Pesawat terbang di rute apa (rute)
%        - Pesawat terbang di rute apa (segmen) 
%        - Holding point sebelumnya (holdpoint_old)
%        - Status holding sebelumnya (Holding_on_old)
%        - Urutan Holding terakhir (urutan_last) 

 sigma_13 = sum(all_rute == 1  & all_segmen == 3);
 sigma_14 = sum(all_rute == 1  & all_segmen == 4);
 sigma_22 = sum(all_rute == 2  & all_segmen == 2);
 sigma_23 =  sum(all_rute == 2  & all_segmen == 3);
 sigma_32 = sum(all_rute == 3  & all_segmen == 2);
 sigma_33 = sum(all_rute == 2  & all_segmen == 3);
 antrian1 = sum(urutan_old & all_rute ==1);
 antrian2 = sum(urutan_old & all_rute ==2);
 antrian3 = sum(urutan_old & all_rute ==3);
 
if holdpoint_old ~= 0  && holding_on_old == 0 %% masih holdpoint dan tidak sedang holding
    Holdpoint = holdpoint_old;
    urutan = urutan_old;
elseif holdpoint_old == 0  && holding_on_old ~= 0 %% sudah tidak dalam holdpoint dan sedang holding
    Holdpoint = 0;
    urutan = urutan_old;
else
    
if segmen == 2 && rute ==1 && urutan_old == 0
    
    if (sigma_13 + sigma_14 > 3) && (sigma_14 + sigma_23 + sigma_33 > 2)
        Holdpoint = 1; % Holdpoint di CARLI
        urutan = antrian1 +1;
    else
        Holdpoint = 0;
        urutan = 0;
    end
    
elseif segmen == 1 && rute == 2 
    if (sigma_22 + sigma_23 > 3) && (sigma_14 + sigma_23 + sigma_33 > 2)
        Holdpoint = 2; % Holdpoint di BUNIK
        urutan = antrian2 +1;
    else
        Holdpoint = 0;
        urutan = 0;
    end

elseif segmen == 1 && rute ==3
    if (sigma_32 + sigma_33 > 3) && (sigma_14 + sigma_23 + sigma_33 > 2)
        Holdpoint = 3; % Holdpoint di DENDY
        urutan = antrian3 +1;
    else
        Holdpoint =0;
        urutan = 0;
    end
else
    Holdpoint = 0;
    urutan = 0;
    
end

end

%Sim1{1,i+1}(14,j) = zspeed(Sim1{1,i+1}(4,j),Route{1,j}(Sim1{1,i+1}(1,j)+1,3),mpersec(Route{1,j}(Sim1{1,i+1}(1,j),5)));  %Vz

if holdpoint == 1 
    if urutan == 1
        h_desire_new = meter(14000);
    elseif urutan == 2
        h_desire_new = meter(15000);
    elseif urutan == 2
        h_desire_new = meter(16000);
    end
end   
    
if holdpoint == 2 
    if urutan == 1
        h_desire_new = meter(22000);
    elseif urutan == 2
        h_desire_new = meter(23000);
    elseif urutan == 3
        h_desire_new = meter(24000);
    elseif urutan == 4
        h_desire_new = meter(25000);
    elseif urutan == 5
        h_desire_new = meter(26000);
    elseif urutan == 6
        h_desire_new = meter(27000);
    elseif urutan == 7
        h_desire_new = meter(28000);
    end
end
    
if holdpoint == 3     
    if urutan == 1
        h_desire_new = meter(24000);
    elseif urutan == 2
        h_desire_new = meter(25000);
    elseif urutan == 3
        h_desire_new = meter(26000);
    elseif urutan == 4
        h_desire_new = meter(27000);
    elseif urutan == 5
        h_desire_new = meter(28000);
    elseif urutan == 6
        h_desire_new = meter(29000);
    end  
end
end



    

% decent to specified speed == check anrian
% masuk antrian
% 
% 
% Speed = fixed
% posisi = fixed
% ketinggian = fixed
% 


end

