%% 2020741030 박기정
clc, clear;
close all;

s = tf('s');

%Define Controller and Plant
G = 0.03 / (0.001*s^2 + 1.00003*s + 0.0309);
D = 1 + 0.1/s;

%Draw Root Locus, 1+KL(s)=0
rlocus(series(G, D));

Ks = [4, 15, 50, 70, 300, 1000];

collect_info(Ks, D, G);

function collect_info(Ks, Ds_, sysG_)
    arr = [];

    for i = 1:1:length(Ks)

        Ds = Ds_ * Ks(i);
        DGs = series(sysG_, Ds);
        Hs = DGs / (1 + DGs);

        get_info(Ks(i), Hs);
    end

end

function [rise_time, settling_time, overshoot] = get_info(K, Hs)
    info = stepinfo(Hs);
    [y, t] = step(Hs);
    steady_state_value = y(end);
    
    rise_time = info.RiseTime;
    settling_time = info.SettlingTime;
    overshoot = info.Overshoot;
    steady_state_error = abs((1 - steady_state_value) / 1) * 100;
    
    disp(['K: ' num2str(K)]);
    disp(['Rise Time: ', num2str(rise_time), ' seconds']);
    disp(['Settling Time: ', num2str(settling_time), ' seconds']);
    disp(['Overshoot: ', num2str(overshoot), ' %']);
    disp(['Error: ', num2str(steady_state_error), ' %']);
    disp(' ');
end