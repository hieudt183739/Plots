#/bash/shell/
folder='./set_image/'
images='./set_image/fig_0.png'
for i in {1..358}; do
	if [ $((i % 2)) -eq 0 ]; then 
		images=$images' '$folder'fig_'$i'.png'
	fi
done

convert -delay 10 $images animated_chart.gif
