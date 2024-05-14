setxkbmap fr
killall scron
scron -f ~/.config/crontab
$HOME/.config/scripts/randwp
sxhkd&
picom&
dwmblocks&
redshift&
exec dwm
