#
# Interactive Shell Configuration.
#

DEFAULT_USER=$(whoami)

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

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
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time time todo)
POWERLEVEL9K_STATUS_OK=false
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

# Antigen Functions
autoload zmv

# Custom adjustments
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/custom-completion.zsh
