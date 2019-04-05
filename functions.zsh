#
# Functions
#

# Open repository on GitHub etc.
# Source: https://dev.to/shayde/open-the-github-project-page-of-a-repo-from-terminal/
alias gitopen=GitOpen

function GitOpen()
{
    if [ ! -d .git ] ; 
        then echo "ERROR: This isn't a git directory" && return false; 
    fi
    git_url=`git config --get remote.origin.url`
    if [[ $git_url != https://* ]] ;
        then echo "ERROR: Remote origin is invalid" && return false;
    fi
    url=${git_url%.git}
    open $url
}


# Open info website for a given http status code
alias statuscode=HttpStatusCode

function HttpStatusCode()
{
    base_url=https://httpstatuses.com/
    error_code=$1
    url="$base_url$1"

    if [[ "$error_code" != <-> || "${#error_code}" -ne 3 ]]
        then echo "ERROR: The http status code must be a three digit number." && return false;
    fi

    website_status=$(curl -sLI -w "%{http_code}" "$url" -o /dev/null)
    #if [ $? -ne 0 ]
    if [[ $? -ne 0 || "$website_status" -eq "404" ]]
        then echo "ERROR: In all probability, the http status code does not exist." && return false;
    fi
    open $url;
}

# Print markdown files text optimized
alias markout=MarkDownPrettyPrint

function MarkDownPrettyPrint()
{
    md=$1

    if [ $# -eq 0 ]
    then
        md="README.md"
    fi

    pandoc $md | lynx -stdin -dump
}

# Create directory and change right into it
alias md=MakeDirectory

function MakeDirectory()
{
    mkdir -p $1 && cd $1
}

# Copy command line and stdout to the clipboard

function cpcmd {
    echo "$ $@\n$(zsh -ic $@)" | tee >(pbcopy)
 }
