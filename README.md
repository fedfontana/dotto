# My dotfiles

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
