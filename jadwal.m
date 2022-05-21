function[sa]=jadwal(time,IAT)
% N = randi([1 2]);
%sa = zeros(1,N);
% N=randi([1 2]);
N=50;
k=randi([1 2]);    

for iii=1:N
    if iii ==1
        sa(1,1)=k;
    else
    k=k+IAT;
    sa(1,iii)=k;
    if k>time
        return
    end
    end
    
end
end

