%% ������״
point = [
    -1, 0;...
    1, 0;...
    0, 3
];

%% ������״
point = [point; point(1,:)];
point1 = point;

plot(point(:,1), point(:,2), '-o', 'LineWidth', 2);
axis equal;
grid on;
% axis([...
%     min([point(:,1); point1(:,1); x0]) - 1,...
%     max([point(:,1); point1(:,1); x0]) + 1,...
%     min([point(:,2); point1(:,2); y0]) - 1,...
%     max([point(:,2); point1(:,2); y0]) + 1 
% ]);
hold on;

%% �任
x0 = 2; % ��ת��
y0 = 3;
viscircles([x0, y0], 0.1,'Color','b'); % ������ת��
% ��������
for i = 1:3
    line([point(i, 1), x0], [point(i, 2), y0], 'LineWidth', 1, 'LineStyle','--','Color','b');
end

Angle = Angle + 5; % ��ת�Ƕȵ���
teta = Angle*pi/180;% ת��Ϊ����
T = [
    cos(teta), -sin(teta);...
    sin(teta), cos(teta)
];
for i = 1:length(point)
    point1(i, :) = (T * (point(i, :)' - [x0; y0]) + [x0; y0])';
end

%% ������״
plot(point1(:,1), point1(:,2), '-o', 'LineWidth', 2);
axis equal;
grid on;
% axis([...
%     min([point(:,1); point1(:,1); x0]) - 1,...
%     max([point(:,1); point1(:,1); x0]) + 1,...
%     min([point(:,2); point1(:,2); y0]) - 1,...
%     max([point(:,2); point1(:,2); y0]) + 1 
% ]);
axis([-3 7 -2 7.5]);

% ��������
for i = 1:3
    line([point1(i, 1), x0], [point1(i, 2), y0], 'LineWidth', 1, 'LineStyle','--','Color','r');
end
hold off;

%% ��ע�Ƕ�
text(3, 6.5, ['Angle: ', num2str(Angle), '��'], 'FontSize', 20);
getframe;







