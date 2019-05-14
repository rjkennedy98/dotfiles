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
## Tmux

Bindings to use vim directionals

brew install zsh

https://medium.com/swlh/power-up-your-terminal-using-oh-my-zsh-iterm2-c5a03f73a9fb
