# Disable screen saver
xset s off
xset -dpms
xset s noblank

setxkbmap -model pc105 -layout ch

# Set ibus as input method
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Start ibus
ibus-daemon -drx

# Start i3
exec dbus-launch i3
