# dotfiles

Insert this shell script in whichever .*rc file your shell uses.

```
#Load dotfiles
for DOTFILE in `find ~/dotfiles/ -name ".*" | grep -v .git`
do
 [ -f $DOTFILE ] && source $DOTFILE
done
```
