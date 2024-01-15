# Install Xcode command line tools
# xcode-select --install

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Configure git
git config --global user.name "Ryosuke Minami"
git config --global user.email "contact@ryosuke.dev"

# Set up commit signing with ssh key
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true

# Install essential command line tools
brew install neovim
brew install wget
brew install tree
brew install ack
brew install the_silver_searcher
brew install mas
brew install tmux
brew install bat

# Install npm packages
npm install -g serve
npm install -g npm-check
npm install -g @vue/cli

# Install fonts
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-roboto
brew cask install font-roboto-mono
brew cask install font-meslo-for-powerline
brew cask install font-meslo-nerd-font-mono
brew cask install font-fira-code

# Install languages
brew install python3
brew cask install java

# Install language tools
brew install gradle

