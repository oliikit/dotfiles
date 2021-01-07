# dotfiles

## TO UPDATE:
- install instructions
- add iterm link
- auto atom link?


## To Use:
- Install Neovim, Oh-My-Zsh, Atom
- Link iTerm preferences to iterm2
- You'll need to install the Powerline font in order for NeoVim to look right.

# VSCode
The `vscode.sh` script currently is a placeholder and will need to be fleshed out.

## To restore
cat .vscode.extensions.txt | xargs -L 1 code --install-extension

## Questions
- how to update settings

# zsh

## running slowly
https://blog.mattclemente.com/2020/06/26/oh-my-zsh-slow-to-load.html

```
# Delete the completion cache
rm "$ZSH_COMPDUMP"
# Restart the zsh session
exec zsh
```