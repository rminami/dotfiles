# Language settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.local/share/zsh-snap/zsh-snap/znap.zsh

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

# znap prompt geometry-zsh/geometry
# znap prompt romkatv/powerlevel10k
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

export BAT_THEME="TwoDark"

if [[ -f $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi

. "$HOME/.cargo/env"

eval "$(oh-my-posh init zsh --config ~dot/oh-my-posh.omp.json)"
