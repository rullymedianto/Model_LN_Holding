function [holding_on,holding_time] = holdingon(holding_on_old,holdpoint,holding_time_old, delta_holdpoint)
% Fungsi untuk menentukan waktu pesawat holding
% Input: - Status holding sebelumnya (holding_on_old)
%        - Holding point yang dipilih (holdpoint)
%        - Waktu holding sebelumnya (holding_time_old)
%        - Jarak ke holding point (delta_holdpoint)
% Output: - Status holding (holding_on)
%       : - Waktu holding (holding time)- 150 detik
%

if holding_on_old ~= 0 && holding_time_old < 150 % sedang holding
    holding_on = holding_on_old;
    holding_time = holding_time_old +1;
    
elseif holding_on_old ~= 0 && holding_time_old == 150 %selesai holding
    holding_on = 0;
    holding_time = 0 ;   
    
elseif holding_on_old == 0 && holdpoint ~=0 % menuju titik holding
    if delta_holdpoint < 100 %sampai di holding point
        holding_on = 1;
        holding_time = 1;
    else                     %belum sampai holding point
        holding_on = 0;
        holding_time = 0;
    end
    
end
end

