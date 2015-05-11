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
alias lsdirs="ls -l | grep '^d'"

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
alias suspend="systemctl suspend"
alias hibernate="systemctl hibernate"
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias cpuinfo='less /proc/cpuinfo'
alias cpu='lscpu'
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

alias lullaby='bash ~/.myscripts/goodnight.sh'


alias conpi='ssh pi@192.168.0.104'                                # RPi Stuff
alias piftp='sftp pi@192.168.0.104'
alias vncpi='xvncviewer 192.168.0.104:0'

alias push='git push origin master -u'                            # Git Stuff

alias csay='cowsay'                                               # Misc
alias yget='youtube-dl --format=18'
alias today='grep -h -d skip `date +%m/%d` /usr/share/calendar/*' # Get todays date info
alias say="espeak"

alias webdev='cd /var/www/html'
alias dotfiles='cd ~/Developement/dotfiles'
alias newword='shuf -n 1 gre.txt | cowsay'
alias cal="echo $((`date +"%m"` + 1)) `date +"%Y"` | xargs cal -3"


# Shell Builtin Settings
shopt -s autocd                  # No need to type cd anymore
shopt -s cdspell                 # Fix simple typos when cd'ing
shopt -s checkwinsize            # Check window size and adjust accordingly
shopt -s cmdhist                 # Save multiline commands in a single line
shopt -s histappend              # Append to HISTFILE instead of overwriting it
shopt -s dotglob                 # Include filenames beginning with '.' during expansion
shopt -s expand_aliases          # Expand aliases too
shopt -s nocaseglob              # Case insensitive pattern matching
shopt -s extglob                 # Extended pathname completion rules
shopt -s checkjobs               # Check if there are running jobs and refuse to exit
shopt -s dirspell                # Fix simple typos in directory name expansion
shopt -s no_empty_cmd_completion # Don't perform completions on empty lines
shopt -u force_fignore           # We want to files in FIGNORE to appear uf they are only
                                 # possible completions

# Set Readline Settings
set show-all-if-ambiguous on
set completion-ignore-case on
set show-all-if-unmodified on
set skip-completed-text on


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

## Extract files automatically
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
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

# terminal UI hack
#export PS1='\[\e[36;1m\]\u\[\e[01;30m\]@\[\e[32;1m\]\h:\[\e[01;35m\]\w \$ \[\e[0m\]' #some color change
export PS1="\[$(tput sgr0)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]\033[38;5;15m\033[38;5;6m\W\[$(tputsgr0)\]\033[38;5;15m\033[38;5;15m \[$(tput sgr0)\]"

export PATH
