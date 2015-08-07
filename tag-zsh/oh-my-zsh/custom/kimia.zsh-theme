prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    echo "%{$fg[green]%}$USER%{$fg[red]%}@%m "
  fi
}
local host="$(prompt_context)"
local ret_status="%(?:%{$fg[green]%}:%{$fg[red]%})%1{➜%} "

PROMPT='${host}%{$fg[cyan]%}%c $(git_prompt_info)${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


