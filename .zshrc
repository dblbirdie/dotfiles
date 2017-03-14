# zsh config
#
# Load Antigen and custom configuration
source /usr/local/share/antigen/antigen.zsh

# Antigen: Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

# Antigen Theme
antigen theme agnoster
antigen apply

# Antigen Bundles
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime

# Custom adjustments
source ~/.dotfiles/custom-completion.zsh
source ~/.dotfiles/.aliases

# Other stuff
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="mhuber"
