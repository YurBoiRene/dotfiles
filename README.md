# dotfiles

```sh
git clone --bare https://github.com/YurBoiRene/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

If errors, remove conflicting files

Stolen from <https://www.atlassian.com/git/tutorials/dotfiles> <https://news.ycombinator.com/item?id=11070797>
