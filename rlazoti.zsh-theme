function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\ (\1$(parse_git_dirty))/"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$terminfo[bold]$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$terminfo[bold]$fg[green]%} ✚ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$terminfo[bold]$fg[blue]%} ✹ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_DELETED="%{$terminfo[bold]$fg[red]%} ✖ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$terminfo[bold]$fg[magenta]%} ➜ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$terminfo[bold]$fg[yellow]%} ═ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$terminfo[bold]$fg[cyan]%} ✭ %{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX"

PROMPT='%{$terminfo[bold]$fg[white]%}%n%{$reset_color%}%{$terminfo[bold]$fg[white]%}@%{$reset_color%}%{$terminfo[bold]$fg[green]%}%m%{$reset_color%}%{$terminfo[bold]$fg[white]%}:%{$reset_color%}%{$terminfo[bold]$fg[red]%}%0~$ZSH_THEME_GIT_PROMPT_PREFIX$(git_branch)%{$terminfo[bold]$fg[white]%} ⇒%{$reset_color%}  '
