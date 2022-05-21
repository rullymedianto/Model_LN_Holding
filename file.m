name='abc';
a_value = 0.90;
b_values = [20 10 -5 60];
c_value = 4;
output_file = ['output_file_' name '_value' num2str(a_value,'%.2f') '_' strrep(num2str(b_values(:)'), '  ', '_') '_s' num2str(c_value) '.txt'];