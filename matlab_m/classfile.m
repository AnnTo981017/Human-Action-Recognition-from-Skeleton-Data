%% move_img  
% Summary of example objective  
clear;clc;
% DST_PATH_t = [ 'D:\����\ntuRGB\mat_f\'];%Ŀ���ļ�Ŀ¼
for i= 21:22
SOURCE_PATH_t =[ 'D:\����\ntuRGB\mat_f\',num2str(i),'\'];%Դ�ļ�Ŀ¼  
DST_PATH_t1 = [ 'D:\����\ntuRGB\mat_f\',num2str(i),'\test'];%Ŀ���ļ�Ŀ¼  
DST_PATH_t2 = [ 'D:\����\ntuRGB\mat_f\',num2str(i),'\train'];%Ŀ���ļ�Ŀ¼  
dirOutput=dir(fullfile(SOURCE_PATH_t,'*.mat'));%������ڲ�ͬ���͵��ļ����á�*����ȡ���У������ȡ�ض������ļ���'.'�����ļ����ͣ������á�.jpg��
fileNames={dirOutput.name};
LengthFiles = length(fileNames)
for n = 1:LengthFiles
fileName=char(fileNames(n))
fileName(8)
if(fileName(8)=='1')
movefile([SOURCE_PATH_t,fileName],DST_PATH_t1);%%save to test
else
movefile([SOURCE_PATH_t,fileName],DST_PATH_t2);%%save to train
end
end
end
% for i=21:22
% 
% new_folder =[DST_PATH_t,num2str(i),'\train']; % new_folder ����Ҫ�������ļ��У��Ǿ���·��+�ļ�������
% mkdir(new_folder);  % mkdir()���������ļ���
% new_folder =[DST_PATH_t,num2str(i),'\test'];
% mkdir(new_folder);  % mkdir()���������ļ���
% if(fileName(18:20)==num2str(i,'%03d'))
% movefile(['C:\Users\aygsg\Downloads\nturgbd_skeletons\nturgb+d_skeletons\',fileName],new_folder); 
% end
% end

%
