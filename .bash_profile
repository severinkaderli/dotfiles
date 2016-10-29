# We just source .bashrc so we don't need to manage two files.
if [[ -f $HOME/.bashrc ]]; then
    . $HOME/.bashrc
fi

# Activate correct crontab file
crontab -u severin $HOME/.crontab

# If we are on tty1 we start the x-server
if [ "$(tty)" = "/dev/tty1" ]; then
    startx && exit
fi
