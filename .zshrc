export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Start zsh in NORMAL mode
zle-line-init() {
  zle -K vicmd;
}
zle -N zle-line-init

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

zle_highlight=(default:bold)
zle_highlight=(none)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$HOME/bin:$PATH

# macOS
source /opt/homebrew/Cellar/fzf/0.37.0/shell/key-bindings.zsh
# Debian
#source /usr/share/doc/fzf/examples/key-bindings.zsh
# Fedora
#source /usr/share/fzf/shell/key-bindings.zsh
