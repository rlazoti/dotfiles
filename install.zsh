# clone tmux-powerline
echo "install tmux-powerline..."
rm -rf ~/.terminal/tmux-powerline
git clone https://github.com/erikw/tmux-powerline.git ~/.terminal/tmux-powerline

# clone oh-my-zsh
echo "install oh-my-zsh"
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# define global git commit msg template
git config --global commit.template ~/.terminal/git_commit_msg.txt

# set hidden files
echo "remove old conf files..."
rm ~/.zshenv
rm ~/.zshrc
rm ~/.tmux.conf

echo "install conf files..."
ln -s ~/.terminal/zshenv ~/.zshenv
ln -s ~/.terminal/zshrc ~/.zshrc
ln -s ~/.terminal/tmux.conf ~/.tmux.conf
ln -s ~/.terminal/my-custom-theme.zsh-theme ~/.oh-my-zsh/themes/my-custom-theme.zsh-theme
mv ~/.terminal/tmux-powerline/themes/default.sh ~/.terminal/tmux-powerline/themes/original-theme.sh
ln -s ~/.terminal/my-powerline-theme.zsh-theme ~/.terminal/tmux-powerline/themes/default.sh

echo "done. Have fun! :)"