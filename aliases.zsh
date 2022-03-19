#
# Aliases
#

# Prozess grep shortcut
alias pg='ps aux | grep -i'

# Find string in path
alias finds='grep -rnw . -e'

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ll='ls -AlFh'

# Git
alias lc='git --no-pager log --decorate --pretty=oneline --abbrev-commit -10'
git config --global alias.root "rev-parse --show-toplevel"
alias cdg='cd "$(git root)"'
alias gb='git branch -v | grep -iv "\[gone\]"'
alias gdiff='git diff --no-index'

# ZSH/Antigen
alias antigen-fullcleanup='antigen cleanup; antigen reset;'

# Misc
alias whatismyip='echo "$(curl -fs https://api.ipify.org)"'
alias copystats='rsync -a --progress --stats --human-readable'
alias beautifyjson='python -m json.tool'
alias trim="sed '/^[[:space:]]*$/d;s/^[[:space:]]*//;s/[[:space:]]*$//'"
alias genpass32='openssl rand -base64 32'
alias fitscreen='expand | cut -c-$COLUMNS'

# VIM
alias vi="vi -u \"$ZDOTDIR/.exrc\""

# Aliases for kubectl from https://github.com/ahmetb/kubectl-aliases
KUBE_ALIASES="$ZDOTDIR/.kubectl_aliases"
[ ! -f "$KUBE_ALIASES" ] && curl -s https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases curl -o "$KUBE_ALIASES"
source "$KUBE_ALIASES"

# The trailing space causes the next word to be checked for alias substitution.
alias watch='watch '
