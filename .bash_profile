if [ "$(tty)" = "/dev/tty1" ]; then
    startx && exit
fi

source $HOME/.bashrc
