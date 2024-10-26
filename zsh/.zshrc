

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin

. "$HOME/.cargo/env"
eval "$(starship init zsh)"

alias ll='ls -la'

export EDITOR=nvim

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
