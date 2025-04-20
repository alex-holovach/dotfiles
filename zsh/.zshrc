export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll='ls -la'

export EDITOR=nvim

if [[ "$(uname)" == "Linux" ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  export PATH=$PATH:/home/alex/go/bin
  export PATH=$PATH:/usr/local/go/bin
fi

if [[ "$(uname)" == "Darwin" ]]; then
    export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/Users/aholovach:$PATH"
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    export PATH=$PATH:/usr/local/go/bin
 .  source $HOME/.atuin/bin/env
fi

eval "$(starship init zsh)"


[[ -s "/Users/aholovach/.gvm/scripts/gvm" ]] && source "/Users/aholovach/.gvm/scripts/gvm"

export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"

eval "$(atuin init zsh)"
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"

export PATH="/usr/local/opt/libpq/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
