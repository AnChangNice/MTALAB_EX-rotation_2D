% ���������
clc;
% ��ȡ��ǰ·��
filepath = pwd;
% �趨ʱ����
delay_time = 0.1; % ��

for num=1:60
    im=imread([filepath, '\���ͼ��\', num2str(num), '.jpg']);
    [I, map]=rgb2ind(im, 20); % ��������ͼ
    if num == 1
        imwrite(I, map, [filepath, '\���ͼ��\GIF\ClockGIF.gif'],...
					 'gif', 'Loopcount',inf,...
					 'DelayTime', delay_time );
    else
       imwrite(I, map, [filepath, '\���ͼ��\GIF\ClockGIF.gif'],...
					'gif', 'WriteMode','append',...
					'DelayTime', delay_time);
    end
end

clear;
