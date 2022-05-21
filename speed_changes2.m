function [vx,vy] = speed_changes2(vz,vplus,vnol,heading,ROW)
%% Calculate Vy  
    

if ROW == 2 && vnol > (vplus - 5)
%     vnol = vnol;
% else
    vnol = vnol-1;


elseif ROW == 3 && vnol > (vplus - 10)
% %     vnol = vnol;
% % else
    vnol = vnol-1;
%     end
%     
elseif ROW == 4 && vnol > (vplus - 15)
% %     vnol = vnol;
% % else
vnol = vnol-1;

elseif ROW == 5 && vnol > (vplus - 20)
% %     vnol = vnol;
% % else
    vnol = vnol-1;
%     end
%     
elseif ROW == 6 && vnol > (vplus - 25)
% %     vnol = vnol;
% % else
vnol = vnol-1;

elseif ROW >6 && vnol > (vplus - 30)
% %     vnol = vnol;
% % else
vnol = vnol-1;
%     end
%      elseif vplus>vnol
%          if vnol==0
%              vnol = vplus;
%          else
%          vnol = vnol+0.5;
%          end
%      else
%          vnol = vnol-0.5;
% end
% else
%  if vplus<vnol
%      vnol = vnol;
% 
%      elseif vplus>vnol
%          if vnol==0
%              vnol = vplus;
%          else
%          vnol = vnol+1;
%          end
%      else
%          vnol = vnol;
% end
else
    vnol = vnol;

end

vy = sqrt(abs(vnol^2 - vz^2))*cosd(heading);
vx = sqrt(abs(vnol^2 - vz^2))*sind(heading);
end