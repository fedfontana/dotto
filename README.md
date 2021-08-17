# My dotfiles

[original zsh configuration](https://github.com/ChristianChiarulli/Machfiles)
[original zsh prompt](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme)

## Create a bare repository

Se non ci sono questi config in zshrc e gitconfig
```sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME
```

Create the repository, add, commit and push changes
```sh
git init --bare $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles add .zshrc
dotfiles commit -m "added zshrc"
dotfiles push -u origin master
```

Clone the bare repository
```sh
git clone --bare https://github.com/fedfontana/dotto.git $HOME/.dotfiles
```

## Install stuff

```sh
sudo apt install git neovim gnome-boxes vlc zsh
```
- todo: aggiungere chrome, alacritty, github cli, ms teams, spotify
- todo aggiungere roba da old-ohmyzsh?
### Set zsh as default shell

`chsh -s /usr/bin/zsh`

### Install vscode-insiders

### Install i3-gaps and compton

### Change autostart applications and remove default keyboard shortcuts

### Change display settings (sleep, black screen)

### Change firefox preferences
- login into ff account
- check restore previous session
- under extensions, remove the long click to pin tab
- remove extensions from top bar and add bookmarks menu in new tab
