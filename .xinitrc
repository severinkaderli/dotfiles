# Disable screen saver
xset s off
xset -dpms
xset s noblank

# Start ibus
ibus-daemon -d --xim

# Start i3
exec i3
