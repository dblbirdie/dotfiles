# Aliases

# Prozess grep shortcut
alias pg='ps aux | grep -i '

# Find string in path
alias finds='grep -rnw . -e $1'

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ll='ls -AlFh'

# Make some commands verbose
alias rm='rm -v'
alias cp='cp -v'

# Misc
alias whatismyip='echo "$(curl -fs https://api.ipify.org)"'
