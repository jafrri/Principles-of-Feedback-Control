


function zeta = ostozeta(overshoot)
    % Convert overshoot to damping ratio
    zeta = sqrt(log(overshoot/100)^2 / (pi^2 + log(overshoot/100)^2));
end
