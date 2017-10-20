#
# Aliases
#

# Prozess grep shortcut
alias pg='ps aux | grep -i '

# Find string in path
alias finds='grep -rnw . -e $1'

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ll='ls -AlFh'

# Make some commands verbose
alias rm='rm -v'
#alias cp='cp -v'

# Show last Git commits as single lines
alias lc='git log --oneline | head -10'

# Homebrew
alias brew-status='brew doctor && brew update && echo "---" && brew outdated'
alias brew-fullupgrade='brew doctor && brew update && brew upgrade'

# Misc
alias whatismyip='echo "$(curl -fs https://api.ipify.org)"'
alias copystats='rsync -a --progress --stats --human-readable'
