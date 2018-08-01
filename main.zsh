#
# This is the main dotfile. Source this file in your ~/.zshrc
#

# Get current directory and use it as base directory
BASEDIR=$(dirname "$0")

# Update dotfiles if there are any changes in the remote repository
(cd $BASEDIR;
if [ `git rev-list --count origin/master..HEAD` -gt 0 ]; then
  git pull
fi
)

# Load Antigen
if [ ! -f $HOME/antigen/antigen.zsh ]; then
  git clone git://github.com/zsh-users/antigen.git $HOME/antigen
fi
source $HOME/antigen/antigen.zsh

# Antigen Bundles
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-completions
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime
antigen bundle kubectl
antigen bundle helm
antigen bundle docker
#antigen bundle aws
#antigen bundle brew
#antigen bundle osx
#antigen bundle ssh-agent
#antigen bundle urltools
#antigen bundle vagrant
#antigen bundle spectrum

# Antigen Theme
antigen theme agnoster
antigen apply

# Antigen Functions
autoload zmv

# Custom adjustments
source $BASEDIR/env.zsh
source $BASEDIR/aliases.zsh
source $BASEDIR/functions.zsh
source $BASEDIR/prompt.zsh
source $BASEDIR/custom-completion.zsh
