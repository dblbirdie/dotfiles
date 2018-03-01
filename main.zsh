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

#antigen use oh-my-zsh	# init antigen with oh-my-zsh

# Antigen Bundles
antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime
#antigen bundle aws
#antigen bundle brew
#antigen bundle osx
#antigen bundle ssh-agent
#antigen bundle urltools
#antigen bundle vagrant

# Antigen Theme
antigen theme agnoster
antigen apply

# Antigen Functions
autoload zmv

# Custom adjustments
source $BASEDIR/env.zsh
source $BASEDIR/aliases.zsh
source $BASEDIR/functions.zsh
source $BASEDIR/custom-completion.zsh

# Setup autocomplete for kubectl
command -v kubectl >/dev/null && source <(kubectl completion zsh)
command -v helm >/dev/null && source <(helm completion zsh)

# Other stuff
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="mhuber"
