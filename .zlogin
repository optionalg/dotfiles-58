[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

rm -f ~/.zcompdump{,zwc}
{
zcompdump="$ZDOTDIR:-$HOME}/.zcompdump"
if [[ -s "$zcompdump" && (! -s "${zcompdump}zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]
then zcompile "$zcompdump"
fi
} &!
