%%
load('after_cut.mat')
after_cut = squeeze(ans.data);

%%
load('tx_sig.mat')
tx_sig = squeeze(ans.data);


%%

[N1, N2] = size(after_cut);
flat = zeros(N1 * N2, 1);
for i = 1:N2
    flat(1+(i-1)*N1:i*N1) = after_cut(:, i);
end

idx = 48375;

figure(5)
plot(real(tx_sig(1:numel(flat(idx:end)))) - real(flat(idx:end)))

figure(6)
plot(imag(tx_sig(1:numel(flat(idx:end)))) - imag(flat(idx:end)))



