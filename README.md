# dotfiles

A place to store my personal ZSH configuration.
Most configurations are macos specific and user customized.
This configuration is not intended to be used out-of-the-box.

## Setup

This repo can be cloned anywhere.
Just set `$ZDOTDIR` in your `~/.zshenv` accordingly:

```sh
# Set location of ZSH dotfiles
ZDOTDIR=$HOME/.dotfiles
source $ZDOTDIR/.zshenv
```

## Prerequisites

To clone my setup, you will have to install the following tools:

```console
brew install git
brew install zsh
brew install fzf # Do not run the install script for ZSH!
brew install antigen
brew cask install iterm2
brew tap homebrew/cask-fonts && brew cask install font-meslo-nerd-font
```

## Local configuration

Put all configuration with a local scope in the file `local.zsh` and make sure that it is not pushed into a public repository.
