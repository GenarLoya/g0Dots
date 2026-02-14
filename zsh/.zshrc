# Env load
set -a
[ -f ~/.env ] && source ~/.env
set +a

# set ZSH_ZELLIJ_AUTOSTART to false if ZED_TERM exists or equal true
if [[ -n "$ZED_TERM" ]]; then
    export ZSH_ZELLIJ_AUTOSTART="false"
fi

# Start Zellij only if explicitly true
if [[ "$ZSH_ZELLIJ_AUTOSTART" == "true" ]]; then
    eval "$(zellij setup --generate-auto-start zsh)"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

fpath=($HOME/.zsh/completions $fpath)

autoload -Uz compinit
compinit
# End of lines added by compinstall

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(
    git
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
)

# My util scripts
export PATH="$HOME/.config/my-utils:$PATH"

# Editor
export EDITOR=micro

# Go environment
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# fnm
export PATH="/run/user/1000/fnm_multishells/31040_1758692299652/bin":$PATH
export FNM_MULTISHELL_PATH="/run/user/1000/fnm_multishells/31040_1758692299652"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/home/genarold/.local/share/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="true"
export FNM_ARCH="x64"
rehash

# Starship init
export STARSHIP_CONFIG=~/.zsh/starship.toml
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/home/genarold/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fastfetch
fastfetch
# fnm
FNM_PATH="/home/genarold/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# zed
export PATH=$HOME/.local/bin:$PATH

# github cli
eval "$(gh completion --shell zsh)"

# docker completions
eval "$(docker completion zsh)"
<<<<<<< HEAD
=======

# Alias
alias zed="zeditor"
>>>>>>> 5aad36a036dc407b253b64e0fb187490e2c92b2d
