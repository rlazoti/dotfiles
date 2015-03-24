function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\ $ZSH_THEME_GIT_PROMPT_PREFIX\1$(parse_git_dirty)/"
}

function git_stash() {
  number_of_stashes="$(git stash list -n1 2> /dev/null | wc -l)"
  if [[ $number_of_stashes -gt 0 ]]; then
    echo $ZSH_THEME_GIT_PROMPT_STASH
  else
    echo ""
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$terminfo[bold]$fg[white]%}on %{$reset_color%} %{$terminfo[bold]$fg[blue]%} git:%{$reset_color%}%{$terminfo[bold]$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_STASH="%{$terminfo[bold]$fg[white]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$terminfo[bold]$fg[green]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$terminfo[bold]$fg[blue]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$terminfo[bold]$fg[red]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$terminfo[bold]$fg[magenta]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$terminfo[bold]$fg[yellow]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$terminfo[bold]$fg[cyan]%} %{$reset_color%}"

ZSH_END_PROMPT=" %{$fg[red]%}%{$reset_color%}%{$fg[green]%}%{$reset_color%}%{$fg[yellow]%}%{$reset_color%} "

PROMPT='%{$terminfo[bold]$fg[cyan]%}%n%{$reset_color%}%{$terminfo[bold]$fg[white]%} at %{$reset_color%}%{$terminfo[bold]$fg[green]%}%m%{$reset_color%}%{$terminfo[bold]$fg[white]%} in %{$reset_color%}%{$terminfo[bold]$fg[red]%}%0~$(git_branch)%{$reset_color%}$ZSH_END_PROMPT'

RPROMPT='$(git_stash)$(git_prompt_status)'