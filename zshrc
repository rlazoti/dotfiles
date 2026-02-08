ZSH=$HOME/.oh-my-zsh
ZSH_THEME="my-custom-theme"

# [[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"

LANG="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"

# Custom bgnotify message
function bgnotify_formatted {
    elapsed="$(( $3 % 60 ))s"
    (( $3 >= 60 )) && elapsed="$((( $3 % 3600) / 60 ))m $elapsed"
    (( $3 >= 3600 )) && elapsed="$(( $3 / 3600 ))h $elapsed"
    [ $1 -eq 0 ] && _custom_bgnotify "#win (took $elapsed)" "$2" || _custom_bgnotify "#fail (took $elapsed)" "$2"
}

function _custom_bgnotify {
    terminal-notifier -message "$2" -title "$1" >/dev/null
}

# Load extensions
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(themes tmux command-not-found colorize docker docker-compose brew mvn npm aws bgnotify)

#FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#ZSH_DISABLE_COMPFIX=true

# add suport for color in terminal
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh

#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

#autoload -U +X bashcompinit && bashcompinit
#[ -f "/Users/rodrigo.lazoti//.ghcup/env" ] && source "/Users/rodrigo.lazoti//.ghcup/env" # ghcup-env

#[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

#[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

source ~/.terminal/environment

# cloudplatform: add Shopify clusters to your local kubernetes config
#export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/rodrigolazoti/.kube/config:/Users/rodrigolazoti/.kube/config.shopify.cloudplatform
#for file in /Users/rodrigolazoti/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done
#kubectl-short-aliases

#export LDFLAGS="-L/opt/homebrew/opt/mysql-client@5.7/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/mysql-client@5.7/include"
#export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
