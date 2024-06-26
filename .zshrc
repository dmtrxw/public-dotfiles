export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# Start zsh in NORMAL mode
zle-line-init() {
  zle -K vicmd;
}
zle -N zle-line-init

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

zle_highlight=(default:bold)
zle_highlight=(none)

if [ -d "/opt/homebrew/bin" ] ; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$PATH:$HOME/bin"
fi

if [ -d "/opt/nvim-linux64/bin" ] ; then
    export PATH="$PATH:/opt/nvim-linux64/bin"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$PATH:$HOME/.cargo/bin"
fi

# Aliases
alias sq="npx sequelize-cli"
alias npkill="npx npkill"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
