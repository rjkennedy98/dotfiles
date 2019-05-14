# Dotfiles

Contained here are my configuration files for:

* vim
*tmux

Feel free to use them and modify them

---

## Vim

My vim configuration uses `Vundle`. To install Vundle, follow the instructions here: [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim).

brew install vim

cp ~/dotfiles/.vimrc ~
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Zsh

cp ~/dotfiles/.zshrc ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#### Nerd Fonts

https://medium.com/the-code-review/nerd-fonts-how-to-install-configure-and-remove-programming-fonts-on-a-mac-178833b9daf3

## Tmux

Bindings to use vim directionals

brew install zsh

https://medium.com/swlh/power-up-your-terminal-using-oh-my-zsh-iterm2-c5a03f73a9fb

## Git

https://githowto.com/aliases

```
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
```
