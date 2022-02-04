#
# Environment Variables
#

export LANG="en_US.UTF-8"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR="vi"
export PAGER="less"

# Go
export GOROOT="$(go env GOROOT)"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export CDPATH="$GOPATH/src"

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Tracking
export DO_NOT_TRACK=1
export ARTILLERY_DISABLE_TELEMETRY=true
