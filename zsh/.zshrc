export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll='ls -la'

export EDITOR=nvim

if [[ "$(uname)" == "Linux" ]]; then
  . "$HOME/.cargo/env"
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
  export PATH=$PATH:/home/alex/go/bin
  export PATH=$PATH:/usr/local/go/bin
fi

if [[ "$(uname)" == "Darwin" ]]; then
    export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
    export PATH="/opt/homebrew/bin:$PATH"
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    export PATH=$PATH:/usr/local/go/bin
fi

eval "$(starship init zsh)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
eval "$(direnv hook zsh)"
