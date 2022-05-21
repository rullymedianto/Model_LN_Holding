function[sa]=jadwal1(time)
% N = randi([1 2]);
%sa = zeros(1,N);
% N=randi([1 2]);
N=100;
k=randi([0 30]);    

for iii=1:N
    k=k+(30*(randi([3 9])));
    sa(1,iii)=k;
    if k>time
        return
    end
    
end
end

