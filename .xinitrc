# Disable screen saver
xset s off
xset -dpms
xset s noblank

# Set keyboard layout
setxkbmap -model pc105 -layout ch

# Set ibus as input method
export GTK_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim

# Start ibus
ibus-daemon -drx

# Start i3
exec dbus-launch i3
