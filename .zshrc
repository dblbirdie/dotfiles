#
# Interactive Shell Configuration.
#

DEFAULT_USER=$(whoami)

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Antigen Bundles
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime
antigen bundle kubernetes
antigen bundle helm
antigen bundle docker
antigen bundle terraform
antigen bundle brew
antigen bundle colorize
antigen bundle command-not-found
antigen bundle npm
antigen bundle yarn

# Antigen Theme
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_folder_marker
POWERLEVEL9K_SHORTEN_FOLDER_MARKER=.git

source "$ZDOTDIR/prompt.zsh"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time context docker_machine kubecontext aws detect_virt custom_docker)
POWERLEVEL9K_STATUS_OK=false

antigen theme romkatv/powerlevel10k
antigen apply

# Options
unsetopt beep
unsetopt auto_cd
setopt HIST_IGNORE_SPACE

# Antigen Functions
autoload zmv

# Custom adjustments
for file in $ZDOTDIR/{aliases,functions,fzf,autocomplete,local,$ZLOCALCFG}.zsh; do
    [ -r "$file" ] && source "$file"
done
unset file
