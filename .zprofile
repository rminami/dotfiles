eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/share/mise/shims:$PATH"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
