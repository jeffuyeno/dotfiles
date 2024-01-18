export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

setopt share_history

# zsh completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

rm -f ~/.zcompdump; compinit

# GIT + custom prompt
setopt promptsubst
source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
local git_status='$(git_super_status)'
PROMPT="%F{7}%D %*%f %F{5}%d%f ${git_status}"

# custom methods
#search process
alias psx="ps auxw | grep $1"

