
% First, get the name of the folder you're using.
% For example if your folder is 'D:\photos\Info', parentFolder  would = 'D:\photos, and deepestFolder would = 'Info'.
[parentFolder deepestFolder] = fileparts('D:\Hasil_Februari\Speed_Dev');
% Next, create a name for a subfolder within that.
% For example 'D:\photos\Info\DATA-Info'
newSubFolder = sprintf('%s/DATA-%s', 'D:\Hasil_Februari\Speed_Dev', deepestFolder);
% Finally, create the folder if it doesn't exist already.
if ~exist(newSubFolder, 'dir')
  mkdir(newSubFolder);
end

% d = 'D:\Hasil_Februari\Speed_Dev';
% Data= [3 4 5 6 8];
% i="a";
% b=4;
% 
%     filename = sprintf('testdata_%s_%d.xlsx',i,b);
%     writetable(Data,fullfile(d,filename))
