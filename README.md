# My dotfiles

## Credits
- [original zsh configuration](https://github.com/ChristianChiarulli/Machfiles)
- [original zsh prompt](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme)

## Create a bare repository

Add this alias 
```sh
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME
```

Create the repository, add, commit and push changes
```sh
git init --bare $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles add .zshrc
dotfiles commit -m "added zshrc"
dotfiles push -u origin master
```

Clone the repository
```sh
git clone https://github.com/fedfontana/dotto.git /home/$USER
```
