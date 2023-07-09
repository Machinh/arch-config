
#!/bin/bash

sudo pacman -Syu --noconfirm
setxkbmap -model abnt2 -layout br
sudo pacman -S --noconfirm i3-gaps i3status i3lock dmenu feh

sudo pacman -S --noconfirm xorg xorg-xinit xorg-server

sudo pacman -S --noconfirm picom rofi rxvt-unicode thunar lxappearance-gtk3

sudo pacman -S --noconfirm polybar

mkdir -p ~/.config/polybar
cp /usr/share/doc/polybar/config ~/.config/polybar/
nano ~/.config/polybar/config

mv LAIN.jpg ~/.LAIN.jpg

feh --bg-fill ~/.LAIN.jpg

sudo pacman -S --noconfirm gnome-terminal nmap nano

echo "exec i3" > ~/.xinitrc

echo "xrandr --dpi 96" > ~/.xprofile

echo 'exec_always --no-startup-id polybar --reload bar/top' >> ~/.config/i3/config

sudo systemctl enable --now gdm.service

sudo systemctl reboot
