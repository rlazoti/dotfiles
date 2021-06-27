# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tap repos
brew tap aws/tap
brew tap d12frosted/emacs-plus
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/services

# essentinal packages
brew install aspell
brew install bat
brew install cowsay
brew install curl
brew install git
brew install htop
brew install ispell
brew install jq
brew install m-cli
brew install pstree
brew install reattach-to-user-namespace
brew install terminal-notifier
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install unar
brew install unrar
brew install wget
brew install wrk
brew install xz
brew install zsh
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting

# cask packages
brew install --cask altair-graphql-client
brew install --cask appcleaner
brew install --cask fanny
brew install --cask font-jetbrains-mono
brew install --cask grammarly
brew install --cask insomnia
brew install --cask iterm2
brew install --cask meetingbar
brew install --cask menumeters
brew install --cask notable
brew install --cask rectangle

# emacs
brew install emacs-plus --with-modern-doom3-icon
