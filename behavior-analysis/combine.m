function combine(InputFolder,Output_Folder,start_index,end_index,Head_position)
% 计算中心线
%
Calculate_Centerline(InputFolder,Output_Folder,start_index,end_index);
Get_Centerline(Output_Folder,Head_position);
end