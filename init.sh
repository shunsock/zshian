# install homebrew(package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install completion
brew install zsh-completions
chmod -R go-w /opt/homebrew/share

# install auto suggestion
brew install zsh-autosuggestions

# install for show git branch on prompt
brew install git
brew install zsh-git-prompt
