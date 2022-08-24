# My dotfiles

## Credits
- [original zsh configuration](https://github.com/ChristianChiarulli/Machfiles)


## Clone and use this repo

Add this alias 
```sh
alias dots='/usr/bin/git --git-dir=$HOME/dotto.git --work-tree=$HOME
```
Clone the repo
```sh
git clone --bare git@github.com:fedfontana/dotto.git dotto.git
```

then move all of the stuff in the right places running this command (assuming you are in `/home/<your username>/`):
```sh
git --git-dir=./dotto.git --work-tree=. checkout master .
```

remove the untracked file stuff
```
dots config --local status.showUntrackedFiles no
```

## Change the repo

```
dots add .zshrc
dots commi9t -m "added zshrc"
dots push -u origin master
```
