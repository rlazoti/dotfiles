# Convert unix epoch to date time
function epoch_to_date() {
    date -j -f %s "$(expr $1 / 1000)"
}

# Display head and tail of a file
function headtail() {
    (head; tail) < $1
}

function del_all_dir_occurs() {
    #find . -path '*/.terraform' -type d | xargs rm -rf
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
    CURRENT_DIR=$(pwd)

    for DIR in $(find . -type d -name .git)
    do
        if [[ "${DIR}" != *".terraform/modules/"* ]];
        then
            cd $DIR/../
            echo "INFO: Sync $(pwd)"

            if [[ -z $(git status -s) ]];
            then
                if git show-ref --verify --quiet refs/heads/staging
                then
                    git checkout --quiet staging
                    git pull origin --quiet --rebase --tags staging
                else
                    git checkout --quiet master
                    git pull origin --quiet --rebase --tags master
                fi
                echo "INFO: OK $(pwd)"
            else
                echo "WARNING: $(pwd) has unstaged changes."
            fi

            cd $CURRENT_DIR
        fi
    done

    cd $CURRENT_DIR
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

# Display all repositories which have checkout any branch different from master or staging
function gbshow() {
    CURRENT_DIR=$(pwd)

    for DIR in $(find . -type d -name .git)
    do
        if [[ "${DIR}" != *".terraform/modules/"* ]];
        then
            cd $DIR/../

            if [[ $(git rev-parse --abbrev-ref HEAD) != "staging" ]] && [[ $(git rev-parse --abbrev-ref HEAD) != "master" ]];
            then
                echo "WARNING: $(pwd) -> branch: $(git rev-parse --abbrev-ref HEAD)"
            fi

            cd $CURRENT_DIR
        fi
    done

    cd $CURRENT_DIR
}
