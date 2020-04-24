alias -g ...='cd ..'
alias -g ....='cd ../../'
alias -g .....='cd ../../../'
alias -g E="sudo $EDITOR "
alias -g b="brew"
alias -g bc="brew cask"
alias -g bs="brew services"
alias -g c='clear'
alias -g ee="open -n -a /Applications/Emacs.app $1"
alias -g gaa.='git add .'
alias -g gaa='git add'
alias -g gb='git branch'
alias -g gcam.='git commit -am "an awesome commit! ;)"'
alias -g gcam='git commit -m'
alias -g gck='git checkout'
alias -g gckb='git checkout -b'
alias -g gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset" --abbrev-commit'
alias -g gmg='git merge'
alias -g gmt='git mergetool'
alias -g gpf='git prune && git fetch'
alias -g gpl='git pull --rebase --tags'
alias -g gplo='git pull origin --rebase --tags'
alias -g gpm='git pull --rebase origin master --tags'
alias -g gpso='git push origin'
alias -g grb='git rebase'
alias -g gs='echo "do you mean \"gst\"? :P"'
alias -g gst='git status -sb'
alias -g hosts="sudo XMODIFIERS=\'\' vi /etc/hosts"
alias -g k='gitk'
alias -g l='ls -l'
alias -g la='ls -la'
alias -g lht='ls -lht'
alias -g ll='ls -hl'
alias -g ls='ls -G'
alias -g mci='mvn clean install'
alias -g mcp='mvn clean package'
alias -g mct='mvn clean test'
alias -g mcv='mvn clean verify'
alias -g n="node"
alias -g ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias -g psg='ps aux | grep'
alias -g reload='source ~/.zshrc'
alias -g sbs="sudo brew services"
alias -g sk9='sudo kill -9'
alias -g vi="XMODIFIERS=\'\' emacs -nw --no-splash -q -l \"~/.emacs.d/terminal/init.el\""
alias -g vii="XMODIFIERS=\'\' emacs -nw --no-splash"
alias -g t="tmux"
