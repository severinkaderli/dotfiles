# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

unset color_prompt force_color_prompt

# Enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

# Sourcing alias definitions
if [ -f $HOME/.aliases ]; then
    . $HOME/.aliases
fi

# Enable ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

# Setting default editor and terminal
export VISUAL=vim
export EDITOR="$VISUAL"
export TERMINAL=termite

# Enable autocompletion features
if [ -f /etc/bash_completion ]; then
	/etc/bash_completion
fi
complete -cf sudo

# Add users bin directory to the PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:/opt/Hyper:$PATH"
fi

# Set bash prompt
RCol='\033[0m'
Gre='\033[32m';
Red='\033[31m';
Blu='\033[34m';
Yel='\033[33m';
PS1="${RCol}┌─[\`if [ \$? = 0 ]; then echo "${Gre}"; else echo "${Red}"; fi\`\t\[${Rcol}\] \[${Blu}\]\h\[${RCol}\] \[${Yel}\]\w\[${RCol}\]]\n└─╼ "
