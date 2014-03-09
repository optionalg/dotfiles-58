# ZSH THEME Preview: https://skitch.com/huyy/rk979/humza.zshtheme

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}+("
ZSH_THEME_GIT_PROMPT_SUFFIX=");%{$reset_color%}"

PROMPT='%{$reset_color%}%{$fg[green]%}{%{$reset_color%}%25<...<%~%<<%{$fg[green]%}}%{$reset_color%}$(git_prompt_info)%{$fg[red]%}$%{$reset_color%} '

