# Install Xcode command line tools
# xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure git
git config --global user.name "Ryosuke Minami"
git config --global user.email "contact@ryosuke.dev"

# Set up commit signing with ssh key
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true

# Set up znap
git clone --depth 1 git@github.com:marlonrichert/zsh-snap.git ~/.local/share/zsh-snap/zsh-snap

# Install essential command line tools
brew install neovim
brew install wget
brew install ca-certificates
brew install tree
brew install tree-sitter
brew install pkg-config
brew install git-lfs
brew install git-filter-repo
brew install ack
brew install the_silver_searcher
brew install less
brew install imagemagick
brew install lcov
brew install tldr
brew install tmux
brew install bat
brew install nushell
brew install poetry
brew install go
brew install zig
brew install erlang
brew install ocaml
brew install nim
brew install elixir
brew install lua
brew install luarocks

# Install casks
brew install --cask gdisk
brew install --cask google-cloud-sdk
brew install --cask julia
brew install --cask ngrok
brew install --cask r
brew install --cask rstudio

# Install languages with mise
mise plugins install ruby
mise install node@latest
mise install node@lts
mise install java@latest

mise use -g node@latest
mise use -g java@latest
mise use -g npm:npm-check@latest
mise use -g npm:serve@latest
mise use -g npm:vite@latest

# Install fonts
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-roboto
brew install --cask font-roboto-mono
brew install --cask font-meslo-for-powerline
brew install --cask font-meslo-nerd-font-mono
brew install --cask font-fira-code

# Install language tools
brew install gradle

