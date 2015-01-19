# clone tmux-powerline
echo "install tmux-powerline..."
git clone git@github.com:erikw/tmux-powerline.git ~/.terminal/tmux-powerline

# clone oh-my-zsh
echo "install oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# set hidden files
echo "install hidden files..."
ln -s .terminal/zshenv ~/.zshenv
ln -s .terminal/zshrc ~/.zshrc
ln -s .terminal/tmux.conf ~/.tmux.conf
ln -s .terminal/my-custom-theme.zsh-theme ~/.oh-my-zsh/themes/my-custom-theme.zsh-theme

echo "done. Have fun! :)"