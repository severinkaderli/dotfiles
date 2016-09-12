# If .bash_profile exists, bash doesn't read .profile
if [[ -f $HOME/.profile ]]; then
  . $HOME/.profile
fi

# If the shell is interactive and .bashrc exists, get the aliases and functions
if [[ $- == *i* && -f $HOME/.bashrc ]]; then
    . $HOME/.bashrc
fi

# If we are on tty1 we start the x-server
if [ "$(tty)" = "/dev/tty1" ]; then
    startx && exit
fi
