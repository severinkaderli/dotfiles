# Disable screen saver
xset s off
xset -dpms
xset s noblank

setxkbmap -model pc105 -layout ch

# Start ibus
ibus-daemon -d --xim

# Load dconf
dconf load / < "$HOME/dotfiles/dconf/config"

# Start i3
exec i3
