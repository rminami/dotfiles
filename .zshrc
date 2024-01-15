if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.local/share/zsh-snap/znap.zsh

# zsh configuration
setopt auto_cd
HYPHEN_INSENSITIVE='true'
# unsetopt correct_all
fpath+=~/.zfunc
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

export KEYTIMEOUT=1
export TERMINAL_DARK=1
export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=nvim

# Geometry Theme Settings
# GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs)    # Plugins
# GEOMETRY_STATUS_COLOR=blue                       # Changes prompt symbol color
# PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
# PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for git plugin
# PROMPT_GEOMETRY_GIT_TIME=false                   # Disables time since last commit
# PROMPT_GEOMETRY_GIT_TIME_SINCE_COMMIT=false

# export SPACESHIP_GCLOUD_SHOW=false

# znap prompt geometry-zsh/geometry
znap prompt romkatv/powerlevel10k
# znap prompt spaceship-prompt/spaceship-prompt

znap source zsh-users/zsh-completions
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-history-substring-search

znap source ohmyzsh/ohmyzsh lib/completion
znap source ohmyzsh/ohmyzsh lib/compfix
znap source ohmyzsh/ohmyzsh lib/correction
znap source ohmyzsh/ohmyzsh lib/directories
znap source ohmyzsh/ohmyzsh lib/history

znap source ohmyzsh/ohmyzsh plugins/git
# znap source ohmyzsh/ohmyzsh plugins/github
znap source ohmyzsh/ohmyzsh plugins/command-not-found
# znap source ohmyzsh/ohmyzsh plugins/gitignore
# znap source ohmyzsh/ohmyzsh plugins/npm
# znap source ohmyzsh/ohmyzsh plugins/pip
# znap source ohmyzsh/ohmyzsh plugins/yarn

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH

if [[ -f $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
