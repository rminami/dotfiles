eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/share/mise/shims:$PATH"

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
