# .bashrc


# Use bash like Vim
set -o vi

# prevent > redirections from overwriting existing files
set -o noclobber

# disable 'v' to launch vim in normal mode
bind -m vi-command -r 'v'

# add java to path
PATH=$PATH:/usr/java/jre1.7.0_05/bin
export PATH

# add my bin path to path
PATH=$PATH:/home/gabriel/bin:/usr/local/bin
export PATH

# changes to the PythonPath
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

# changes to the pkg-config path
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"

# aliases
alias ls="ls --color=always"
alias la="ls -a --color=always"
alias l="ls -l --color=always"
alias lal="ls -la --color=always"

# git aliases
alias gs="git status"
alias gl="git log"
alias gb="git branch -vv"
alias gr="git remote -vv"

alias xlog="less .local/share/xorg/Xorg.0.log"

# disable touchpad quickly
alias touchoff="synclient TouchPadOff=1"
alias touchon="synclient TouchPadOff=0"

# java env
PATH=/home/gabriel/Desktop/jre1.7.0_71/bin:$PATH
PATH=/home/gabriel/Desktop/jdk1.7.0_71/bin:$PATH
JAVA_HOME=/home/gabriel/Desktop/jdk1.7.0_71
CLASSPATH=/home/gabriel/Desktop/jdk1.7.0_71

# android SDK tools command line stuff paths
PATH=/home/gabriel/Desktop/android-sdk-linux/platform-tools:$PATH
PATH=/home/gabriel/Desktop/android-sdk-linux/tools:$PATH
PATH=/home/gabriel/Desktop/android-sdk-linux/build-tools/21.1.0:$PATH

# ANT
PATH=/home/gabriel/Desktop/apache-ant-1.9.4/bin:$PATH

# ODOO
PATH=/home/gabriel/Desktop/py/odoo:$PATH

LANG="en_US.utf8"
export LANG

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

if [[ $UID -ne 0 ]]; then
    color='\[\e[0;32m\]'
    prompt='$'
else
    color='\[\e[0;31m\]'
    prompt='#'
fi

#  prompt
#PS1="\[\e[0;32m\] \u at \h \w \[\e[0m\]\
PS1="$color\u at \h \w \[\e[0m\]\
\[\e[0;36m\]\j \[\e[0m\]\
\[\e[0;31m\]\$? \[\e[0m\]\
\n$prompt "

function k() {
    command kill -9 ${*}
}

function jl() {
    command jobs -l
}

