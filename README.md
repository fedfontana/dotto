# My dotfiles

## Credits
-[original zsh configuration](https://github.com/ChristianChiarulli/Machfiles)
-[original zsh prompt](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme)

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
sudo apt install -y git neovim gnome-boxes vlc zsh tree feh
```
- todo: aggiungere i3-gaps, chrome, alacritty/kitty, gnome pdf reader, github cli, ms teams, spotify, htop, neofetch, onefetch, datagrip, npm, flutter, andoird studio, batcat, ranger, nvidi stuff?, anki, discord, telegram, ulauncher/albert, meld, imagemagick, npm, python3-pip, java
- todo aggiungere roba da old-ohmyzsh?
- todo `locate` e `updatedb`
- aggiungere setup template e keyboard layout (prendere da leenucs)
- japanes font
### Set zsh as default shell

`chsh -s /usr/bin/zsh`
And then reboot

### Install vscode-insiders

### Vim plug

### Install i3-gaps and compton

### Change autostart applications and remove default keyboard shortcuts

### Change display settings (sleep, black screen)

### Change firefox preferences
- login into ff account
- check restore previous session
- under extensions, remove the long click to pin tab
- remove extensions from top bar and add bookmarks menu in new tab
