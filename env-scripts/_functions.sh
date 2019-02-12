# Display head and tail of a file
function headtail() {
    (head; tail) < $1
}

# Git commit with branch name before customized message
function gcamb() {
    if [ -z "$1" ];
    then
        echo ERROR: No commit message was given. Please enter a commit message 1>&2
        echo gcamb \"Add something somewhere because of something\"
    else
        git commit -m "$(git symbolic-ref --short HEAD): $1"
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

# Run git pull to update all Git repositories in a working directory and its subdirectories
function gplall() {
    find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
}

# Delete all already merged branches, and confirm if the non-merged should be delete as well
function gbclean() {
    local ignored_branches=("*" "master" "develop" "staging")

    for BRANCH in $(git branch --merged)
    do
	local match=$(echo "${ignored_branches[@]:0}" | grep -o $BRANCH)  
	if [[ -z $match ]]; then
	    git branch -D $BRANCH
	fi
    done

    for BRANCH in $(git branch --no-merged)
    do
	local match=$(echo "${ignored_branches[@]:0}" | grep -o $BRANCH)  
	if [[ -z $match ]]; then
	    read REPLY\?"Branch '$BRANCH' isn't merge yet. Do you want to delete it? [Y/n] "
	    if [[ $REPLY = "Y" ]]; then
		git branch -D $BRANCH
	    fi
	fi
    done
}
