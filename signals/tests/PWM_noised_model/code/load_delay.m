C = C(1, :);
C_ = C;
D = 0;

% Delay number
nds_i = 3;
nds_o = 0;

[Phi, Gamma, C, D] = delay_io(Phi, Gamma, C, D, nds_i, nds_o);

[n_Ctilde, ~] = size(Ctilde);

s_nds_i = sum(nds_i);
s_nds_o = sum(nds_o);

Ctilde = [Ctilde, zeros(n_Ctilde, s_nds_i)];

u_ns0 = zeros(s_nds_i + s_nds_o, 1);