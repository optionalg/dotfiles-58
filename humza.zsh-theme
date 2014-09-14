ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}+("
ZSH_THEME_GIT_PROMPT_SUFFIX=");%{$reset_color%}"

PROMPT='%{$reset_color%}%25<...<%~%<<%{$reset_color%}$(git_prompt_info)%{$fg[red]%}×%{$reset_color%} '
