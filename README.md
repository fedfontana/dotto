# My dotfiles

## Credits
- [original zsh configuration](https://github.com/ChristianChiarulli/Machfiles)
- [original zsh prompt](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme)

## Create a bare repository

Add this alias 
```sh
alias dots='/usr/bin/git --git-dir=$HOME/dotto.git --work-tree=$HOME
```

Create the repository, add, commit and push changes
```sh
git init --bare $HOME/dotfiles
dots config --local status.showUntrackedFiles no
dots add .zshrc
dots commit -m "added zshrc"
dots push -u origin master
```

## Clone and use this repo

Clone the repo
```sh
git clone --bare git@github.com:fedfontana/dotto.git dotto.git
```

then move all of the stuff in the right places running this command:
```sh
git --git-dir=./dotto.git --work-tree=. checkout master .
```
(assuming you are in /home/\<your user\>/)

remove the untracked file stuff
```
dots config --local status.showUntrackedFiles no
```
