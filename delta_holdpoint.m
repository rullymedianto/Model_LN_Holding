function [delta_h] = delta_holdpoint(delta_x,delta_y, height,Desire_high)
%%Jarak ke Holding Point
%   Detailed explanation goes here
delta_h = sqrt(delta_x^2 + delta_y^2 + (Desire_high-height)^2);

end

