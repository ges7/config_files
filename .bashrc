# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

source /home/gabriel/.git-completion.bash

# path modification
PATH=$PATH:/home/gabriel/bin:/home/gabriel/bin/ssh_scripts/:/sbin

# Vi mode
set -o vi

# prevent overwriting with >
set noclobber

# disable 'v' to launch vim in normal mode
bind -m vi-command -r 'v'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
    #test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
#fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

LANG='en_US.utf8'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
alias k='kill -9'
alias l='ls -CF'
alias ls='ls -CF --color=auto'
alias grep='grep --color=auto'
alias vimr='vim --remote'
alias vimrt='vim --remote-tab'
alias j='jobs -l'
alias f='fg'

# git aliases
alias gs="git status"
alias gl="git log"
alias gb="git branch -vv"
alias gd="git diff"

parse_git_branch() {
    #git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    #rewrote the above regex 'in one'
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}

get_time() {
    date | sed -n -e 's/.* \([0-9]*:[0-9]*\).*/\1/p'
}


#'\e[x;ym $PS1 \e[m'
#\e[ : Start color scheme.
#x;y : Color pair to use (x;y)
#\e[m : Stop color scheme.
#Black	0;30
#Blue	0;34
#Green	0;32
#Cyan	0;36
#Red	0;31
#Purple	0;35
#Yellow	0;33
#Blue	0;34
#Green	0;32
#Cyan	0;36
#Red	0;31
#Purple	0;35
#Brown	0;33
# 0 = dark color, 1 = light color

color='\e[32m\]'
char='$'

if [ $(id -u) == 0 ]; 
then
    color='\e[31m\]'
    char='#'
fi

PS1="\[$color\u \w\
 \e[0;36m\j\e[m\
 \e[0;31m\$?\e[m\
 \e[0;35m\$(get_time)\e[m\
 \e[0;33m\$(parse_git_branch)\e[m\
\n$char "


# set title of urxvt window
echo -ne "\e]0;${USER}@${HOSTNAME}\007"

#function screen() {
#    command script -q -c "/usr/bin/screen ${*}" /dev/null
#}

function sls() {
   screen -ls   
}

function sx() {
    screen -x ${*}
}

#function sls() {
#    command screen -ls
#}

#function sx() {
#    command screen -x ${*}
#}

function k() {
    command kill -9 ${*}
}

function jl() {
    command jobs -l
}

# make python repl read this file at startup 
export PYTHONSTARTUP=/home/gabriel/.pythonrc

