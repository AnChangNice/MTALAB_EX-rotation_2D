% 清除命令行
clc;
% 获取当前路径
filepath = pwd;
% 设定时间间隔
delay_time = 0.1; % 秒

for num=1:60
    im=imread([filepath, '\输出图像\', num2str(num), '.jpg']);
    [I, map]=rgb2ind(im, 20); % 制作索引图
    if num == 1
        imwrite(I, map, [filepath, '\输出图像\GIF\ClockGIF.gif'],...
					 'gif', 'Loopcount',inf,...
					 'DelayTime', delay_time );
    else
       imwrite(I, map, [filepath, '\输出图像\GIF\ClockGIF.gif'],...
					'gif', 'WriteMode','append',...
					'DelayTime', delay_time);
    end
end

clear;
