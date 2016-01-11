export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
setopt interactivecomments

source ~/.z.sh
source ~/.zsh/antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
# antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle mafredri/zsh-async #required for pure
antigen bundle sindresorhus/pure
antigen bundle docker
#antigen bundle swirepe/alwaysontop
antigen apply
dkmEnv() {
  eval $(dkm env $1)
}
alias dkc='docker-compose'
alias dkm='docker-machine'
alias dke=dkmEnv
alias dkx='docker exec -it'
# . ~/z.sh
# Vi mode
# bindkey -v
# export KEYTIMEOUT=22
# bindkey "^B" beginning-of-line
# bindkey "^E" end-of-line
# bindkey "jj" vi-cmd-mode
# bindkey "^P" history-substring-search-up
# bindkey "^N" history-substring-search-down
# bindkey "^Q" kill-line
# bindkey "^U" backward-kill-line

# Disable Ctrl-S freeze
stty -ixon
