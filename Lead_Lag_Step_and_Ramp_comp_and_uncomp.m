
% For the Step Response

s = tf('s'); % Laplace
G = 1 / s / (s + 4) / (s + 6); % Plant TF
%Gc = 96 * (s + 3.6) * (s + 0.04) / (s + 40.0104) / (s + 0.001);
Gc = 425.97*(s+2.749)/(s+11.50);
T_uncom = G / (1 + G);
T = Gc * G / (1 + Gc * G); % Overall TF
stepinfo(T)
time = 0:0.01:10; % Time scale
time2 = 0:0.01:10; % Time scale
[ct, time] = step(T, time);
[uct, time2] = step(T_uncom, time2);

figure

plot(time, ct, 'k--', 'LineWidth', 1.5);
hold on
plot(time, ones(1, length(time)), 'b--', 'LineWidth', 0.5);
plot(time2, uct, 'r--', 'LineWidth', 1.5);
h = legend('step response, c(t)', 'step input, r(t)', 'step response, uc(t)');
set(h, 'FontSize', 14);
grid on;
xlabel('time', 'FontSize', 12);
ylabel('r(t), c(t), uc(t)', 'FontSize', 12);


% % For the Ramp Response
% 
% s = tf('s'); % Laplace
% G = 10 / s / (s + 2) / (s + 8); % Plant TF
% Gc = 96 * (s + 3.6) * (s + 0.04) / (s + 40.0104) / (s + 0.001);
% T_uncom = G / (1 + G);
% T = Gc * G / (1 + Gc * G); % Overall TF
% time = 0:0.01:10; % Time scale
% time2 = 0:0.01:10; % Time scale
% [ct, time] = step(T/s, time);
% [uct, time2] = step(T_uncom/s, time2);
% 
% figure;
% plot(time, ct, 'k-', 'LineWidth', 1.5);
% hold on;
% plot(time, time, 'b--', 'LineWidth', 0.5);
% plot(time2, uct, 'r-', 'LineWidth', 0.5);
% h = legend('ramp response, c(t)', 'ramp input, r(t)', 'ramp response, uc(t)');
% set(h, 'FontSize', 14);
% grid on;
% xlabel('time', 'FontSize', 12);
% ylabel('r(t), c(t), uc(t)', 'FontSize', 12);

