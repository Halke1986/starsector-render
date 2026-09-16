cat prof.txt | grep "frame =" > plots/frame.txt
cat prof.txt | grep "sim__ =" > plots/sim.txt
cat prof.txt | grep "stall =" > plots/stall.txt
cat prof.txt | grep "rendr =" > plots/rendr.txt
cat prof.txt | grep "swap_ =" > plots/swap.txt
cat prof.txt | grep "sync_ =" > plots/sync.txt
cat prof.txt | grep "nswap =" > plots/nswap.txt
cat prof.txt | grep "lazy_ =" > plots/lazy.txt

sed -i 's/frame =//g' plots/frame.txt
sed -i 's/sim__ =//g' plots/sim.txt
sed -i 's/stall =//g' plots/stall.txt
sed -i 's/rendr =//g' plots/rendr.txt
sed -i 's/swap_ =//g' plots/swap.txt
sed -i 's/sync_ =//g' plots/sync.txt
sed -i 's/nswap =//g' plots/nswap.txt
sed -i 's/lazy_ =//g' plots/lazy.txt

#cp plots/frame.txt /c/plots
#cp plots/sim.txt /c/plots
#cp plots/stall.txt /c/plots
#cp plots/rendr.txt /c/plots
#cp plots/swap.txt /c/plots
#cp plots/sync.txt /c/plots