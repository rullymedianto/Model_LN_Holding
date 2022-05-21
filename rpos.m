function [rpx,rpy, rpz, rsp, rvs] = rpos(pos_acc, alt_acc, spd_acc, vsp_acc)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

pmk = pos_acc^2;
pml = pmk*rand; %delta error^2

pmm = pml-(rand()*pml);%delta x error^2
pmn = pml-pmm; %delta y error^2

rpx = sqrt(pmm);%delta x error
rpy = sqrt(pmn);%delta y error

rpz = alt_acc*rand();%delta z error in meter
rsp = spd_acc*rand();%sped error in knot
rvs = vsp_acc*rand();%vertical speed in feet perminutes

% tes = sqrt(rpx^2 + rpy^2);

% if tes == sqrt(pml)
%     cek = 1;
% end
    
end


