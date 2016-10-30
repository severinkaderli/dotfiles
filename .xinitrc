# Disable screen saver
xset s off
xset -dpms
xset s noblank

# Start ibus
ibus-daemon -d --xim

# Load dconf
dconf load / < "$HOME/dotfiles/dconf/config"

# Start i3
exec i3
