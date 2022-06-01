function [holding_code] = hold_code(segmen,rute,tinggi)
%Menentukan holding code
%   INPUT: - Rute pesawat (rute)
%          - Segmen yang dijalani (segmen)
%   Output: - Holding code (1,2 atau 3) bila nol maka tidak masuk dalam
%   segmen untuk holding

if segmen == 2 && rute ==1 && tinggi<12000
   holding_code = 1;
   
elseif segmen == 2 && rute == 2 && tinggi<12000
    holding_code = 2;
    
elseif segmen == 2 && rute ==3 && tinggi<12000
    holding_code = 3;
else
    holding_code = 0;
    
end
end

