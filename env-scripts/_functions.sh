# Git commit with branch name before customized message
function gcamb() {
    if [ -z "$1" ];
    then
        echo ERROR: No commit message was given. Please enter a commit message 1>&2
        echo gcamb \"Add something somewhere because of something\"
    else
        git commit -m "$(git symbolic-ref --short HEAD) - $1"
    fi
}

# Git pull with current local branch name
function gplb() {
    git pull --rebase --tags origin $(git symbolic-ref --short HEAD)
}

# Git push with current local branch name
function gpsb() {
    git push $1 origin $(git symbolic-ref --short HEAD)
}
