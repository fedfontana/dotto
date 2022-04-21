#!/bin/sh

#TODO band aid fix, move it somewhere else
autoload -Uz compinit
compinit

#https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme
#source ~/.config/zsh/eastwood.zsh
export ZSHCONFIGDIR=$HOME/.config/zsh

# Take advantage of $LS_COLORS for completion as well.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# some useful options (man zshoptions)
setopt auto_cd
setopt multios #??
setopt prompt_subst #??
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

#da oh-my-zsh
# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space

# dal tizio
setopt extendedglob nomatch
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

#da ohmyzsh --- roba completion
unsetopt menu_complete # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end

# beeping is annoying
unsetopt BEEP

# completions
#autoload -Uz compinit #err qui

zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zstyle ':completion:*' special-dirs true # complete . and .. special dirs
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZSHCONFIGDIR/zsh-functions"

# Normal files to source

zsh_add_file "zsh-exports"
#zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-keys"

#zsh_add_file "zsh-spaceship-config"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "hlissner/zsh-autopair"

#zsh_add_plugin "unixorn/fzf-zsh-plugin"
#zsh_add_plugin "spaceship-prompt/spaceship-prompt"
#source "$ZSHCONFIGDIR/plugins/spaceship-prompt/spaceship.zsh"

#zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# Key-bindings
#bindkey -s '^o' 'ranger^M'
#bindkey -s '^f' 'zi^M'
#bindkey -s '^s' 'ncdu^M'
# bindkey -s '^n' 'nvim $(fzf)^M'
# bindkey -s '^v' 'nvim\n'
#bindkey -s '^z' 'zi^M'
#bindkey '^[[P' delete-char
#bindkey "^p" up-line-or-beginning-search # Up
#bindkey "^n" down-line-or-beginning-search # Down
#bindkey "^k" up-line-or-beginning-search # Up
#bindkey "^j" down-line-or-beginning-search # Down
#bindkey -r "^u"
#bindkey -r "^d"

# FZF 
#[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

#compinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
