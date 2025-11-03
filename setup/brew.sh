#!/usr/bin/env bash

# Mac Essentials: Homebrew Installation Script
# Edit this file to add/remove installations as desired.

# Install Homebrew if not present
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update

echo "Installing essential CLI tools..."
brew install git
brew install wget

echo "Installing essential GUI apps with Homebrew Cask..."
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask rectangle
brew install --cask visual-studio-code

# Add more brews or casks here as needed, matching your apps.md list,
# e.g. brew install --cask notion

echo "All done! Check for manual steps in setup/post-setup.md."
