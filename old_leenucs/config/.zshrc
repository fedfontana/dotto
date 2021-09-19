# Path to oh-my-zsh
export ZSH="/home/fonta/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

######################################################################################################TMP

# Aliases
alias v='nvim'
alias la='ls -AlH --color=auto --hyperlink=all'
alias vimrc='nvim $HOME/.vimrc'
#alias piconnect='ssh ubuntu 192.168.1.98'
alias vim='nvim'
alias zshrc='nvim $HOME/.zshrc'
alias gaa='git add .'
alias ga='git add'
#unalias gc
#unset gc
#per mettere alias gc giusto:
#	- vim $HOME/.oh-my-zsh/plugins/git/git.plugin.zsh
#alias gc='git commit -m'
alias gp='git push'
alias gst='git status'
alias code='code-insiders'
alias deemix='$HOME/deemix/startdeemix.sh'
alias o='xdg-open'
alias py='python3'
alias bat='batcat --color=always --decorations=always --paging --tabs=2'
alias clion='clion.sh'
alias idea='idea.sh'
alias matlab='/usr/local/MATLAB/R2020b/bin/matlab -softwareopengl'
alias gbrowser='xdg-open $(git remote get-url origin | sed -e "s/git\@/https:\/\//;s/:/\//2") &>/dev/null'
alias rmjava='find . -name "*.class" -exec rm -f {} \;'
alias todo='task'
alias anki='anki &>/dev/null & disown'
mckdir() {
	mkdir "$1"
	cd ./"$1"
}

ghrepo() {
	mkdir $1
	cd $1
	git init
	gh repo create $1 --private -y
	touch README.md .gitignore
	git add .
	git commit -m "first commit"
	git push -u origin master
}

#fare in modo che se il numero di robe passate alla funzione è 0 il virtualenv si chiami venv
virtualenv() {
	python3 -m virtualenv $1
}

venv() {
	python3 -m virtualenv $1
	source $1/bin/activate	
}

export PATH=$PATH:~/.flutter/bin:~/Android/Sdk/emulator:~/.npm-global/bin:~/.clion/bin:~/.intellijIdea/bin:~/.flutter/.pub-cache/bin

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	git
	colored-man-pages
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

HISTFILE=~/.zsh_history
#HISTSIZE=1000
#if((!EUID)); then
#	HISTFILE=~/.zsh_history_root
#else
#	HISTFILE=~/.zsh_history
#fi
#SAVEHIST=1000

# Set manpager
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
