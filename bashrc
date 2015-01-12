###############################################################
#################
##    (c) 2014       Aneesh MG
#################
###############################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-completion.bash
# Get the file: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

# Aliases

alias cl='clear;pwd;ls;'                                          # Clears terminal
alias brc='vi $HOME/.bashrc'                                      # Edit this file
alias sbrc='source $HOME/.bashrc'                                 # Source this file to bash

alias ll='ls -l'                                                  # Usefull ls tweaks
alias LL='ls -l'
alias la='ls -a'
alias sl='ls'
alias LS='ls'
alias SL='ls'

alias pgrep='ps aux | grep'                                       # Search for a process based on RegEx
alias lgrep='ls -l | grep'                                        # Search for a file after ls
alias hgrep='history | grep'                                      # Search in bash history
alias pa='ps aux'                                                 # List all processes

alias ..='cd ..'                                                  # Usefull cd tweaks
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias rr='rm -rf'

alias l='less'                                                    # Shortcut to Less
alias tlf='tail -f'                                               # Usefull file stuff
alias skim="(head -5; tail -5) <"
alias edit='vim'
alias vi='vim'
alias svi='sudo vim'

alias jc='javac -g'                                               # Usefull compiling tweaks
alias j='java'
alias cpp='g++'
alias cc='gcc'
alias php='php -f'
alias py='python -f'
alias pl='perl -f'

alias pingg='ping -c 5 google.com'                                # Network status tweaks
alias google='links google.com'
alias ppp='ifconfig | grep --color 'RX.by.*\$''                   # Check BW usage
alias ports='netstat -tulanp'
alias showBlocked='sudo ipfw list'
alias myip='curl ip.appspot.com'

alias erlog='tail -f /var/log/apache2/error.log'                  # Apache logs
alias arlog='tail -f /var/log/apache2/access.log'

alias lbash='source ~/.bashrc'
alias serve='python -m SimpleHTTPServer'

alias shutdown='sudo shutdown -h now'                             # System related stuff
alias reboot='sudo reboot'
alias powerof='sudo shutdown -h now'
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias cpuinfo='less /proc/cpuinfo'
alias cpu='lscpu'
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'


alias conpi='ssh pi@192.168.0.104'                                # RPi Stuff
alias piftp='sftp pi@192.168.0.104'
alias vncpi='xvncviewer 192.168.0.104:0'

alias push='git push origin master -u'                            # Git Stuff

alias csay='cowsay'                                               # Misc
alias yget='youtube-dl --format=18'
alias today='grep -h -d skip `date +%m/%d` /usr/share/calendar/*' # Get todays date info
alias say="espeak"

alias webdev='cd /var/www/html'
alias newword='shuf -n 1 gre.txt | cowsay'


###### greeting
hour=$(date +"%H")
# # if it is midnight to midafternoon will say G'morning
if [ $hour -ge 0 -a $hour -lt 12 ]
then
   greet="Good Morning, $USER. Welcome back."
# # if it is midafternoon to evening ( before 6 pm) will say G'noon
elif [ $hour -ge 12 -a $hour -lt 18 ]
then
   greet="Good Afternoon, $USER. Welcome back."
else # it is good evening till midnight
   greet="Good Evening, $USER. Welcome back."
fi
# # display greeting
echo $greet

# Print out a new word meaning
# everytime I open terminal
shuf -n 1 ~/gre.txt | cowsay

## Spell Check function
# Type `sp someword` to spellcheck it
sp () {
    if [ "$(which ispell)" != "" ]; then
        echo "$*" | ispell -a
    elif [ "$(which aspell)" != "" ]; then
        echo "$*" | aspell -a
    else
        echo "Could not find ispell or aspell, so install it"
    fi
}

# Environment variables setup

PATH=$PATH:$HOME/Developement/android-sdk-linux/tools
PATH=$PATH:$HOME/Developement/android-sdk-linux/platform-tools

export HISTCONTROL=ignoreboth

# Ignore `ls`.
export HISTIGNORE="ls"

# append history instead of overwrite
shopt -s histappend
#PROMPT_COMMAND="$PROMPT_COMMAND ; history -a"

# give us lots of history
export HISTSIZE=10000
export HISTFILESIZE=1000000

# set the timeformat when printing history. also tells bash to keep track of
# timestamps when it's writing to history
export HISTTIMEFORMAT="%Y:%m:%d %H:%M:%S  "
export PATH
