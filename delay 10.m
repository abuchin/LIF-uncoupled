a=x10s_IFIN_10000n_40pA_sigma00x2C26mV_signal26pA_tau3ms(10000:99000)
for i=1:30, iffr=x10s_IF_10000n_40pA_sigma00x2C26mV_signal26pA_tau3ms(i+9999:99000+i-1); if_10s(i)=mutualinfo(iffr,a), end

a=x10s_LIFIN_10000n_150pA_sigma1mV_signal100pA_tau3ms(10000:99000)
for i=1:30, liffr=x10s_LIF_10000n_150pA_sigma1mV_signal100pA_tau3ms(i+9999:99000+i-1); lif_10s(i)=mutualinfo(liffr,a), end
