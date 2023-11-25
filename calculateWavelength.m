
% This function calculates the Wavelength based on dispersion relationship
% L = (g * T^2 / (2 * pi)) * tanh(2 * pi * h / L)
% To use this function just type calculateWavelength(h,T) in command window
% or just use it as regular function where h= water depth, T=Time Period.
% This code solves dispersion realtionship based on Newton's Raphson Method.
% Written by Sandesh Lamsal

function L = calculateWavelength(h, T)
    % Define the constants
    g = 32.174; % acceleration due to gravity in m/s^2

    % Calculate T from the time period
    T_val = T;

    % Initialize the value of L
    L0 = T_val^2 / g;

    % Define the tolerance for the iteration
    tolerance = 1e-6;

    % Iterate until the tolerance is met
    while (1)
        L = (g * T_val^2 / (2 * pi)) * tanh(2 * pi * h / L0);

        if (abs(L - L0) < tolerance)
            break;
        end

        L0 = L;
    end
end
