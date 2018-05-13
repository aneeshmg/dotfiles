# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/aneesh/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$HOME/bin:$HOME/bin/intellij-ide/bin:/usr/local/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias reload="cp ~/dotfiles/zshrc ~/.zshrc;source ~/.zshrc"
alias zrc='vi ~/dotfiles/zshrc'
alias cl='clear'
alias cls='clear;ls;pwd'
alias sl='ls'
alias LS='ls'
alias SL='ls'
alias lsdirs="ls -l | grep '^d'"
alias pgrep='ps aux | grep'                                       # Search for a process based on RegEx
alias lgrep='ls -l | grep'                                        # Search for a file after ls
alias hgrep='history | grep'                                      # Search in bash history
alias pa='ps aux'                                                 # List all processes
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias x='exit'
alias rr='rm -rf'

alias l='less'                                                    # Shortcut to Less
alias tlf='tail -f'                                               # Usefull file stuff
alias skim="(head -5; tail -5) <"
alias edit='vim'
alias vi='vim'
alias svi='sudo vim'


alias pingg='ping -c 5 google.com'                                # Network status tweaks
alias ping8='ping -c 5 8.8.8.8'
alias google='links google.com'
#alias ppp='ifconfig | grep --color 'RX.by.*\$''                   # Check BW usage
alias ports='netstat -tulanp'
alias showBlocked='sudo ipfw list'
alias myip='curl ip.appspot.com'

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

alias csay='cowsay'                                               # Misc
alias yget='youtube-dl --format=18'
alias today='grep -h -d skip `date +%m/%d` /usr/share/calendar/*' # Get todays date info
alias say="espeak"
alias cal="echo $((`date +"%m"` + 1)) `date +"%Y"` | xargs cal -3"


