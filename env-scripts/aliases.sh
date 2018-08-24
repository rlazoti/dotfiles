alias -g ls='ls -G'
alias -g ll='ls -hl'
alias -g l='ls -l'
alias -g lht='ls -lht'
alias -g la='ls -la'
alias -g ...='cd ..'
alias -g c='clear'
alias -g reload='source ~/.zshrc'
alias -g gs='echo "do not fuck with me asshole!"'
alias -g gst='git status -sb'
alias -g gaa='git add'
alias -g gaa.='git add .'
alias -g gcam='git commit -m'
alias -g gcam.='git commit -am "an awesome commit! ;)"'
alias -g gck='git checkout'
alias -g gckb='git checkout -b'
alias -g gb='git branch'
alias -g gpm='git pull --rebase origin master --tags'
alias -g gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset" --abbrev-commit'
alias -g mci='mvn clean install'
alias -g mcp='mvn clean package'
alias -g gpl='git pull --rebase --tags'
alias -g gps='git push'
alias -g gplo='git pull origin --rebase --tags'
alias -g gpso='git push origin'
alias -g grb='git rebase'
alias -g gmg='git merge'
alias -g k='gitk'
alias -g hosts="sudo XMODIFIERS=\'\' vi /etc/hosts"
alias -g n="node"
alias -g E="sudo $EDITOR "
alias -g vii="XMODIFIERS=\'\' emacs -nw --no-splash"
alias -g vi="XMODIFIERS=\'\' emacs -nw --no-splash -q -l \"~/.emacs.d/terminal/init.el\""
alias -g sk9='sudo kill -9'
alias -g psg='ps aux | grep'
alias -g ee="open -n -a /Applications/Emacs.app $1"
alias -g b="brew"
alias -g bs="brew services"
alias -g sbs="sudo brew services"
alias -g ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
