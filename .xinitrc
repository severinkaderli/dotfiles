# Disable screen saver
xset s off
xset -dpms
xset s noblank

# Load dconf
cat "$HOME/dotfiles/dconf/config" | dconf load /

# Start ibus
ibus-daemon -d --xim

# Start i3
exec i3
