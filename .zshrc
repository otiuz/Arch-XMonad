# Path to your oh-my-zsh installation.
  export ZSH=/home/otiuz/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/scripts:$HOME/scripts/spotify"
# export MANPATH="/usr/local/man:$MANPATH"

xset s off -dpms

if [[ ! -f $HOME/.vimrc  ]]; then
    export VIMRC='~/.vim/.vimrc'
fi

if [[ -f $HOME/.zshrc  ]]; then
    export ZSHRC='~/.zshrc'
fi

source $ZSH/oh-my-zsh.sh

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nano'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#if [ ! -f $HOME/scripts/arch/packages.sh ]
#    sh $HOME/scripts/arch/packages.sh
#fi

# Wine
alias winepoe="WINEPREFIX=$HOME/.wine-poe wine"
# System
alias update="sudo pacman -Syyu"
# List
alias tree="tree -L 1"
alias treed="tree -D -L 1"

alias ls="ls --classify --tabsize=0 --literal --color=auto --human-readable"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
# Disks
alias df="df -h"
alias free="free -h"
# Network
alias nlisten="lsof -i -P | grep LISTEN"
# Logs
alias termlog="tail -f --lines=100 $HOME/.zsh_history"
alias paclog="tail -f --ilines=10000000000000000000000000000 $HOME/.zsh_history | grep pacman"
# Git
alias gupd="git push origin master"
alias gimmit="git commit"
alias gim="git commit -m"
alias gadd="git add ."
alias gatus="git status"
# Tmux
alias tmuxs="tmux source ~/.tmux.conf"
alias tmessn="tmux new-session -s"
alias tmatt="tmux a -t"
alias tmill="tmux kill-session -t"
# Vim
alias vim="vim -u $HOME/.vim/.vimrc"
alias vimplug="vim $HOME/.vim/.vimrc.plugins"
alias vimrc="vim $VIMRC"
alias vimsh="vim $HOME/.zshrc"
alias tvim="vim ~/.tmux.conf"
alias vimp="vim -p"
alias xmvim="vim $HOME/.xmonad/xmonad.hs"
alias grvim="vim /boot/grub/grub.cfg"
