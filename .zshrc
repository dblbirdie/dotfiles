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
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=66"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
antigen bundle git
antigen bundle rupa/z
antigen bundle sublime
antigen bundle kubectl
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

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_first_and_last

CF_ICON="$'\ue33d'"   #Alternatives: $'\uf660' $'\ufa8f' $'\uf65e' $'\uf662'
POWERLEVEL9K_CUSTOM_CF="echo \$(test -f ~/.cf/config.json && jq -je '[.OrganizationFields.Name,.SpaceFields.Name] | join(\"/\")' ~/.cf/config.json) $CF_ICON\ "
POWERLEVEL9K_CUSTOM_CF_BACKGROUND="yellow"
POWERLEVEL9K_CUSTOM_CF_FOREGROUND="black"

DOCKER_ICON="$'\uf308'"   #Alternative: $'\ue7b0'
POWERLEVEL9K_CUSTOM_DOCKER="echo \$(command -v docker >/dev/null 2>&1 && docker info --format '{{json .}}' | jq -cerM '.ContainersRunning' | grep -v 'null') $DOCKER_ICON\ "
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND="yellow"

GITUSER_ICON="$'\uf1d2'"   #Mail icon alternatives: $'\uf6ef' $'\uf42f' $'\uf84b'
POWERLEVEL9K_CUSTOM_GITUSER="echo \$(git config user.email) $GITUSER_ICON\ "
POWERLEVEL9K_CUSTOM_GITUSER_BACKGROUND="yellow"
POWERLEVEL9K_CUSTOM_GITUSER_FOREGROUND="black"

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
for file in $ZDOTDIR/{aliases,functions,custom-completion,local}.zsh; do
    [ -r "$file" ] && source "$file"
done
unset file
