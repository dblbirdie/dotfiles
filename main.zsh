# zsh config
#
BASEDIR=$(dirname "$0")

# Load Antigen and "Oh My ZSH!"
source /usr/local/share/antigen/antigen.zsh
antigen bundle robbyrussell/oh-my-zsh lib/

# Antigen Bundles
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime

# Antigen Theme
antigen theme agnoster
antigen apply

# Antigen Functions
autoload zmv

# Custom adjustments
source $BASEDIR/aliases.zsh
source $BASEDIR/custom-completion.zsh

# Setup autocomplete for kubectl
command -v kubectl >/dev/null && source <(kubectl completion zsh)

# Other stuff
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="mhuber"
