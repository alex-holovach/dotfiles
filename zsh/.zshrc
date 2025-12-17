export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll='ls -la'

export EDITOR=nvim

if [[ "$(uname)" == "Linux" ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  export PATH=$PATH:/home/alex/go/bin
  export PATH=$PATH:/usr/local/go/bin
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [[ "$(uname)" == "Darwin" ]]; then
    export PATH="/Users/alex/Documents/projects/kubiks-cli/bin:$PATH"
    export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/Users/aholovach:$PATH"
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    export PATH=$PATH:/usr/local/go/bin
    # source $HOME/.atuin/bin/env
    function cursor {
      open -a "/Applications/Cursor.app" "$@"
    }

      function deb {
      ssh -t alex@100.116.131.123 'source ~/.zshrc; exec zsh -l'
    }
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


# pnpm
export PNPM_HOME="/Users/alex/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"

# bun completions
[ -s "/Users/alex/.bun/_bun" ] && source "/Users/alex/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias kubiks="/Users/alex/Documents/projects/kubiks-cli/bin/kubiks"
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/alex/.opencode/bin:$PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Added by Antigravity
export PATH="/Users/alex/.antigravity/antigravity/bin:$PATH"
