% ��ȡ��ǰ·��
filepath = pwd;
% ��ʼ�Ƕ�
Angle = 0;
% ͼƬ���
img_index = 1;

for i = 0:360/5
    LocationTranslation;
    % ����ͼƬ
    saveas(gcf, [filepath, '\���ͼ��\', num2str(img_index), '.jpg']);
    img_index = img_index + 1;
end