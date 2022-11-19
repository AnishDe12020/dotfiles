# ----------------------------------------------- #
# ---------------- ZPLUG SETTINGS --------------- #
# ----------------------------------------------- #

source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "/zsh-users/zsh-autosuggestions", defer:2
zplug 'wfxr/forgit'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# ----------------------------------------------- #
# ------------ INITS AND CONFIGS ---------------- #
# ----------------------------------------------- #

export PATH="/Users/anish/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# ----------------------------------------------- #
# ----------------- ALIASES --------------------- #
# ----------------------------------------------- #

alias ls="exa --icons --color=always"
alias l="exa --icons --color=always -l -a"
alias la="exa --icons --color=always -a"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias git=hub
alias lg=lazygit

# ----------------------------------------------- #
# ----------------- FUNCTIONS ------------------- #
# ----------------------------------------------- #

# Create directory and cd into it
mkcd() {
    mkdir -p "$@" && cd "$_"
}

