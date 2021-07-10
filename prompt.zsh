#
# Custom Prompt Elements
#

# CF_ICON="$'\ue33d'"   #Alternatives: $'\uf660' $'\ufa8f' $'\uf65e' $'\uf662'
# POWERLEVEL9K_CUSTOM_CF="echo \$(test -f ~/.cf/config.json && jq -je '[.OrganizationFields.Name,.SpaceFields.Name] | join(\"/\")' ~/.cf/config.json) $CF_ICON\ "
# POWERLEVEL9K_CUSTOM_CF_BACKGROUND="yellow"
# POWERLEVEL9K_CUSTOM_CF_FOREGROUND="black"

DOCKER_ICON="$'\uf308'"   #Alternative: $'\ue7b0'
POWERLEVEL9K_CUSTOM_DOCKER="echo \$(command -v docker >/dev/null 2>&1 && docker info --format '{{json .}}' | jq -cerM '.ContainersRunning' | grep -v 'null') $DOCKER_ICON\ "
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND="yellow"

# GITUSER_ICON="$'\uf1d2'"   #Mail icon alternatives: $'\uf6ef' $'\uf42f' $'\uf84b'
# POWERLEVEL9K_CUSTOM_GITUSER="echo \$(git config user.email) $GITUSER_ICON\ "
# #POWERLEVEL9K_CUSTOM_GITUSER="echo \$(git config user.name) \<\$(git config user.email)\> $USER_ICON\ "
# #POWERLEVEL9K_CUSTOM_GITUSER="echo \$(git config user.email | awk -F '@' '{print $NF}') $GITUSER_ICON\ "
# POWERLEVEL9K_CUSTOM_GITUSER_BACKGROUND="yellow"
# POWERLEVEL9K_CUSTOM_GITUSER_FOREGROUND="black"
