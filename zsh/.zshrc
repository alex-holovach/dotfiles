export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin

alias ll='ls -la'

export EDITOR=nvim

if [[ "$(uname)" == "Linux" ]]; then
  . "$HOME/.cargo/env"
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ "$(uname)" == "Darwin" ]]; then
    export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
    export PATH="/opt/homebrew/bin:$PATH"
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    eval "$(direnv hook zsh)"
fi

eval "$(starship init zsh)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
