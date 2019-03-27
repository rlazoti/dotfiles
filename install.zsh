# clone tmux-powerline
echo "install tmux-powerline..."
rm -rf ~/.terminal/tmux-powerline
git clone https://github.com/erikw/tmux-powerline.git ~/.terminal/tmux-powerline

# clone oh-my-zsh
echo "install oh-my-zsh"
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/rlazoti/hacker-quotes.git ~/.oh-my-zsh/custom/plugins/hacker-quotes

# set hidden files
echo "remove old conf files..."
rm ~/.zshenv
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.gitignore

echo "install conf files..."
ln -s ~/.terminal/gitignore ~/.gitignore
ln -s ~/.terminal/zshenv ~/.zshenv
ln -s ~/.terminal/zshrc ~/.zshrc
ln -s ~/.terminal/tmux.conf ~/.tmux.conf
ln -s ~/.terminal/my-custom-theme.zsh-theme ~/.oh-my-zsh/themes/my-custom-theme.zsh-theme
mv ~/.terminal/tmux-powerline/themes/default.sh ~/.terminal/tmux-powerline/themes/original-theme.sh
ln -s ~/.terminal/my-powerline-theme.zsh-theme ~/.terminal/tmux-powerline/themes/default.sh

# define global git config
echo "add global git settings..."
git config --global commit.template ~/.terminal/git_commit_msg.txt
git config --global mergetool.keepBackup false
git config --global github.user rlazoti
git config --global github.email rodrigolazoti@gmail.com
git config --global color.diff auto
git config --global color.ui 1
git config --global color.status auto
git config --global color.branch auto
git config --global core.editor 'emacs -nw -no-splash'
git config --global pull.rebase true
git config --global push.default simple
git config --global core.excludesfile ~/.gitignore

echo "done. Have fun! :)"
