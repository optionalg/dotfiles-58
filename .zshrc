ZSH=$HOME/.oh-my-zsh
ZSH_THEME="humza"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
HIST_IGNORE_SPACE="true"
plugins=(tmux git archlinux gem git-extras lein npm rvm dircycle)

xmodmap ~/.Xmodmap

for script in $HOME/.zshrc.d/*.sh
  do
    if [ -x "${script}" ]; then
      source ${script}
    fi
done

source $ZSH/oh-my-zsh.sh
PATH=$PATH:$HOME/.rvm/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv init -)"
export PATH="$HOME/.cabal/bin:$PATH"

export EDITOR='emacsclient'
export BROWSER='dwb -S'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi

alias xudo='sudo'
alias e='emacsclient -t -a emacs'
alias push='git push'
alias commit='git commit'
alias cal='cal -y'
alias vf='cd'
alias ks='ls'
alias lw='ls'
alias kila='killall'
alias killa='killall'
alias kilall='killall'
alias sudo='sudo '
alias kdp='killall dhcpcd'
alias using_alsa='fuser -fv /dev/snd/* /dev/dsp*'
alias opened_settings='cat /proc/asound/card0/pcm0p/sub0/hw_params'
alias show_codec='cat /proc/asound/card0/codec#0 | grep Codec'
alias ls='ls -F --color=always'
alias lsa='ls -aF --color=always'
alias mountu='mount -o gid=users,fmask=113,dmask=002'
alias glog='git log --pretty=oneline'
alias torg='tree ~/Org'
alias dbox='dropbox'
alias s='ls'
alias mikdr='mkdir'
alias mkdr='mkdir'
alias midkir='mkdir'
alias mdkir='mkdir'
alias open='xpdf'
alias aslamixer='alsamixer'
alias sud='sudo'

function cimg {
  curl ihmage.com/$1
}

alias -s txt=cat
alias -s markdown=cat
alias -s html=firefox
alias -s png=feh
alias -s jpg=feh
alias -s gif=feh
alias -s rb=coderay
alias -s css=coderay
alias -s mp3=mplayer
alias -s ogg=mplayer
alias -s flac=mplayer
alias -s wav=mplayer

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh

ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg-green'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[assign]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=magenta,underline'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=blue'
ZSH_HIGHLIGHT_STYLES[history]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=blue,underline'
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red'
ZSH_HIGHLIGHT_STYLES[matching-bracket]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
ZSH_HIGHLIGHT_PATTERNS+=('rvm get head' 'fg=green,bold')
ZSH_HIGHLIGHT_PATTERNS+=('brew update' 'fg=green,bold')
ZSH_HIGHLIGHT_PATTERNS+=('rlwrap *' 'fg=green,bold')
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

eval $( dircolors -b $HOME/.dircolors )

