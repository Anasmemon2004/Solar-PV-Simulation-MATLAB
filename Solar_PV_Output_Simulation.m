
% Solar PV System Power Output Simulation with Variable Irradiance
% Author: Anas Aamir Memon
% Description: This script simulates solar irradiance and calculates power output from a solar PV system over the day.
clc;
clear;
panel_area = 1.5; % in square meters
efficiency = 0.18; % 18% panel efficiency
hours = 6:18; % Hours in the day % Time from 6 AM to 6 PM
irradiance = 1000 .* exp(-((hours - 12).^2) / 10); % Simulated irradiance values (W/m^2) - peaking at noon
power_output = irradiance * panel_area * efficiency;% Power output calculation: P = Irradiance * Area * Efficiency
% Plotting Irradiance vs Time
figure;
subplot(1,2,1);
plot(hours, irradiance, 'o-r', 'LineWidth', 2);
title('Solar Irradiance vs Time');
xlabel('Time (Hour)');
ylabel('Irradiance (W/m^2)');
grid on;
% Plotting Power Output vs Time
subplot(1,2,2);
plot(hours, power_output, 'o-g', 'LineWidth', 2);
title('Power Output vs Time');
xlabel('Time (Hour)');
ylabel('Power Output (W)');
grid on;