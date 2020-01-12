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
antigen bundle helm
antigen bundle docker
antigen bundle aws
antigen bundle terraform
#antigen bundle brew
#antigen bundle osx
#antigen bundle ssh-agent
#antigen bundle urltools
#antigen bundle vagrant
#antigen bundle spectrum

# Antigen Theme
POWERLEVEL9K_MODE='nerdfont-complete'
CF_ICON="$'\ue33d'"   #Alternatives: $'\uf660' $'\ufa8f' $'\uf65e' $'\uf662'
POWERLEVEL9K_CUSTOM_CF="echo \$(test -f ~/.cf/config.json && jq -je '[.OrganizationFields.Name,.SpaceFields.Name] | join(\"/\")' ~/.cf/config.json) $CF_ICON\ "
POWERLEVEL9K_CUSTOM_CF_BACKGROUND="yellow"
POWERLEVEL9K_CUSTOM_CF_FOREGROUND="black"

DOCKER_ICON="$'\uf308'"   #Alternative: $'\ue7b0'
POWERLEVEL9K_CUSTOM_DOCKER="echo \$(command -v docker >/dev/null 2>&1 && docker info --format '{{json .}}' | jq -cerM '.ContainersRunning' | grep -v 'null') $DOCKER_ICON\ "
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND="yellow"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time context docker_machine kubecontext aws detect_virt custom_docker)
POWERLEVEL9K_STATUS_OK=false
antigen theme romkatv/powerlevel10k
antigen apply

# Antigen Functions
autoload zmv

# Custom adjustments
for file in $ZDOTDIR/{aliases,functions,custom-completion,local}.zsh; do
    [ -r "$file" ] && source "$file"
done
unset file
