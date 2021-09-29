# helper script to save the siggen output

for (( i = 0; i < 35; i++ )); do
  for (( j = 0; j < 52; j++ )); do
    X=`echo "$i*1" | bc -l`
    Z=`echo "$j*1" | bc -l`
    echo ./stester config_files/ppc-im.config "psig $X 0 $Z"
    ./stester config_files/ppc-im.config "psig $X 0 $Z" > signals/sig_${i}_0_${j}.txt
    ./stester config_files/ppc-im-e.config "psig $X 0 $Z" > signals-e/sig_${i}_0_${j}.txt
    ./stester config_files/ppc-im-h.config "psig $X 0 $Z" > signals-h/sig_${i}_0_${j}.txt
  done
done
