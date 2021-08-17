export ZSH="/home/fonta/.oh-my-zsh"

autoload -U colors && colors
#https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme
source ~/.config/zsh/eastwood.zsh

#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/syntax-highlighting
source ~/.config/zsh/syntax-highlighting/zsh-syntax-highlighting.zsh

#git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/autosuggestions
source ~/.config/zsh/autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export TERM=xterm-256color
#export PATH=$PATH:~/.flutter/bin:~/Android/Sdk/emulator:~/.npm-global/bin:~/.flutter/.pub-cache/bin

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Take advantage of $LS_COLORS for completion as well.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# enable diff color if possible.
if command diff --color . . &>/dev/null; then
  alias diff='diff --color'
fi

alias o='xdg-open'
alias py='python3'
alias ls='ls -lh --color=auto --hyperlink=yes'
alias lsa='ls -Alh --color=auto --hyperlink=yes'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gst='git status'
alias glog='git log'
alias gco='git checkout'
alias code='code-insiders'
alias v='nvim'
alias vim='nvim'
alias zshrc='nvim ~/.zshrc'
alias gbr='xdg-open $(git remote get-url origin | sed -e "s/git\@/https:\/\//;s/:/\//2") &>/dev/null'
alias bat='batcat --color=always --decorations=always --paging --tabs=2'
alias rmj='find . -name "*.class" -exec rm -f {} \;'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'


setopt auto_cd
setopt multios #??
setopt prompt_subst #??
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


#export MANPAGER="sh -c 'col -bx | batcat --color=always --decorations=always --pagine --tabs=2 -l man -p"

alias -g ...='../..'
alias -g ....='../../..'

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

#tmp
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
#tmp

function venv {
	[ -d ./venv ] || python3 -m venv venv
	source ./venv/bin/activate
}

function mckdir {
	mkdir -p $@ && cd ${@:$#}
}

function sticker {
	local original=$1
	local newName=${original%.*}.png
	convert $original $newName
	convert $newName -resize 512x512 $newName
}


# clipcopy - Copy data to clipboard
# Usage:
#  <command> | clipcopy    - copies stdin to clipboard
#  clipcopy <file>         - copies a file's contents to clipboard
#
# clippaste - writes clipboard's contents to stdout
function clipcopy() {
	xclip -in -selection clipboard < "${1:-/dev/stdin}"; 
}

function clippaste() {
	xclip -out -selection clipboard; 
}

# autosource venv on cd
#! `cd` gives exit status 1 cause $1 doesnt exist (?)
#function cd {
#	builtin cd $1
#	[ -d ./venv ] && source ./venv/bin/activate
#}
