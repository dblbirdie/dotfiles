#
# Command prompt customizations
#

# Add current cluster and context to the right prompt
# https://github.com/superbrothers/zsh-kubectl-prompt
KLIB=/usr/local/etc/zsh-kubectl-prompt/kubectl.zsh
if [ -e "$KLIB" ] ;
then
    autoload -U colors; colors
    source $KLIB
    RPROMPT="%{$FG[236]%}"$'\ue0b2'"%{$BG[236]%}%{$FG[245]%} "'$ZSH_KUBECTL_PROMPT'"%{$reset_color%}"
else
    >&2 echo "Library $KLIB not found. Please install via Homebrew."
fi
