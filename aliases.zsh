#
# Aliases
#

# Prozess grep shortcut
alias pg='ps aux | grep -i '

# Find string in path
alias finds='grep -rnw . -e $1'

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ll='ls -AlFh'

# Show last Git commits as single lines
alias lc='git log --oneline | head -10'

# Homebrew
alias brew-status='brew doctor && brew update && echo "Outdated brew/core:" && brew outdated && echo "Outdated brew/cask:" && brew cask outdated'
alias brew-fullupgrade='brew doctor && brew update && brew upgrade && brew cask upgrade'
alias brew-cleanup='brew cleanup -s && rm -rfv "$(brew --cache)"'

# ZSH/Antigen
alias antigen-fullcleanup='antigen cleanup; antigen reset;'

# Misc
alias whatismyip='echo "$(curl -fs https://api.ipify.org)"'
alias copystats='rsync -a --progress --stats --human-readable'
alias httpstatuscode='curl -s http://www.ietf.org/assignments/http-status-codes/http-status-codes.txt | grep ' $1 ' | head -1'
alias beautifyjson='python -m json.tool'
alias trim="sed '/^[[:space:]]*$/d;s/^[[:space:]]*//;s/[[:space:]]*$//'"
alias genpass32='openssl rand -base64 32'
alias fitscreen='expand | cut -c-$COLUMNS'
