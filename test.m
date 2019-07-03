% 获取当前路径
filepath = pwd;
% 初始角度
Angle = 0;
% 图片序号
img_index = 1;

for i = 0:360/5
    LocationTranslation;
    % 保存图片
    saveas(gcf, [filepath, '\输出图像\', num2str(img_index), '.jpg']);
    img_index = img_index + 1;
end